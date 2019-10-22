<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册失败</title>
</head>
<body>
注册失败，用户名已注册或验证码错误!<br>
三秒钟后自动转到登录页面！！！<br>
<span style="font-size:24px;"><meta http-equiv="refresh" content="3;URL=${pageContext.request.contextPath}/user/login/"> </span>
</body>
</html>