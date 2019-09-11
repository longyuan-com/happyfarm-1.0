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
<title>土地租赁</title>
<link rel="shortcut icon" href="<%=basePath%>assets/img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="<%=basePath%>assets/css/shouye.css">
<link rel="stylesheet" href="<%=basePath%>assets/css/index.css" />
<link rel="stylesheet" href="<%=basePath%>assets/css/base.css" />
<link rel="stylesheet" href="<%=basePath%>assets/css/baiduditu.css" />
<style type="text/css">
.suoxiao{
 border:0px solid #000; width:1199px; height:100%;overflow:hidden;margin-left: 178px;
}
.suoxiao img{
max-width:340px;_width:expression(this.width >100?"200px":this.width);
max-height:210px;_height:expression(this.height>100?"100px":this.height);
}
</style>
<script type="text/javascript">
function msgbox(n){
    document.getElementById('inputbox').style.display=n?'block':'none'; /* 点击按钮打开/关闭 对话框 */
}
function dizhi(obj) {
	var id=obj.id;
	msgbox(1);
	dituweizhi(id);
}
function dituweizhi(id) {
	$.ajax({
		type: "get",
		url:"${pageContext.request.contextPath }/dituweizhi",
		data:{"id":id},
		success:function(date){
			console.log(date);
			$("#keyword").val(date.landArea);
		}
	});
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
					<a href="/happy-farm/">[请登录]</a> &nbsp 
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

<body>
<div id='inputbox' class="box">
     <div id="map" class="map"></div>
     <div id="txt" class="txt">
      	<div style="width: 38px;margin-left: 182px;"><a class='x' href=''; onclick="msgbox(0); return false;"style="color: white;"><img src="<%=basePath%>assets/img/guanbi.png"/></a></div>
        <input type="text" id="keyword"  placeholder="请输入关键字">
        <input type="text" id="province" placeholder="显示具体省" readonly >
        <input type="text" id="city" placeholder="显示具体市" readonly>
        <input type="text" id="address" placeholder="显示具体地址" readonly >
	</div>
</div>
<div class="suoxiao">
<c:forEach var="b" items="${landList}">
	<div class="kuai" style="width: 1200px">
	<div id="nb" style="float: left;padding-right: 10px 10px 10px 10px" >
	<tr><td><a src="" href="/happy-farm/tdhq?landID=${b.landID}"><img src="http://localhost:8080/happy-farm/${b.landImg}" ></a></td></tr><br>
	<tr><td><span style="font-size: 13px">土地编号：</span><span style="font-size: 13px">${b.landID}</span></td></tr>&nbsp&nbsp&nbsp
	<tr><td><a src="" href="/happy-farm/tdhq?landID=${b.landID}">
	<tr><td><span style="font-size: 13px">土地昵称：</span><span style="font-size: 13px">${b.landName}</span></td></tr></a></td></tr><br>
	<tr><td><span style="font-size: 13px">土地租价：</span><span style="color: green;font-size: 15px">￥${b.landPrice}元/月</span></td></tr>
	<tr><td><p style="overflow: hidden;text-overflow: ellipsis;white-space: nowrap;max-width: 300px;font-size: 13px">土地描述：${b.landMs}</p></td></tr>
	<tr><td><span style="font-size: 13px">土地位置：</span><span style="font-size: 13px"><a href="#" id="${b.landID}" onClick="dizhi(this)">${b.landArea}</a></span></td></tr><br>
	<tr><td><span style="font-size: 13px">土地大小：</span><span style="font-size: 13px">${b.landSize}</span></td></tr>
	<tr><td><span style="font-size: 13px">发布日期：</span><span style="font-size: 13px"><fmt:formatDate value="${b.landDate}" pattern="yyyy-MM-dd"/></span></td></tr>
	</div>
	</div>
	
</c:forEach>
</div>

<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=j6DtLLmEOQY2VSwKMuENsDV6SnnzcRp5"></script>
<script type="text/javascript" src="http://developer.baidu.com/map/jsdemo/demo/convertor.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/baiduditu.js"></script>
<script src="<%=basePath%>assets/js/jquery.js"></script>
<script src="<%=basePath%>assets/js/jquery-1.8.2.min.js"></script>
</body>
</html>