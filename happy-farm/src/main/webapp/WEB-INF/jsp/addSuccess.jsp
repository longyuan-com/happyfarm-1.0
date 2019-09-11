<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html class="root61 jd_retina">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品已成功加入购物车</title>
<link rel="stylesheet" type="text/css"
	href="//misc.360buyimg.com/user/cart/widget/??addtocart-201608/addtocart-201608.css">
<link rel="shortcut icon" href="<%=basePath%>assets/img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="<%=basePath%>assets/css/shouye.css">
<link rel="stylesheet" href="<%=basePath%>assets/css/index.css" />
<link rel="stylesheet" href="<%=basePath%>assets/css/base.css" />
</head>
<body>

<!-- ------------------------------------------头部导航栏公共配置-------------------------------------------------- -->
<div class="headerttt">
	<div class="AllWrap headertop">
		<div class="nhzdy fl">
		<div class="AdvBanner"> 可提供土地租赁定制服务！ </div>
		</div>
			<div class="loginbar">
				<div class="tell fr">
					<div class="AdvBanner">15851873045</div>
				</div>
				<div class="fr topmenu">
					<div class="fr topmenu">
						<a href="" type="url">官方论坛</a>|
						<a href="" rel="nofollow" type="url">充值有礼</a>|
						<a title="" href="" rel="nofollow" type="url" >留言反馈</a>
					</div>
				</div>
				<div class="fr">
				<c:if test="${empty user }">
					<span id="loginBar_647"> 
					<a href="/happy-farm/">[请登录]</a>&nbsp 
					<a href="/happy-farm/user/regist">[请注册]</a>
					</span>
				</c:if>
				<c:if test="${!empty user }">
					 您好 : ${user.username }
					<a href="/happy-farm/user/tuichu">退出</a>	
				</c:if>		
				</div>
			</div>
		</div>
	</div>
	<div class="headerbg">
		<div class="AllWrap headerInfo">
			<div class="logo">
				<a href="/happy-farm/user/checkLogin"> <img alt=""
					style="top: 10px" src="<%=basePath%>assets/img/favicon.ico"><img
					alt="" src="<%=basePath%>assets/img/logo.jpg">
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
	
	<div class="tangmenubg">
		<div class="AllWrap tangmenu">
			<div class="tangnav">
				<ul class="MenuList">
					<li><a href="/happy-farm/user/shouye">首页</a></li>
					<li><a href="/happy-farm/user/kxjs">开心介绍</a></li>
					<li><a href="/happy-farm/user/kxgz">开心规则</a></li>
					<li><a href="/happy-farm/user/fybz">费用标准</a></li>
					<li><a href="/happy-farm/user/ncjs">农场介绍</a></li>
					<li><a href="/happy-farm/user/tdzl">土地租赁</a></li>
					<li><a href="/happy-farm/user/lyjd">旅游景点</a></li>
					<li><a href="/happy-farm/user/ptss">配套设施</a></li>
					<li><a href="/happy-farm/user/cdhd">菜地活动</a></li>
					<li><a href="/happy-farm/user/sccs">蔬菜出售</a></li>
				</ul>
			</div>
			<div class="new"></div>
			<div class="qingqb">
				<ul id="sddm">
					<li class="lii"><a class="qian" href="">全部商品</a></li>
				</ul>
			</div>
		</div>
	</div>
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