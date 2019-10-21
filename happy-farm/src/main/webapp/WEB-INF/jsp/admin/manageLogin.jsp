<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="utf-8">
<title>开心农场</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- CSS -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/supersized.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">

<script type="text/javascript">
function checkImg(object){
    object.src="../BufferImage?time=" + new Date().getTime();
    
}

</script>
</head>
<body>
	<div class="page-container">
		<h1>开心农场管理员登录</h1>
		<form action="${pageContext.request.contextPath}/manager/checkLogin" method="post">
			<input type="text" id="name" name="name" class="name"
				placeholder="请输入用户名"  title="0~9位字母或5~15位数字" required="required">
				
			<input type="password" id="password" name="password" class="password"
				pattern="[A-Za-z0-9]{6,12}" required="required" title="0~9位字母或5~15位数字" placeholder="请输入密码">
				
			<input type="text" name="code" required="required" placeholder="请输入验证码"/>
			
		    <img src="../BufferImage" onclick="checkImg(this)" style="position: relative;top: -33px;left: 215px"><br> 
		    
			<button type="submit" style="width: 100px;margin-right: 69px;background-color: green;border-color: green;">登录</button>
					
			<div id="login-error" style="color: #F00">${requestScope.message}</div>
		</form>		
	</div>
	<!-- Javascript -->
<jsp:include page="../../common/commonJs.jsp"></jsp:include>

</body>

</html>


