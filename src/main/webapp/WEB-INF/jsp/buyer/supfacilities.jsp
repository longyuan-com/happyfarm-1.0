<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>配套设施</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/shouye.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/base.css" />
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
	<h1>配套设施</h1>
</body>
</html>