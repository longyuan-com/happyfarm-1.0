<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html lang="en" class="no-js">
<head>
<meta charset="utf-8">
<title>开心农场</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- CSS -->
<link rel="shortcut icon" href="<%=basePath%>assets/img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="<%=basePath%>assets/css/reset.css">
<link rel="stylesheet" href="<%=basePath%>assets/css/supersized.css">
<link rel="stylesheet" href="<%=basePath%>assets/css/style.css">

<script type="text/javascript">
function checkImg(object){
	var a =Math.random();
    object.src="./BufferImage?time=" + a;
    
}

</script>
</head>
<body>
	<div class="page-container">
		<h1>开心农场</h1>
		<form action="/happy-farm/user/checkLogin" method="post">
			<input type="text" id="username" name="username" class="username"
				placeholder="请输入用户名"  title="0~9位字母或5~15位数字" required="required">
				
			<input type="password" id="password" name="password" class="password"
				pattern="[A-Za-z0-9]{6,12}" required="required" title="0~9位字母或5~15位数字" placeholder="请输入密码">
				
			<input type="text" name="code" required="required" placeholder="请输入验证码"/>
			
		    <img src="./BufferImage" onclick="checkImg(this)" style="position: relative;top: -33px;left: 215px"><br> 
		    
			<button type="submit" style="width: 100px;margin-right: 69px;background-color: green;border-color: green;">登录</button>
			
			<a href="/happy-farm/user/regist">注册</a>
			
			<div id="login-error" style="color: #F00">${requestScope.message}</div>
		</form>		
	</div>
	<!-- Javascript -->
	<script src="<%=basePath%>assets/js/jquery-1.8.2.min.js"></script>
	<script src="<%=basePath%>assets/js/supersized.3.2.7.min.js"></script>
	<script src="<%=basePath%>assets/js/supersized-init.js"></script>
	<script src="<%=basePath%>assets/js/scripts.js"></script>

</body>

</html>


