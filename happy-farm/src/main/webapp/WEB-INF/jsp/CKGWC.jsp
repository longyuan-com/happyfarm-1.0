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
<title>我的购物车</title>

<style type="text/css">
.suoxiao img{
max-width:50px;_width:expression(this.width >100?"200px":this.width);
max-height:50px;_height:expression(this.height>100?"100px":this.height);
}
</style>
<script type="text/javascript">
function zulin() {
	 var a='<%=session.getAttribute("user")%>'; 
	   if(a=="null"||a=="")
	   {
	   alert("您还未登陆，请先登录！");
	   debugger;
	   //window.navigate("http://localhost:8080/happy-farm/");
	   //self.location='http://localhost:8080/happy-farm/'; 
	   window.location.href="/happy-farm/";
	   return false;
	   }else{
	    alert("加入购物车成功！");
	 	window.location.href="/happy-farm/cart/JianSuan";
	 	window.location.href="/happy-farm/selectReceiver";
	 	window.location.href="/happy-farm/cart/JianSuanList";
	    //return false;
	   }
}

function number_jian(id){
	var num = -1;
	var id = id;
	console.log($(".kongge").val());
	//var a=Math.random();
	location.href="/happy-farm/cart/findLandCartList3?landID="+id+'&number='+num;
	//window.location.href ="/happy-farm/cart/findLandCartList2?timestamp=" + new Date().getTime();
	//alert("减后-当前数量-"+num);
	//$(".kongge").click();
	//添加事件执行浏览器默认操作
	$(".kongge").trigger("click").focus();
	//confirm();
}
function number_add(id){
	var num = 1;
	var id=id;
	window.location.href="/happy-farm/cart/findLandCartList3?landID="+id+'&number='+num;
	//$(".kongge").click();
	//添加事件执行浏览器默认操作
	$(".kongge").trigger("click").focus();
	//alert("加后-当前数量+"+num);
}
function deleteShapping(id) {
	var num = 0;
	var id=id;
	window.location.href="/happy-farm/cart/findLandCartList3?landID="+id+'&number='+num;
	//添加事件执行浏览器默认操作
	//$(".kongge").trigger("click").focus();
	confirm("您确定要删除此商品吗？");
}
</script>
<link rel="stylesheet" type="text/css"
	href="//misc.360buyimg.com/jdf/1.0.0/unit/??ui-base/5.0.0/ui-base.css,shortcut/5.0.0/shortcut.css,global-header/5.0.0/global-header.css,myjd/5.0.0/myjd.css,nav/5.0.0/nav.css,shoppingcart/5.0.0/shoppingcart.css,global-footer/5.0.0/global-footer.css,service/5.0.0/service.css">
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
	<!-- <h2>购物车详情</h1> -->
	<div class="cartHead">
		<div class="cartHead1">土地</div>
		<div class="cartHead5">土地名称</div>
		<div class="cartHead2">单价</div>
		<div class="cartHead3">数量</div>
		<div class="cartHead4">小计</div>
		<div class="cartHead6">操作</div>
	</div>
	<div class="suoxiao">
		<c:forEach items="${list}" var="b">
			<%-- <td>${b.id}</td> --%>
			<div class="cartList">
				<div class="cartList0">
					<img src="http://localhost:8080/happy-farm/${b.landImg}">
				</div>
				<div class="cartList1">${b.landName}</div>
				<div class="cartList2">${b.landPrice}/月</div>
				<div class="cartList3">
					<a href="" onclick="number_jian(${b.id})" id="decrement">-</a>
						<input type="text" class="kongge" onfocus=this.blur() value="${b.num}">		
					<a href="" onclick="number_add(${b.id})" id="increment">+</a>
				</div>
				<div class="cartList4">
					<c:out value="${b.landPrice*b.num}"></c:out>
				</div>
				<div class="cartList5"><a href="" onclick="deleteShapping(${b.id})">删除</a></div>
				<c:set var="totalPrice" value="${totalPrice+(b.landPrice*b.num)}"/>	
			</div>
		</c:forEach>
	</div>
	<div style="margin-top: 10px; margin-left: 900px">
		<c:if test="${empty list}">
		您还没有土地	
		</c:if>
		<c:if test="${!empty list}">
			<a href="/happy-farm/landList">继续购物</a><br>	
			<span id="totalPrice0">总价：</span><span id="totalPrice"><fmt:formatNumber value="${totalPrice}" type="currency"/></span>	
			<input class="jiesuan" type="button"  value="去结算"onclick="zulin()"/>
		</c:if>
		
	</div>
<script src="<%=basePath%>assets/js/jquery.js"></script>
<script src="<%=basePath%>assets/js/jquery-1.8.2.min.js"></script>	
</body>
</html>