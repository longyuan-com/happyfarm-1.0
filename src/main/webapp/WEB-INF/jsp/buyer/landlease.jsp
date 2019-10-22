<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>土地租赁</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/shouye.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/base.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/baiduditu.css" />
<style type="text/css">
.suoxiao{
 border:0px solid #000; width:1199px; height:100%;overflow:hidden;margin-left: 178px;display: flex;flex-flow: row wrap;
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

<body>
<div id='inputbox' class="box">
     <div id="map" class="map"></div>
     <div id="txt" class="txt">
      	<div style="width: 38px;margin-left: 182px;"><a class='x' href=''; onclick="msgbox(0); return false;"style="color: white;"><img src="${pageContext.request.contextPath}/assets/img/guanbi.png"/></a></div>
        <input type="text" id="keyword"  placeholder="请输入关键字">
        <input type="text" id="province" placeholder="显示具体省" readonly >
        <input type="text" id="city" placeholder="显示具体市" readonly>
        <input type="text" id="address" placeholder="显示具体地址" readonly >
	</div>
</div>
<div class="suoxiao">
<c:forEach var="b" items="${landList}">
	<div class="kuai" style="width:280px;padding-right:10px">
		<!-- <div id="nb" style="float: left;" > -->
			<a src="" href="${pageContext.request.contextPath}/landinfo?landID=${b.landid}"><img src="${pageContext.request.contextPath}/${b.landimg}" ></a><br>
			<span style="font-size: 13px">土地编号：</span><span style="font-size: 13px">${b.landid}</span>&nbsp&nbsp&nbsp
			<a src="" href="${pageContext.request.contextPath}/landinfo?landID=${b.landid}">
			<span style="font-size: 13px">土地昵称：</span><span style="font-size: 13px">${b.landname}</span></a><br>
			<span style="font-size: 13px">土地租价：</span><span style="color: green;font-size: 15px">￥${b.landprice}元/月</span>
			<p style="overflow: hidden;text-overflow: ellipsis;white-space: nowrap;max-width: 300px;font-size: 13px">土地描述：${b.landms}</p>
			<span style="font-size: 13px">土地位置：</span><span style="font-size: 13px"><a href="#" id="${b.landid}" onClick="dizhi(this)">${b.landarea}</a></span><br>
			<span style="font-size: 13px">土地大小：</span><span style="font-size: 13px">${b.landsize}</span>
			<span style="font-size: 13px">发布日期：</span><span style="font-size: 13px"><fmt:formatDate value="${b.landdate}" pattern="yyyy-MM-dd"/></span>
		<!-- </div> -->
	</div>
</c:forEach>
</div>

<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=j6DtLLmEOQY2VSwKMuENsDV6SnnzcRp5"></script>
<script type="text/javascript" src="http://developer.baidu.com/map/jsdemo/demo/convertor.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/baiduditu.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery-1.8.2.min.js"></script>
</body>
</html>