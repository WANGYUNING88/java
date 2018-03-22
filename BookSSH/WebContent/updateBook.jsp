<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script src="jquery.js" type="text/javascript"></script>
<script type="text/javascript">
		$(document).ready(function(){
			//检测管理员是否登录
			var id = "<%=session.getAttribute("admin")%>";
			if(id == 'null'){
				alert('还未登录');	
				window.location.href="adminlogin.jsp";
			}
		});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>down.admin5.com</title>
<style type="text/css">
body{font-size:12px;}
ul,li,h2{margin:0;padding:0;}
ul{list-style:none;}
#top{width:100%;height:50px;margin:0 auto;background-color:#CCCC00}
#top h2{width:15%;height:50px;background-color:#99CC00;float:left;font-size:14px;text-align:center;line-height:50px;}
#topTags{width:750px;height:50px;margin:0 auto;background-color:#CCCC00;float:left}
#topTags ul li{float:left;width:100px;height:25px;margin-right:5px;display:block;text-align:center;cursor:pointer;padding-top:12.5px;padding-bottom:12.5px;}
#main{width:100%;height:800px;margin:0 auto;background-color:#F5F7E6;}
#leftMenu{width:15%;height:100%;background-color:#009900;float:left}
#leftMenu ul{margin:10px;}
#leftMenu ul li{width:100%;height:50px;display:block;background:#99CC00;cursor:pointer;line-height:50px;text-align:center;margin-bottom:5px;}
#leftMenu ul li a{color:#000000;text-decoration:none;}
#content{width:84%;height:500px;float:left}
.content{width:100%;height:490px;display:none;padding:5px;overflow-y:auto;line-height:30px;}
#footer{width:100%;height:30px;margin:0 auto;background-color:#ccc;line-height:30px;text-align:center;}
.content1 {width:740px;height:490px;display:block;padding:5px;overflow-y:auto;line-height:30px;}
</style>
<script type="text/javascript">
window.onload=function(){
function $(id){return document.getElementById(id)}
var menu=$("topTags").getElementsByTagName("ul")[0];//顶部菜单容器
var tags=menu.getElementsByTagName("li");//顶部菜单
var ck=$("leftMenu").getElementsByTagName("ul")[0].getElementsByTagName("li");//左侧菜单
var j;
//点击左侧菜单增加新标签
for(i=0;i<ck.length;i++){
ck[i].onclick=function(){
$("welcome").style.display="none"//欢迎内容隐藏
//循环取得当前索引
for(j=0;j<8;j++){
if(this==ck[j]){
if($("p"+j)==null){
openNew(j,this.innerHTML);//设置标签显示文字
 }
clearStyle();
$("p"+j).style.backgroundColor="yellow";
clearContent();
$("c"+j).style.display="block";
   }
 }
return false;
  }
 }
//增加或删除标签
function openNew(id,name){
var tagMenu=document.createElement("li");
tagMenu.id="p"+id;
tagMenu.innerHTML=name+"   "+"<img src='http://www.tjdadi.com.cn/off.gif' style='vertical-align:middle'/>";
//标签点击事件
tagMenu.onclick=function(evt){
clearStyle();
tagMenu.style.backgroundColor="yellow";
clearContent();
$("c"+id).style.display="block";
}
//标签内关闭图片点击事件
tagMenu.getElementsByTagName("img")[0].onclick=function(evt){
evt=(evt)?evt:((window.event)?window.event:null);
if(evt.stopPropagation){evt.stopPropagation()} //取消opera和Safari冒泡行为;
this.parentNode.parentNode.removeChild(tagMenu);//删除当前标签
var color=tagMenu.style.backgroundColor;
//设置如果关闭一个标签时，让最后一个标签得到焦点
if(color=="#ffff00"||color=="yellow"){//区别浏览器对颜色解释
if(tags.length-1>=0){
clearStyle();
tags[tags.length-1].style.backgroundColor="yellow";
clearContent();
var cc=tags[tags.length-1].id.split("p");
$("c"+cc[1]).style.display="block";
 }
else{
clearContent();
$("welcome").style.display="block"
   }
  }
}
menu.appendChild(tagMenu);
}
//清除标签样式
function clearStyle(){
for(i=0;i<tags.length;i++){
menu.getElementsByTagName("li")[i].style.backgroundColor="#FFCC00";
  }
}
//清除内容
function clearContent(){
for(i=0;i<7;i++){
$("c"+i).style.display="none";
 }
}
}
</script>
</head>
<body>
<div id="top">
<h2><a href="Backstage.jsp">返回管理菜单</a></h2>
<div id="topTags">
<ul>
</ul>
</div>
</div>
<div id="main"> 
<div id="leftMenu">
</div>
<div id="content">
<div id="welcome" class="content" align="center" style="display:block;">
 		<table border="1"  >
	   <form action="upload.do?id=1" method="post" enctype="multipart/form-data">
                    <tr>
                        <td><label for="file">图片如需修改,请重新上传：</label></td>
                        <td><input type="file" id="file" name="book_img" /></td>
                        <td><input type="hidden" name="book_id" value="${book.book_id}"/></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="上传"/></td>
                    </tr>
       </form>
      </table>
       <div width="100"  height="100">
               <img alt="" src="${book.book_img}" width="70"  height="70"/>
                 <font color="red">
			${errorMsg}
			</font>
      </div>    
   <form action="updateBook.do" method="post" enctype="multipart/form-data">
	<table align="center" border="1" >
		<h1 align="center" >修改图书</h1>
		<tr><td>book_id</td><td><input type="text" name="book_id" value="${book.book_id}" readonly/></td></tr>
		<tr><td>book_name</td><td><input type="text" name="book_name" value="${book.book_name}"/></td></tr>
		<tr><td>book_writer</td><td><input type="text" name="book_writer" value="${book.book_writer}"/></td></tr>
		<tr><td>book_publisher</td><td><input type="text" name="book_publisher" value="${book.book_publisher}"/></td></tr>
		<tr><td>book_publish_data</td><td><input type="text" name="book_publish_data" value="${book.book_publish_data}"/></td></tr>
		<tr><td>type_id</td><td><input type="text" name="bookType.type_id" value="${book.bookType.getType_id()}"/></td></tr>
		<tr><td>book_price</td><td><input type="text" name="book_price" value="${book.book_price}"/></td></tr>
		<tr><td>book_img</td><td><input type="text" name="book_img" value="${book.book_img}"/></td></tr>
		<tr><td colspan="2" align="center"><input type="submit" value="修改"/></td></tr>

	</table>
	</form>
    <p> </p>
    </div>
</div>
</div>
</div>
</body>
</html>