<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html class="root61 jd_retina">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品已成功加入购物车</title>
<link rel="stylesheet" type="text/css"
	href="//misc.360buyimg.com/user/cart/widget/??addtocart-201608/addtocart-201608.css">
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
				<a href="/happy-farm/user/checkLogin"> <img alt=""
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
	<div class="main">
		<div class="success-wrap">
			<div class="w" id="result">
				<div class="m succeed-box">
					<div class="mc success-cont">
						<div class="success-lcol">
							<div class="success-top">
								<b class="succ-icon"></b>
								<h3 class="ftx-02">商品已成功加入购物车！</h3>
							</div>
							<div class="p-item">
								<div class="p-img">
									<a href="" target="_blank"></a>
								</div>
								<div class="p-info">
									<div class="p-name">
										<a href="" target="_blank"
											clstag="pageclick|keycount|201601152|2" title=""></a>
									</div>
									<div class="p-extra">
										<span class="txt" title=""></span><span class="txt" title=""></span><span
											class="txt"></span>
									</div>
								</div>
								<div class="clr"></div>
							</div>
						</div>
						<div class="success-btns success-btns-new">
							<div class="success-ad">
								<a class="btn-tobback" href="/happy-farm/cart/findLandCartList2" target="_blank" clstag="pageclick|keycount|201601152|3" style="padding-left: 13px;width: 135px;background: green;color: white;">购物车详情</a>
								<!-- <a class="btn-addtocart" href="" id="GotoShoppingCart" clstag="pageclick|keycount|201601152|4" style="padding-left: 5px">去购物车结算</a> -->								
							</div>
						</div>
						<div style="margin-top: 80px;margin-left: 1110px">
						<a href="/happy-farm/landList">您还可以继续购物</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>