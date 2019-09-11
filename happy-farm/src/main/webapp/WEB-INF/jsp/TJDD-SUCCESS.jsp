<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>开心农场-收银台</title>
<link rel="shortcut icon" href="<%=basePath%>assets/img/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" href="<%=basePath%>assets/css/bankList.css">
	<link rel="stylesheet" href="<%=basePath%>assets/css/base.css" />
	<link rel="stylesheet" href="<%=basePath%>assets/css/TJDD-SUCCESS.css" />
</head>
<body>
<!-- ----------------------------------------------------头部---------------------------------------------------------------- -->
<div class="w w1 header clearfix">
    <div id="logo-2014">
            <a href="/happy-farm/user/shouye"> 
            <span style="margin-top: 10px"><img alt="" src="<%=basePath%>assets/img/favicon.ico"></span><img alt="" src="<%=basePath%>assets/img/logo1.jpg">
			</a>
            <a><img alt="" src="<%=basePath%>assets/img/pay.png"></a>
           	<span id="dd"><a >${user.username }</a>|<a>我的订单</a>|<a>支付帮助</a></span>
           	
    </div>
</div>
<!-- ------------------------------------------------------下半部------------------------------------------------------------------ -->
<div class="tijiao">
<h3>订单提交成功，请尽快付款!</h3>
<div class="order-class">
<span style="font-size: 14px">您的订单号:</span>
<c:forEach items="${orderList}" var="order" varStatus="status">
<span style="font-size: 14px"><c:if test="${status.last}">${order.orderID}</c:if></span>
</c:forEach>
</div>
</div>
<!-- --------------------------------------------------------JS配置-------------------------------------------------------------------- -->
<script src="<%=basePath%>assets/js/jquery.js"></script>
<script src="<%=basePath%>assets/js/jquery-1.8.2.min.js"></script>
</body>
</html>