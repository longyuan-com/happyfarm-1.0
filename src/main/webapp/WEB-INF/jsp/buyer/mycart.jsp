<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<link rel="stylesheet" type="text/css"
	href="//misc.360buyimg.com/jdf/1.0.0/unit/??ui-base/5.0.0/ui-base.css,shortcut/5.0.0/shortcut.css,global-header/5.0.0/global-header.css,myjd/5.0.0/myjd.css,nav/5.0.0/nav.css,shoppingcart/5.0.0/shoppingcart.css,global-footer/5.0.0/global-footer.css,service/5.0.0/service.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/shouye.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/static/h-ui.admin/css/style.css" />
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
	<!-- <h2>购物车详情</h1> -->
		<table class="table table-border table-bordered table-bg table-sort">
					<thead>
						<tr class="text-c">
							<th width="150">土地编号</th>
							<th width="70">土地图片</th>
							<th width="70">土地名称</th>
							<th width="150">单价</th>
							<th width="80">土地面积</th>
							<th width="80">时间</th>
							<th width="120">小计</th>
							<th width="100">操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${cartlist}" var="cartlist">
							<tr class="text-c">
							<td>
							${cartlist.happyFarmLandinfo.landid}
							</td>
							<td>
							<img width="30%" src="${pageContext.request.contextPath}/${cartlist.happyFarmLandinfo.landimg}">
							</td>
							<td>${cartlist.happyFarmLandinfo.landname}</td>
							<td><span id="price">${cartlist.happyFarmLandinfo.landprice}</span>/月</td>
							<td>
								${cartlist.happyFarmLandinfo.landsize}/平方米
							</td>
							<td>
							<!-- 校验输入的是正整数 -->
							<c:set var="num" value="${cartlist.happyFarmLandinfo.landid}" />
							<c:set var="sum" value="1${cartlist.happyFarmLandinfo.landid}" />
							<input type="number" id="${num}"  maxlength="5" 
							value="${cartlist.number}"
							 onchange="carNum(${num},${cartlist.happyFarmLandinfo.landprice},${sum})" 
							 onblur="numbersure(${cartlist.id},${cartlist.happyFarmLandinfo.landid},${sum})" 
							 class="layui-input " 
							  placeholder="请输入购买时间（整数）" autocomplete="off" type="number" required
							  onKeyUp="this.value=this.value.replace(/[^\.\d]/g,'');this.value=this.value.replace('.','');">
							  个月
							</td>
							<td>
							<c:set var="totalPrice" value="${cartlist.number*cartlist.happyFarmLandinfo.landprice}" />
							<span id="${sum}">${totalPrice}</span>元
							</td>
							<td>
							<button onclick="delCartById(${cartlist.happyFarmLandinfo.landid})">去购买</button>
							<button onclick="delCartById(${cartlist.happyFarmLandinfo.landid})">删除</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
			</table>
	<center>
	<h1 style="color:red">
		<c:if test="${empty cartlist}">
		您还没有土地	
		</c:if>
	</h1>
	</center>
</body>
<script src="${pageContext.request.contextPath}/assets/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">

$(function(){
	 var a='<%=session.getAttribute("user")%>'; 
	   if(a=="null"||a==""){
		 alert("您还未登陆，请先登录！");
		window.location.href="${pageContext.request.contextPath}/";
		   return false;
	} 
})
//修改的月数
  function carNum(num,price,sum){
        //输入框的值
     if(parseInt($("#"+num).val())<=0||$("#"+num).val()==''){
    	 $("#"+num).attr('value',1);
     }
    $("#"+sum).text(parseFloat(parseFloat(price)*parseInt($("#"+num).val())))
  
    }

//正式修改
function numbersure(id,landid,sum){
	//alert("aaaa"+landid+parseInt($("#sum").text()))
		var cart={
				"id":id,
				"userid":'<%=session.getAttribute("userid")%>',
				"productid":landid,
				"number":parseInt($("#"+landid).val()),
				"price":parseFloat($("#"+sum).text())
			}
	$.ajax({
		type : "POST",
		url : "${pageContext.request.contextPath}/updateCart",
		 dataType:"json",   
		 contentType:"application/json",
		 data:JSON.stringify(cart),
		success : function(data){
		 if(data==1){
			// alert("修改成功")
		 }else{
			 alert("修改失败")
		 }
		}
		})
}
//删除商品
function delCartById(id){
 var r=confirm("您确定要删除此商品吗？");
		  if (r==true)
		    {
			$.get("${pageContext.request.contextPath}/delCartById?id="+id,
					function(data){
				console.log(data)
						if(data==1){
							alert("删除成功")
						}else{
							alert("删除失败")
						}
						
						}
					)
		    }  

}
</script>
</html>