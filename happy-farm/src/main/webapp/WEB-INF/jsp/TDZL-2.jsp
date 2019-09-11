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
<title>土地租赁-2</title>
<link rel="shortcut icon" href="<%=basePath%>assets/img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="<%=basePath%>assets/css/shouye.css">
<link rel="stylesheet" href="<%=basePath%>assets/css/index.css" />
<link rel="stylesheet" href="<%=basePath%>assets/css/base.css" />
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

<script type="text/javascript">
function zulin() {
	 var a='<%=session.getAttribute("user")%>'; 
	   if(a=="null"||a=="")
	   {
	   alert("您还未登陆，请先登录！");
	   debugger;
	   window.location.href="/happy-farm/";
	   return false;
	   }else{
	    alert("加入购物车成功！");
	    return false;
	   }
}
</script>

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
			<!-- <span id="uname_647"> -->
				 您好 : ${user.username }
				<!-- </span>  -->
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
			<div id="cart">
				<a href="/happy-farm/cart/findLandCartList2" id="cart_a"style="">查看购物车</a>
			</div>
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
	<div class="xianbanbu" style="background-color: #f2f2f2; height: 570px">
		<div class="suoxiao">
			<c:forEach var="b" items="${land}">
				<div class="kuai"
					style="float: left; margin-left: 20px; margin-top: 30px; width: 1000px">
					<td><img src="http://localhost:8080/happy-farm/${b.landImg}"></td>
					<div style="margin-top: -268px; margin-left: 410px;">
						<!-- 土地昵称 -->
						<li style="padding: 0 0 10px 0; list-style: none">
						<h2 style="color: #434a54">土地昵称：${b.landName}</h2>
						</li>
						<!-- 土地描述 -->
						<li style="padding: 0 0 8px 0; list-style: none">
						<span style="color: #777; margin-top: 0px;">${b.landMs}</span>
						</li>
						<!-- 土地编号 发布日期 -->	
						<li style="padding: 0 0 8px 0; list-style: none">
						<span style="font-size: 13px; color: #454545">土地编号：${b.landID}</span>
						<span style="font-size: 13px; color: #454545;margin-left: 30px">发布日期：<fmt:formatDate value="${b.landDate}" pattern="yyyy-MM-dd"/></span>								
						</li>
						<!-- 土地租价 -->
						<li style="padding: 0 0 8px 0; list-style: none;font-size: 13px">土地租价：
						<span style="color: green; font-size: 20px;margin-left: -10px;">￥${b.landPrice}</span>
						</li>
						<!-- 土地大小 -->
						<li style="padding: 0 0 8px 0; list-style: none;font-size: 13px;;margin-top: 4px">土地大小：
						<span style="font-size: 13px;margin-left: -10px">${b.landSize}</span>
						</li>
						<!-- 土地位置 -->	
						<li style="padding: 0 0 8px 0; list-style: none;font-size: 13px;margin-top: 4px">土地位置：
						<span style="font-size: 13px">${b.landArea}</span>
						</li>	<br>
							
						<input class="zulin" value="立即租赁" type="button"
							style="background-color: #ff6347; border: 0; height: 40px; width: 100px;color: white;cursor: pointer;" onclick="zulin()"/>&nbsp&nbsp&nbsp&nbsp
						<!-- <input class="gouwuche" value="加入购物车" type="submit" 
						style="background-color: green; border: 0; height: 40px; width: 100px;color: white;cursor: pointer;"/> -->
						<tr><a src="" href="/happy-farm/cart/addLandCar?landID=${b.landID}">
						<td><span style="font-size: 13px;background-color: green;padding: 11px 13px 12px 13px;color: white;">加入购物车</span></td></a></tr>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- --------------------------------------以下是公共页脚----------------------------------------- -->
	<div class="foot" style="margin-top: 0px;width: 100%;text-align: center;background-color: #f2f2f2">
		<div class="mod-footer">
			<div class="box" style="font-size: 14px">2019@南京@开心农场|版权所有</div>
		</div>
	</div>
</body>
</html>