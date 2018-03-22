package com.bookssh.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.bookssh.bean.Book;
import com.bookssh.bean.Cart;
import com.bookssh.bean.Order_detail;
import com.bookssh.bean.Orders;
import com.bookssh.service.BookService;
import com.bookssh.service.OrdersSerivce;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class OrdersAction {
	@Autowired
	private OrdersSerivce ordersService;
	@Autowired
	private BookService bookService;
	
	/*
	 * 检索关键字
	 */
	@RequestMapping("/key")
	public String key(Model model,String keyword){
		List<Orders> orderslist  = ordersService.key(keyword);
		model.addAttribute("orderslist",orderslist);
		return "allOrder";
	}
	/*
	 * 检索全部ORDERS
	 */
	@RequestMapping("/selectAllOrders")
	public String selectAllOrders(Model model){
		List<Orders> orderslist  = ordersService.selectAllOrders();
		model.addAttribute("orderslist",orderslist);
		return "allOrder";
	}
	/*
	 * 检索目标OREDER
	 * USER_ID
	 */
	@RequestMapping("/selectOrderById")
	public String selectOrderByUser_id(Model model,Integer user_id){
		Orders order = (Orders) ordersService.selectOrdersById(user_id);
		model.addAttribute("order",order);
		return "order_detail";
		}
	/*
	 * 检索目标OREDER
	 * ORDER_ID
	 */
//	@RequestMapping("/selectOrderByOid")
//	public String selectOrderByOid(Model model,Integer order_id){
//		Orders order = ordersService.selectOrderById(order_id);
//		model.addAttribute("order",order);
//		return "order_detail";
//		}
	/*
	 * 检索目标ORDER_DETAIL
	 * ORDER_DETAIL_ID
	 */
	@RequestMapping("/selectOrderDetailById")
	public String selectOrderDetailById(Model model,Integer order_id){
		List<Order_detail> order_detaillist = ordersService.selectOrderDetailById(order_id);
		Orders order = (Orders) ordersService.selectOrderByOid(order_id);
		model.addAttribute("order", order);
		model.addAttribute("order_detaillist",order_detaillist);
		return "order_detail";
		}
	/*
	 * 检索订单详情
	 * BY  ORDER_DETAIL_ID
	 */
	@RequestMapping("/selectOrderDetailByOrder_detail_id")
	@ResponseBody
	public  void selectOrderDetailByOrder_detail_id(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String id = request.getParameter("order_id");
		Integer order_id = new Integer(id);
//		List<Map<Integer,Order_detail>> list =new ArrayList<Map<Integer,Order_detail>>();
		List<Order_detail> order_detaillist = ordersService.selectOrderDetailById(order_id);
		System.out.println(order_detaillist);
		
		List<JSONObject> list = new ArrayList<JSONObject>();
		for(Order_detail o : order_detaillist) {
			JSONObject json = new JSONObject();
			json.element("book_id", o.getBook().getBook_id());
			json.element("book_name", o.getBook().getBook_name());
			json.element("book_price", o.getBook().getBook_price());
			json.element("count", o.getCount());
			json.element("price",  o.getBook().getBook_price()*o.getCount());
			list.add(json);
		}
	      String jsonString = list.toString();
	    
	      response.getWriter().write("{\"json\":"+jsonString+"}");
	    
		}
       
	/*
	 * 检索目标ORDER
	 * USER_ID
	 */
	@RequestMapping("/selectOrdersById")
	public String selectOrdersById(Integer user_id,Model model,Integer id) {
		List<Orders> orderslist = ordersService.selectOrdersById(user_id);
		model.addAttribute("orderslist",orderslist);
		model.addAttribute("id", "1");
		if(id==null)
			return "allOrder";
		else {
			return "shoppingorder";
		}
	}
	/*
	 * 删除订单/取消订单
	 */
	@RequestMapping("/deleteOrder")
	public String deleteOrder(Integer order_id,Model model,Integer id,HttpSession session,HttpServletResponse response) throws IOException {		
		if(id!=null) {
			boolean result = ordersService.deleteOrder(order_id);
			return "redirect:/selectAllOrders.do";
		
		}else {
			Object id2 = session.getAttribute("order_id");
			Integer orderid = (Integer)id2;
			boolean result = ordersService.deleteOrder(orderid);
			response.getWriter().write("{\"result\":"+result+"}");
			return null;
		}
	}
	/*
	 * 删除购物车
	 */
	@RequestMapping("/deleteShoppingCart")
	public void deleteShoppingCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("shoppingcart");
		int result = 1;
		response.getWriter().write("{\"result\":"+result+"}");
	}
	/*
	 * 加入购物车
	 * 一个user一个cart
	 * 检测没有就创建一个再加入
	 * 有就加入
	 */
	@RequestMapping("/addShoppingCart")
	public void addShoppingCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String id = request.getParameter("book_id");
		Integer book_id = new Integer(id);
		
		String nub = request.getParameter("count");
		Integer count = new Integer(nub);
		Book book = bookService.selectBookById(book_id);
		Cart cart = new Cart();
		cart.setBook(book);
		cart.setCount(count);
		List<Cart> cartlist = null;
		HttpSession session = request.getSession();
		Object shoppingcart = session.getAttribute("shoppingcart");
		if (shoppingcart == null) {
			cartlist = new ArrayList<Cart>();
			cartlist.add(cart);
			session.setAttribute("shoppingcart", cartlist);
//			request.getRequestDispatcher("/UiBookServlet").forward(request,response);
		} else {
			List<Cart> shopingcart0 =(ArrayList<Cart>)shoppingcart;
			cartlist = shopingcart0;
			int var = 0;
			for (int i = 0; i < cartlist.size(); i++) {
	             Cart  obj=(Cart)cartlist.get(i);
	             Integer rid = obj.getBook().getBook_id();
	             if(rid.intValue()==book_id.intValue()) {
	            	 Integer num = obj.getCount()+count;
	            	 obj.setCount(num);
	            	 obj.setBook(book);	   
	            	 var++;
     			 }
			}
			if(var == 0) {
 	            cartlist.add(cart);
 	        }  
			session.setAttribute("shoppingcart", cartlist);
//			request.getRequestDispatcher("/UiBookServlet").forward(request,response);
		}
		response.getWriter().write("{\"result\":"+shoppingcart+"}");
	}
	/*
	 * 修改订单状态
	 * 后台
	 */
	@RequestMapping("/updatestate")
	public void updatestate(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String id = request.getParameter("order_id");
		Integer order_id = new Integer(id);
		String state = request.getParameter("order_state");
		Integer order_state = new Integer(state);
		Integer result = ordersService.updateState(order_id, order_state);
		response.getWriter().write("{\"result\":"+result+"}");
	}
	/*
	 * 修改订单状态
	 * 前台用户支付成功修改
	 */
	@RequestMapping("/pay")
	public void pay(HttpSession  session, HttpServletRequest request,HttpServletResponse response) throws IOException {
		String id = request.getParameter("order_id");
		Integer order_id = new Integer(id);
		session.setAttribute("order_id", order_id);
		session.setAttribute("sum", order_id);
		response.getWriter().write("{\"result\":"+order_id+"}");
	}
	/*
	 * 修改订单状态
	 * 前台用户支付成功修改
	 */
	@RequestMapping("/updateState")
	public void updateState(HttpSession  session, HttpServletResponse response) throws IOException {
		Object id2 = session.getAttribute("order_id");
		Integer order_id = (Integer)id2;
		Integer order_state = 1;
		Integer result = ordersService.updateState(order_id, order_state);
		response.getWriter().write("{\"result\":"+result+"}");
	}
	/*
	 * 购物车删除物品
	 */
	@RequestMapping("/deleteCart")
	public String deleteShoppingCart(Integer book_id,HttpServletRequest request, HttpServletResponse response) throws IOException {
		List<Cart> cartlist = null;
		HttpSession session = request.getSession();
		Object shoppingcart = session.getAttribute("shoppingcart");
		List<Cart> shopingcart0 =(ArrayList<Cart>)shoppingcart;
		cartlist = shopingcart0;
		int var = 0;
		for (int i = 0; i < cartlist.size(); i++) {
			Cart  obj=(Cart)cartlist.get(i);
			Integer rid = obj.getBook().getBook_id();
			if(rid.intValue()==book_id.intValue()) {
				cartlist.remove(i);
				var++;
			}
		} 
		session.setAttribute("shoppingcart", cartlist);
		return "shopping-cart";
	}
	/*
	 * 提交订单
	 */
	@RequestMapping("/savaShoppingCart")
	public String savaShoppingCart(HttpServletRequest request, HttpServletResponse response) throws IOException, ParseException {
		String sum = request.getParameter("sum");
		HttpSession session = request.getSession();
		com.bookssh.bean.User user =(com.bookssh.bean.User)session.getAttribute("user");
		List<Cart>  cartList =  (List<Cart>) request.getSession().getAttribute("shoppingcart");
		session.setAttribute("sum", sum);
		int order_state = 0;
		Date dt=new Date();
	    SimpleDateFormat matter1=new SimpleDateFormat("yyyy-MM-dd");
	    String order_tame = matter1.format(dt);
	    Date order_time =null;
		order_time =  matter1.parse(order_tame);
		java.sql.Date date = new java.sql.Date(order_time.getTime());
		Orders orderCart = new Orders();
		orderCart.setUser(user);
		orderCart.setOrder_time(date);
		orderCart.setOrder_state(order_state);
		Orders order = ordersService.insertOrders(orderCart);
		int var = 0;
		if(order!=null) {
			for (Cart cart : cartList) {
				Order_detail Order_detail = new Order_detail();
				Order_detail.setBook(cart.getBook());
				Order_detail.setCount(cart.getCount());
				Order_detail.setOrder(order);
				Order_detail Order_details = ordersService.insertOrder_detail(Order_detail);
				if(Order_details!=null)
					var++;
			}
			if(var==cartList.size()) {
				request.setAttribute("result", "1");
				
			}else {
				request.setAttribute("result", "2");
				
			}
		}else{
			request.setAttribute("result", "2");
			
		}
		Integer order_id = order.getOrder_id();
		session.setAttribute("order_id", order_id);
		return "shopping-cart";
		
	}	
	/*
	 * 修改数量
	 */
	@RequestMapping("/updateCount")
	
	public void updateCount(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String id= request.getParameter("book_id");
		Integer book_id = new Integer(id);
		String num= request.getParameter("count");
		Integer count = new Integer(num);
		List<Cart> cartlist = null;
		System.out.println(book_id);
		System.out.println(count);
		HttpSession session = request.getSession();
		Object shoppingcart = session.getAttribute("shoppingcart");
		List<Cart> shopingcart0 =(ArrayList<Cart>)shoppingcart;
		cartlist = shopingcart0;
		for (int i = 0; i < cartlist.size(); i++) {
			Cart  obj=(Cart)cartlist.get(i);
			Integer rid = obj.getBook().getBook_id();
			if(rid.intValue()==book_id.intValue()) {
				obj.setCount(count);
			
			}
		} 
		session.setAttribute("shoppingcart", cartlist);
		response.getWriter().write("{\"result\":"+cartlist+"}");
		
	}
	
}	
