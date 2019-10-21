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

<jsp:include page="../../common/menu.jsp"></jsp:include>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<!--/_menu 作为公共模版分离出去-->

<section class="Hui-article-box">
	<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 农场管理 <span class="c-gray en">&gt;</span> 土地租赁</nav>
		
	<div class="Hui-article">
		<article class="cl pd-20" style="margin-top: -39px">
			<div class="text-c">
				<form class="Huiform" method="post" action="" target="_self">
					<span class="btn-upload form-group"></span>
					<button style="position: absolute;margin-top: 40px" type="button" class="btn btn-success" id="" name="" onClick="window.location.href='${pageContext.request.contextPath}/addLandpage'"><i class="Hui-iconfont">&#xe600;</i> 添加土地</button>
					
				</form>
			</div>
			<div class="mt-10">
				<table class="table table-border table-bordered table-bg table-sort">
					<thead>
						<tr class="text-c">
							<!--<th width="25"><input type="checkbox" name="" value=""></th>-->
							<th width="70">土地编号</th>
							<th width="80">土地昵称</th>
							<th width="200">土地租价</th>
							<th width="120">土地描述</th>
							<th width="200">土地图片</th>
							<th width="80">土地位置</th>
							<th width="80">土地大小</th>
							<th width="80">发布时间</th>
							<th width="80">审核状态</th>
							<th width="100">操作</th>
						</tr>
					</thead>
					<tbody>
					  <c:forEach items="${landList}" var="landList" varStatus="status">
						<tr class="text-c">
						<!--	<td><input name="" type="checkbox" value=""></td>-->
							<td>${landList.landid}</td>
							<td>${landList.landname}</td>							
							<td>${landList.landprice}元/月</td>
							<td>${landList.landms}</td>
							<td><img src="${pageContext.request.contextPath}/${landList.landimg}" ></td>
							<td>${landList.landarea}</td>
							<td>${landList.landsize}</td>
							<td><fmt:formatDate value="${landList.landdate}" pattern="yyyy-MM-dd HH:mm:ss"/></td> 
							
							<td class="td-status">
							<c:if test="${landList.status==0}">
							<!--  <select id="status">
							 <option value="0" selected="selected">未审核</option>
							          <option value="1">审核成功</option>
							          <option value="2">审核未通过</option>
							   </select>
							   <p></p>-->
								<span class="label label-warn radius td-status">未审核</span>
							</c:if>
							
							<c:if test="${landList.status==1}">
								<span class="label label-success radius">已发布</span>
							</c:if>
								<c:if test="${landList.status==2}">
									<span class="label label-danger radius">未通过</span>
							</c:if>
								
							</td>
							<td class="f-14 product-brand-manage">
							<c:if test="${landList.status==0}">
							<a style="text-decoration:none" onClick="article_shenhe(this,${landList.landid})" href="javascript:;" title="审核">审核</a>
							</c:if>
							<a style="text-decoration:none" onClick="product_brand_edit('','codeing.html','1')" href="${pageContext.request.contextPath}/updateLandpage?landid=${landList.landid}" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
							<a style="text-decoration:none" class="ml-5" onClick="javascript:return del();" href="${pageContext.request.contextPath}/deleteLand?landid=${landList.landid}" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</article>
	</div>
</section>
</body>

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
	"aaSorting": [[ 0, "desc" ]],//默认第几个排序
	"bStateSave": true,//状态保存
	"aoColumnDefs": [
	  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
	  {"orderable":false,"aTargets":[1,3,4,5]}// 制定列不参与排序
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

function article_shenhe(obj,id){
	
	layer.confirm('审核土地？', {
		btn: ['通过','不通过','取消'], 
		shade: false,
		closeBtn: 0	
	},
	
	function(index){
		//$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_start(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
		layer.msg('已发布', {icon:6,time:1000});
		$(obj).remove();
		save(id,1)
	},
	
	function(){
		//$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_shenqing(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-danger radius">未通过</span>');
    	layer.msg('未通过', {icon:5,time:1000});
    	$(obj).remove();
    	save(id,2)
	});	
}

function save(id,val){
	var obj={
		landid:parseInt(id), 
		status:val
	}
	$.ajax({
		type: "POST",
		url:"${pageContext.request.contextPath}/updatestatus",  
         data:obj,
         success: function(data){
           
                    
         }
	})
	
}

</script>
<!--/请在上方写此页面业务相关的脚本-->
</html>