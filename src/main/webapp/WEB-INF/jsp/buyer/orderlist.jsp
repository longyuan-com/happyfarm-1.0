<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>全部订单</title>

<style type="text/css">
.suoxiao img{
max-width:50px;_width:expression(this.width >100?"200px":this.width);
max-height:50px;_height:expression(this.height>100?"100px":this.height);
}
</style>

<link rel="stylesheet" type="text/css"
	href="//misc.360buyimg.com/jdf/1.0.0/unit/??ui-base/5.0.0/ui-base.css,shortcut/5.0.0/shortcut.css,global-header/5.0.0/global-header.css,myjd/5.0.0/myjd.css,nav/5.0.0/nav.css,shoppingcart/5.0.0/shoppingcart.css,global-footer/5.0.0/global-footer.css,service/5.0.0/service.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/shouye.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/base.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/dingdan.css"/>
<script type="text/javascript">
function deleteShapping(id) {
	var num = 0;
	var id=id;
	window.location.href="${pageContext.request.contextPath}/cart/findLandCartList3?landID="+id+'&number='+num;
	//添加事件执行浏览器默认操作
	//$(".kongge").trigger("click").focus();
	confirm("您确定要删除此商品吗？");
}
</script>
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
			</div>
		</div>
	</div>
<jsp:include page="../../common/partment.jsp"></jsp:include>
<!-- ------------------------------------------------------------------------------------------------------------- -->
	<div id="main">
	<div id="titlenav">
		<div id="title">
			<h2>我的订单</h2>
		</div>
	</div>
	<div id="main2">
		<div id="Menu">
			<div >
				<ul id="MenuList">
					<li><a href="#">全部订单</a></li>
					<li><a href="${pageContext.request.contextPath}/user/dfk">待付款</a></li>
					<li><a href="#">待收货</a></li>
					<li><a href="#">待评价</a></li>
				</ul>
			</div>
		</div>
	<div id="xiang">
			<table width="1000"  align="center" cellpadding="8" cellspacing="0" class="cart_table">  
			<tbody>
				  <tr id="r1">  
				  	  <th width="80"></th> 
				      <th width="100">商品名称</th>  
				      <th width="80" align="center">单价</th>  
				      <th width="80" align="center">数量</th>    
				      <th width="100" align="center">金额小计</th>  
				      <th width="50" align="center">操作</th>  
			      </tr>  
			       
			       <c:forEach items="${list}" var="b">
			    <tr id="r2">    
			    	<td>
			    		<a href="">
			    			<img src="${pageContext.request.contextPath}/${b.landImg}" width="60px" height="60px" style="padding-left: 30px">
			    		</a>
			    	</td>
			       <td>
			       		<a target="_blank" href="">${b.landname}</a>
			       	</td>   
			       <!--价格-->  
			       <td align="center">￥${b.landprice}</td>
			       <!--数量-->  
			       <td align="center">${b.num}</td>  
			        <!--金额小记-->                                                                       
			        <td align="center"><font color="#FF0000" size="2">￥${b.landprice*b.num}</font></td>  
			        <td align="center"><a href="" onclick="deleteShapping(${b.id})">删除</a></td>
			    </tr>  
				<c:set var="totalPrice" value="${totalPrice+(b.landprice*b.num)}"/>
				<c:set var="cartList" value="${cartList+(b.num)}"/>
			            </c:forEach> 
			       
	   </tbody>
	   
			</table>
			<div style="margin-top:20px;margin-left:500px">
			 <c:if test="${empty list}">
		<h3>您还没有土地</h3>
		</c:if>  
		</div>  
			</div>
		</div>	
	<div style="margin-top: 20px; margin-left: 800px">
		<c:if test="${!empty list}">
			<span id="totalPrice0" style="font-size:20px">商品件数：</span><span id="cartList" style="font-size:20px"><fmt:formatNumber value="${cartList }" type="number"/></span>&nbsp;&nbsp;&nbsp;&nbsp;
			<span id="totalPrice0" style="font-size:20px">商品总金额（不含运费）：</span><span id="totalPrice" style="font-size:20px"><fmt:formatNumber value="${totalPrice}" type="currency"/></span>	
		</c:if>
		
	</div>
	<br>
</div>
<script src="${pageContext.request.contextPath}/assets/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery-1.8.2.min.js"></script>	
</body>
</html>