<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="favicon.ico" >
<link rel="Shortcut Icon" href="favicon.ico" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/static/h-ui.admin/css/style.css" />

<style type="text/css">
.text-c img{
max-width:200px;_width:expression(this.width >100?"200px":this.width);
max-height:100px;_height:expression(this.height>100?"100px":this.height);
}
</style>

<title>农场管理</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico" type="image/x-icon" />
</head>
<body>
<!--_header 作为公共模版分离出去-->
<jsp:include page="../../common/header.jsp"></jsp:include>
<!--/_header 作为公共模版分离出去-->

<!--_menu 作为公共模版分离出去-->
<jsp:include page="../../common/menu.jsp"></jsp:include>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<!--/_menu 作为公共模版分离出去-->

<section class="Hui-article-box">
	<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 农场管理 <span class="c-gray en">&gt;</span> 订单管理</nav>
		
	<div class="Hui-article">
		<article class="cl pd-20" style="margin-top: -39px">
			<div class="text-c">
				<form class="Huiform" method="post" action="" target="_self">
					<span class="btn-upload form-group">
					</span>
						<button style="position: absolute;margin-top: 40px" type="button" class="btn btn-success" id="" name="" onClick="window.location.href='/happy-farm/manage-addOrder.jsp'">
						<i class="Hui-iconfont">&#xe600;</i> 添加订单</button>
				</form>
			</div>
			<!--<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a></span> <span class="r">共有数据：<strong>54</strong> 条</span> </div>-->
			<div class="mt-10">
				<table class="table table-border table-bordered table-bg table-sort">
					<thead>
						<tr class="text-c">
							<th width="150">订单编号</th>
							<th width="70">商品图片</th>
							<th width="150">商品名称</th>
							<th width="80">订单金额</th>
							<th width="120">买家信息</th>
							<th width="100">买家联系方式</th>
							<th width="80">卖家信息</th>
							<th width="80">订单时间</th>
							<th width="80">订单状态</th>
							<th width="80">是否派送</th>
							<th width="100">操作</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${orderlist}" var="landList" varStatus="status">
					 <tr class="text-c">
					 <td><a href="#">${landList.orderforBuyer.orderid}</a></td>
							<td><img src="${pageContext.request.contextPath}/${landList.happyFarmLandinfo.landimg}"></td>
							<td>${landList.happyFarmLandinfo.landname}</td>							
							<td>￥${landList.happyFarmLandinfo.landprice}元</td>
							<td><a href="#">${landList.happyFarmUser.username }</a></td>
							<td><a href="#">${landList.orderforBuyer.userphone }</a></td>
							<td><a href="#">${landList.happyFarmSeller.name}</a></td>
							<td><fmt:formatDate value="${landList.orderforBuyer.ordertime}" pattern="yyyy-MM-dd HH:ss:mm"/></td>
							<td>
							<c:if test="${landList.orderforBuyer.orderstatus==0}" >
									未付款
							</c:if>
								<c:if test="${landList.orderforBuyer.orderstatus==1}" >
									已付款
							</c:if>
							</td>
							<td>
							<c:if test="${landList.orderforSeller.deliverystatus==0}" >
									未派送
							</c:if>
								<c:if test="${landList.orderforSeller.deliverystatus==1}" >
									已派送
							</c:if>
							</td>
							<td class="f-14 product-brand-manage">
								<a style="text-decoration:none" onClick="product_brand_edit('','codeing.html','1')" href="#" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a> 
								<a style="text-decoration:none" class="ml-5" onClick="javascript:return del();" href="#" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a>
							</td>
						</tr>
						 </c:forEach>
		
					</tbody>
				</table>
			</div>
		</article>
	</div>
</section>

<!--_footer 作为公共模版分离出去--> 
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/static/h-ui.admin/js/H-ui.admin.page.js"></script> 
<!--/_footer /作为公共模版分离出去--> 

<!--请在下方写此页面业务相关的脚本--> 
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/lib/My97DatePicker/4.8/WdatePicker.js"></script>  
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
$('.table-sort').dataTable({
	"aaSorting": [[ 1, "desc" ]],//默认第几个排序
	"bStateSave": true,//状态保存
	"aoColumnDefs": [
	  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
	  {"orderable":false,"aTargets":[1,2,4,5,7]}// 制定列不参与排序
	]
});

/* 判断是否真的删除进行提醒 */   
function del() {
    var msg = "您真的确定要删除吗？\n\n请确认！";
    if (confirm(msg) == true) {
        return true;
    } else {
        return false;
    }
}       

</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>