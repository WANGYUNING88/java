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
<div id="welcome" class="content" style="display:block;">
  <div align="center">
    <p> </p>
  	<table border="1" align="center" border="1" >
		<h1 align="center" >用户管理</h1>
		<tr>
		<th>user_id</th>
		<th>user_name</th>
		<th>user_password</th>
		<th>user_email</th>
		<th>user_telephone</th>
		<th>user_address</th>
		<th>user_posttime</th>
		<th>个人历史订单</th>
	</tr>
	<c:forEach items="${userlist}" var="user">
	<tr>
		<td>${user.user_id}</td>
		<td>${user.user_name}</td>
		<td>${user.user_password}</td>
		<td>${user.user_email}</td>
		<td>${user.user_telephone}</td>
		<td>${user.user_address}</td>
		<td>${user.user_posttime}</td>
		<td><a href="selectOrdersById.do?user_id=${user.user_id}">查看订单</a></td>
	</tr>
	</c:forEach>
	<!--<tr><td colspan="7">
			<a href="SearchServlet?page=1">首页</a>&nbsp;&nbsp;&nbsp;
			<c:if test="${page.dpage!=1}">
			<a href="SearchServlet?page=${page.dpage-1 }">上一页</a>&nbsp;&nbsp;&nbsp;
			</c:if>
			<c:if test="${page.dpage!=page.totalpage}">
			<a href="SearchServlet?page=${page.dpage+1}">下一页</a>&nbsp;&nbsp;&nbsp;
			
			</c:if>
			<a href="SearchServlet?page=${page.totalpage}">尾页</a>
		</td>
		</tr>-->
	</table>
	</form>
    <p> </p>
    </div>
</div>

</div>
</div>
</body>
</html>