<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>土地租赁-2</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/shouye.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/base.css" />
<style type="text/css">
.suoxiao{
 border:0px solid #000; width:1100px; height:500px;overflow:hidden;margin-left: 257px;
 background-color: white;
}
.suoxiao img{
max-width:400px;_width:expression(this.width >100?"200px":this.width);
max-height:300px;_height:expression(this.height>100?"100px":this.height);
}
</style>



</head>
<body>
<!-- ------------------------------------------头部导航栏公共配置-------------------------------------------------- -->
<jsp:include page="../../common/userheader.jsp"></jsp:include>
	<div class="headerbg">
		<div class="AllWrap headerInfo">
			<div class="logo">
				<a href="${pageContext.request.contextPath}/user/checkLogin"> <img alt=""
					style="top: 10px" src="${pageContext.request.contextPath}/assets/img/favicon.ico"><img
					alt="" src="${pageContext.request.contextPath}/assets/img/logo.jpg">
				</a>
			</div>
			<div id="box">
			<form action="">
				<input type="text" id="search1" name="search" placeholder="请输入关键字">
				<input type="submit" id="search" value="搜索">
			</form>
			<div id="cart">
				<a href="${pageContext.request.contextPath}/findLcartlist?userid=<%=session.getAttribute("userid")%>" id="cart_a"style="">查看购物车</a>
			</div>
			</div>
		</div>
	</div>
	<jsp:include page="../../common/partment.jsp"></jsp:include>
<!-- ------------------------------------------------------------------------------------------------------------- -->
	<div class="xianbanbu" style="background-color: #f2f2f2; height: 570px">
		<div class="suoxiao">
				<div class="kuai"
					style="float: left; margin-left: 20px; margin-top: 30px; width: 1000px">
					<td><img src="${pageContext.request.contextPath}/${land.landimg}"></td>
					<div style="margin-top: -268px; margin-left: 410px;">
						<!-- 土地昵称 -->
						<li style="padding: 0 0 10px 0; list-style: none">
						<h2 style="color: #434a54">土地昵称：<span id="landname">${land.landname}</span></h2>
						</li>
						<!-- 土地描述 -->
						<li style="padding: 0 0 8px 0; list-style: none">
						<span style="color: #777; margin-top: 0px;">${land.landms}</span>
						</li>
						<!-- 土地编号 发布日期 -->	
						<li style="padding: 0 0 8px 0; list-style: none">
						<span style="font-size: 13px; color: #454545">土地编号：${land.landid}</span>
						<span style="font-size: 13px; color: #454545;margin-left: 30px">发布日期：<fmt:formatDate value="${b.landdate}" pattern="yyyy-MM-dd"/></span>								
						</li>
						<!-- 土地租价 -->
						<li style="padding: 0 0 8px 0; list-style: none;font-size: 13px">土地租价：
						<span style="color: green; font-size: 20px;margin-left: -10px;">￥${land.landprice}</span>
						</li>
						<!-- 土地大小 -->
						<li style="padding: 0 0 8px 0; list-style: none;font-size: 13px;;margin-top: 4px">土地大小：
						<span style="font-size: 13px;margin-left: -10px">${land.landsize}</span>
						</li>
						<!-- 土地位置 -->	
						<li style="padding: 0 0 8px 0; list-style: none;font-size: 13px;margin-top: 4px">土地位置：
						<span style="font-size: 13px">${land.landarea}</span>
						</li>	<br>
							
						<input class="zulin" value="立即租赁" type="button"
							style="background-color: #ff6347; border: 0; height: 40px; width: 100px;color: white;cursor: pointer;" 
							onclick="payment(${land.landid},${land.landprice})"/>&nbsp&nbsp&nbsp&nbsp
						<tr>
						<td>
						<a href="#" onclick="addcart(${land.landid},${land.landsize},${land.landprice})" style="font-size: 13px;background-color: green;padding: 11px 13px 12px 13px;color: white">
						加入购物车
						</a>
						</td>
						</tr>
					</div>
				</div>
		</div>
	</div>
	<!-- --------------------------------------以下是公共页脚----------------------------------------- -->
	<div class="foot" style="margin-top: 0px;width: 100%;text-align: center;background-color: #f2f2f2">
		<div class="mod-footer">
			<div class="box" style="font-size: 14px">2019@南京@开心农场|版权所有</div>
		</div>
	</div>
</body>
<script src="${pageContext.request.contextPath}/assets/js/jquery-1.8.2.min.js"></script>
<script>
function payment(productId,price) {
	 var a='<%=session.getAttribute("user")%>'; 
	   if(a=="null"||a=="")
	   {
	   alert("您还未登陆，请先登录！");
	   debugger;
	   window.location.href="${pageContext.request.contextPath}/";
	   return false;
	   }else{

	   	 window.location.href= "${pageContext.request.contextPath}/user/orderPage?productId="+productId

   
	   }
}

function addcart(productid,number,price){
		 var a='<%=session.getAttribute("user")%>'
	if(a=="null"||a==""){
			 alert("您还未登陆，请先登录！")
				window.location.href="${pageContext.request.contextPath}/";
			   return false;
		}else{
		var cart={
				"userid":'<%=session.getAttribute("userid")%>',
				"productid":productid,
				"number":1,
				"price":price
				}
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/useraddCart",
				 dataType:"json",   
				 contentType:"application/json",
				 data:JSON.stringify(cart),
				 success:function(data){
				 if(data==1){
					 alert("添加成功")
				 }else if(data=2){
					 alert("该商品已在购物车中")
				 }else{
					 alert("添加失败")
				 }
				}
			})
		}
}
</script>
</html>