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
			var state='<%=request.getAttribute("state")%>';
			if(state=='1'){
				alert('没有记录');	
				window.location.href="selectAllOrders.do";
			}
			 $('#sub4').click(function(){//点击按钮提交
		         //要提交的表单id为form3
		
				$.ajax({
					url:"${pageContext.request.contextPath}/updatestate.do",
					data:$("#form3").serialize(),
					type:"post",
					dataType: "json",
					success:function(data){//ajax返回的数据
						var result = data.result;
						if(result=='1'){					
							alert('修改成功');
						}else{
							alert('修改失败');
						}
					}
				});     
			});
			
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
		
	<table align="center" border="1">
<c:set var="sum" value="0"></c:set>
		<h1 align="center" >订单详情:</h1>
			<tr>
				<th>order_detail_id</th>
				<th>book_id</th>
				<th>book_name</th>
				<th>book_price</th>
				<th>count</th>
				<th>user_id</th>
				<th>user_name</th>
				<th>order_time</th>
				<th>PRICE</th>
			</tr>
			<c:forEach items="${order_detaillist}" var="o">
				<tr>
					<td>${o.order_detail_id}</td>
					<td>${o.book.book_id}</td>
					<td>${o.book.book_name}</td>
					<td>${o.book.book_price}</td>
					<td>${o.count}</td>
					<td>${o.order.user.user_id}</td>
					<td>${o.order.user.user_name}</td>
					<td>${o.order.order_time}</td>
					<td><c:set var="a" value="${o.book.book_price}"/>
					<c:set var="b" value="${o.count}"/>
					<c:set var="c" value="${a*b}"/>
					${c}</td>
					
				</tr>
				<c:set var="sum" value="${sum+c}"/>
			</c:forEach>	
			
	</table>

<div align="center">
<strong>订单状态</strong>
<form id="form3">
	<input type="hidden" name="order_id" value="${order.order_id}"/>
	<c:if test="${order.order_state=='0' }">	
			<input type="radio" value="0" name="order_state" checked="checked" style="color:red;"/>未完成
		    <input type="radio" value="1" name="order_state" style="color:green;"/>已完成
			</c:if>
			<c:if test="${order.order_state=='1'}">	
			<input type="radio" value="0" name="order_state" style="color:red;" />未完成
		    <input type="radio" value="1" name="order_state" checked="checked" style="color:green;"/>已完成
			</c:if>
			<input type="button" id="sub4" value="修改"/>
</form>
</div>		
			<br/>
	<div align="center">
		<script language="JavaScript">
for (var i=1; i<= 100; i++)
{
document.write ("&nbsp;")
}
</script>总计:&nbsp; &nbsp;<span  style="font-size:50px;color:#F00;"> ${sum} </span> &nbsp;&nbsp;元  
</br></br>
<div><a href="selectAllOrders.do">返回订单列表</a></div>
	</div>
    </div>
</div>

</div>
</body>
</html>