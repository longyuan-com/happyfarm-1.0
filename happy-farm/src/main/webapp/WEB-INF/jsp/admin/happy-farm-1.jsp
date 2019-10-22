<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<link rel="Shortcut Icon" href="favicon.ico" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/lib/Hui-iconfont/1.0.8/iconfont.css" />

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/static/h-ui.admin/css/style.css" />

<title>开心农场后台管理</title>
</head>
<body>
<!--_header 作为公共模版分离出去-->
<jsp:include page="../../common/header.jsp"></jsp:include>
<jsp:include page="../../common/menu.jsp"></jsp:include>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<!--/_menu 作为公共模版分离出去-->

<section class="Hui-article-box">
	<nav class="breadcrumb"><i class="Hui-iconfont"></i> <a href="/" class="maincolor">首页</a> <span class="c-999 en"></span><span class="c-666"></span></nav>
	<div class="Hui-article">
		<article class="cl pd-20">
				<div style="background: url(../shouye.jpg) no-repeat;width: 1500px;height: 620px;background-size: 100%">
						<h1 style="text-align: center;margin-top: -10px;margin-right: 10px">农场管理平台</h1>
				</div>
			</article>
	</div>
</section>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/lib/layer/2.4/layer.js"></script> 
 
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/lib/jquery.validation/1.14.0/messages_zh.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/static/h-ui.admin/js/H-ui.admin.page.js"></script> 

<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript">
<!--/请在这里写此页面业务相关的脚本-->
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>