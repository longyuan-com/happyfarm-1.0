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
<title>后台添加订单</title>
<link rel="shortcut icon" href="<%=basePath%>assets/img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="<%=basePath%>assets/css/regist.css">
<link rel="stylesheet" href="<%=basePath%>assets/css/addLand.css">
<link rel="stylesheet" href="<%=basePath%>assets/css/area.css">
<link rel="stylesheet" href="<%=basePath%>assets/css/base.css" />
</head>
<body>

<div id="wrapper">
		<div id="head">
			<img alt="" src="<%=basePath%>assets/img/nongchang2.jpg">
		</div>
		<div class="btn met1" onClick="showAddr()" style="display: none;"></div><br>
	<div id="content">
	<form method="post" action="${pageContext.request.contextPath}/addOrder"  enctype="multipart/form-data">	    
	<table>
		<tr>
			<td>订单编号：</td>
			<td><input type="text" name="orderID" required="required" placeholder="请输入订单编号" /></td>
		</tr>
		<tr>
			<td>上传图片：</td>
			<td><input type="file" name="file" required="required" placeholder="请上传商品图片" /></td>
			<!--这个name=“file”并不是数据库的字段名哦-->
		</tr>
		<tr>
			<td>商品名称：</td>
			<td><input type="text" name="orderName" required="required" placeholder="请输入商品名称"/></td>
		</tr>
		<tr>
			<td>订单金额：</td>
			<td><input type="text" name="orderPrice" required="required" placeholder="请输入订单金额"/></td>
		</tr>
		<tr>
			<td>买家信息：</td>
			<td><input type="text" name="buyerName" required="required" placeholder="请输入买家信息"/></td>
		</tr>
		<tr>
			<td>卖家信息：</td>
			<td><input type="text" name="sellerName" required="required" placeholder="请输入卖家信息"/></td>
		</tr>
		
		<tr>
		<td>订单状态：</td>
			<td>
				<!--  -->
				<select id="prov" onClick="showState(this)">
		          <option>请选择状态</option>
		    	</select>
			</td>
		</tr>
		
		<tr>
			<td>订单时间：</td>
			<td>
			 <input type="date" name="orderDate" id="landRq" placeholder="请在这里输入订单时间">
			</td>
		</tr>
		
	</table>
		<button type="submit" style="position: relative;left: 210px;">提交</button>
	</form>
</div>
</div>	
<script src="<%=basePath%>assets/js/state.js"></script>
<script src="<%=basePath%>assets/js/method2.js"></script>
</body>
</html>