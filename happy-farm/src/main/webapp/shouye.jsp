<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>首页-开心农场-玩转你的土地</title>
<!-- 引入css代码 -->
<link rel="shortcut icon" href="<%=basePath%>assets/img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="<%=basePath%>assets/css/shouye.css">
<link rel="stylesheet" href="<%=basePath%>assets/css/index.css" />
<link rel="stylesheet" href="<%=basePath%>assets/css/base.css" />
</head>
<body>
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
					您好 : <a href="/happy-farm/">[请登录]</a> &nbsp 
					<a href="/happy-farm/user/regist">[请注册]</a>
					</span>
				</c:if>
				<%-- <c:if test="${!empty user }">
				 您好 : ${user.username }
				<a href="/happy-farm/user/tuichu">退出</a>	
				</c:if>	 --%>	
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
	
	<div id="flash">
			<img src="<%=basePath%>assets/img/1.jpg" style="display: block;"/>
			<img src="<%=basePath%>assets/img/2.jpg" alt=""/>
			<img src="<%=basePath%>assets/img/3.jpg" alt=""/>
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
					src="<%=basePath%>assets/img/test.jpg" style="width: 590px">
				</a>
			</div>
		</div>
	<div class="tangfr">
		<div class="AdvBanner">
			<a href="" target="_blank"> <img alt=""
				src="<%=basePath%>assets/img/test2.jpg" style="width: 590px">
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
	<script src="<%=basePath%>assets/js/index.js"></script>
</body>
</html>