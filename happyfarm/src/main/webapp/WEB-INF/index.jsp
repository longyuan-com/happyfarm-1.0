<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>首页-开心农场-玩转你的土地</title>
<!-- 引入css代码 -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/shouye.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/base.css" />
</head>
<body>
<jsp:include page="./common/userheader.jsp"></jsp:include>
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
<!-- ----- -->
<jsp:include page="./common/partment.jsp"></jsp:include>
	
	<div id="flash">
			<img src="${pageContext.request.contextPath}/assets/img/1.jpg" style="display: block;"/>
			<img src="${pageContext.request.contextPath}/assets/img/2.jpg" alt=""/>
			<img src="${pageContext.request.contextPath}/assets/img/3.jpg" alt=""/>
			<ul>
				<li style="background-color: #A10000;"></li>
				<li></li>
				<li></li>
			</ul>
	</div>
	<div class="AllWrap clearfix">
	<div class="clear h10" style="margin-top: 20px"></div>
		<div class="tangfl">
			<div class="AdvBanner">
				<a href="" target="_blank"> <img alt=""
					src="${pageContext.request.contextPath}/assets/img/test.jpg" style="width: 590px">
				</a>
			</div>
		</div>
	<div class="tangfr">
		<div class="AdvBanner">
			<a href="" target="_blank"> <img alt=""
				src="${pageContext.request.contextPath}/assets/img/test2.jpg" style="width: 590px">
			</a>
		</div>
	</div>
	</div>
	<div class="geli" style="margin-top: 20px"></div>
	<div class="foot" style="margin-top: 284px;margin-left: 680px">
		<div class="mod-footer">
			<div class="box" style="font-size: 14px">2019@南京@开心农场|版权所有</div>
		</div>
	</div>

	<!-- 引入js代码 -->
	<script src="${pageContext.request.contextPath}/assets/js/index.js"></script>
</body>
</html>