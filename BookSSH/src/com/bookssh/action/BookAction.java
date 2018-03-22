package com.bookssh.action;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.bookssh.bean.Book;
import com.bookssh.bean.BookType;
import com.bookssh.service.BookService;


@Controller
public class BookAction {
	@Autowired
	private BookService bookService;
	/*
	 * 查询全部图书类型
	 */
	@RequestMapping("/selectAllType")
	public String selectAllType(Model model){
		List<BookType> list = bookService.selectAllType();
		model.addAttribute("typelist",list);
		return "allType";
	}
	/*
	 *添加图书类型 
	 */
	@RequestMapping("/addType")
	public String addType(Model model,BookType bookType) {
		BookType bookTypeed = bookService.insertType(bookType);
		if(bookTypeed!=null) {
			model.addAttribute("errorMsg", "图书类型添加成功");
			model.addAttribute("booktype", bookTypeed);
			return "addType";
		}else {
			model.addAttribute("errorMsg", "图书类型添加失败");
			return "addType";
		}
	}
	/*
	 * 修改图书类型
	 */
	@RequestMapping("/updateType")
	public String updateType(Model model,BookType bookType) {
		boolean r = bookService.updateType(bookType);
		if(r) {
			BookType bookTyped = bookService.selectTypeById(bookType.getType_id());
			model.addAttribute("errorMsg", "图书类型修改成功");
			model.addAttribute("booktype",bookTyped);
			return "updateType";
		}else {
			model.addAttribute("errorMsg", "图书类型修改失败");
			return "updateType";
		}
	}
	/*
	 * 删除图书类型
	 */
	@RequestMapping("/deleteType")
	public String deleteType(Model model,Integer type_id) {
		boolean r = bookService.deleteType(type_id);
		if(r) {
			model.addAttribute("errorMsg", "图书类型删除成功");
			return "Backstage";
		}else {
			model.addAttribute("errorMsg", "图书类型删除失败");
			return "Backstage";
		}
	}
	/*
	 * 查询图书类型
	 * 根据type_id
	 */
	@RequestMapping("/selectTypeById")
	public String selectTypeById(Integer type_id,Model model,Integer id,HttpServletResponse response) throws IOException{
		BookType bookType =(BookType) bookService.selectTypeById(type_id);
		if(id!=null) {
			model.addAttribute("booktype", bookType);
			return "updateType";
		}else {
			if(bookType!=null) {
				Integer result = 0;
				response.getWriter().write("{\"result\":"+result+"}");
			}else {
				Integer result = 1;
				response.getWriter().write("{\"result\":"+result+"}");
			}
			return null;
		}
	}
	/*
	 * 查询图书类型
	 * 根据type_name
	 */
	@RequestMapping("/selectTypeByName")
	public void selectTypeByName(String type_name,HttpServletResponse response){
		BookType bookType =(BookType) bookService.selectTypeByName(type_name);
		boolean result;
		if(bookType == null)
			result = true;
		else
			result = false;
		try {
			response.getWriter().write("{\"result\":"+result+"}");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/*
	 * 查询图书	
	 * 
	 * 根据检索的关键字
	 */
	@RequestMapping("/keyword")
	public String keyword(String keyword,Model model){
		System.out.println(keyword);
		List<Book> list = bookService.keyword(keyword);
		model.addAttribute("booklist", list);
		return "allBook";
		
	}
	
	/*
	 * 查询全部图书	
	 */
	@RequestMapping("/selectAllBook")
	public String selectAllBook(HttpSession session,Model model,Integer id,Integer result){
		List<Book> list = bookService.selectAllBook();
		if(id==1) {
			if(result==1)
				model.addAttribute("errorMsg","图书删除成功");
			else
				model.addAttribute("errorMsg","图书删除失败");
			model.addAttribute("booklist",list);
			return "allBook";
		}else if(id==3) {
			model.addAttribute("booklist",list);
			return "allBook";
		}else {
			List<BookType> list1 = bookService.selectAllType();//图书类型
			List<Book> list2 = bookService.newBooks();//最新图书
			List<Book> list3 = bookService.hotBook();
			session.removeAttribute("type_name");
			session.setAttribute("typelist",list1);
			session.setAttribute("newbooklist",list2);
			session.setAttribute("hotbooklist",list3);
			model.addAttribute("booklist",list);
			return "index";
		}
	}
	/*
	 * 添加图书
	 */
	@RequestMapping("/addBook")
	public String reigster(Model model, Book book) throws IOException {
		Integer result = bookService.insertBook(book);
		if(result!=null) {
			book.setBook_id(result);
			model.addAttribute("errorMsg", "图书添加成功");
			model.addAttribute("book",book);
			return "addBookSuccess";
		}else {
			model.addAttribute("errorMsg", "图书添加失败");
			return "addBookSuccess";
		}
		
	}
	/*
	 * 查询图书类型
	 * 根据book_id
	 * 后台
	 */
	@RequestMapping("/selectBook")
	public String selectBookById(Integer book_id,Model model){
		Book book = (Book) bookService.selectBookById(book_id);
		model.addAttribute("book", book);
		return "updateBook";
	}
	/*
	 * 查询图书类型
	 * 根据book_id
	 * 前台
	 */
	@RequestMapping("/selectBookById")
	public String selectById(Integer book_id,Model model){
		Book book = (Book) bookService.selectBookById(book_id);
		model.addAttribute("book", book);
		return "shop-detail";
	}
	/*
	 * 查询图书类型
	 * 根据bookType
	 * 前台
	 */
	@RequestMapping("/selectBookByType")
	public String selectBookByType(HttpSession session,Integer type_id,String type_name,Model model){
		List<Book> list = bookService.selectBookByType(type_id);
		model.addAttribute("booklist", list);
		session.setAttribute("type_name", type_name);
		return "index";
	}
	/*
	 * 修改图书
	 */
	@RequestMapping("/updateBook")
	public String updateBook(Model model,Book book){
		boolean result = bookService.updateBook(book);
		if(result) {
			Book booked = (Book) bookService.selectBookById(book.getBook_id());
			model.addAttribute("book", booked);
			model.addAttribute("errorMsg", "图书修改成功");
			return "addBookSuccess";
		}else {
			Book booked = (Book) bookService.selectBookById(book.getBook_id());
			model.addAttribute("book", booked);
			model.addAttribute("errorMsg", "图书修改失败");
			return "updateBook";
		}
		
	}
	/*
	 * 删除图书
	 */
	@RequestMapping("/deleteBook")
	public String deleteBook(Model model,Integer book_id)throws IOException{
		boolean result = bookService.deleteBook(book_id);
		if(result) {			
			return "redirect:/selectAllBook.do?id=1&result=1";
		}else {
			return "redirect:/selectAllBook.do?id=1&result=0";
		}
	}
	/*
	 * 上传图片
	 */
	@RequestMapping("/upload")
	@ResponseBody
	public void reigster(Model model,Integer id,Integer book_id,HttpServletRequest request,HttpServletResponse response, @RequestParam MultipartFile book_img) throws IOException, ServletException {
		ServletContext context = request.getServletContext();
		if(book_img!=null) {
			String realPath = context.getRealPath("/upload");
			String filename = book_img.getOriginalFilename();
			File file = new File(realPath+"/"+filename);
			
				String bookImg = "upload"+"/"+filename;	
			byte[] bytes = book_img.getBytes();
			FileOutputStream fos = new FileOutputStream(file);
			fos.write(bytes);
			fos.flush();
			fos.close();
			if(id!=1) {
				request.setAttribute("book_img",bookImg);
				request.getRequestDispatcher("addBook.jsp").forward(request,response);
			}else {
				System.out.println(book_id);
				Book book = bookService.selectBookById(book_id);
				book.setBook_img(bookImg);
				request.setAttribute("book",book);
				request.getRequestDispatcher("updateBook.jsp").forward(request,response);
			}

		}	
		
	}
}
