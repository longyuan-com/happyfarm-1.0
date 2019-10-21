<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>开心农场-注册账号</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/regist.css">
<script src="${pageContext.request.contextPath}/assets/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
/*	if(username==""||username==null){
alert("用户名不能为空");
return false;
}
else{
createXMLHttp();
alert(username)
//debugger;
xmlHttp.open("GET","${pageContext.request.contextPath}/user/checkUsername?username="+username);
xmlHttp.onreadystatechange = checkUsernameCallback;

xmlHttp.send(null);
document.getElementById("msg").innerHTML = "正在验证...";
}*/
	function checkImg(object) {
		object.src = "${pageContext.request.contextPath}/BufferImage?time=" + new Date().getTime();
	}
	var xmlHttp;
	var flag;
	
	
	function createXMLHttp() {
		if(window.XMLHttpRequest){
			xmlHttp = new XMLHttpRequest();
		}else{
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP")
		}
	}
	
	function checkUserid(username) {	
		if(username==""||username==null){
			alert("用户名不能为空");
			}else{

	$.get("${pageContext.request.contextPath}/user/checkUsername?username="+username, 
		function(result){
					if(result==0){
						document.getElementById("msg").innerHTML="<font color='red'>用户名已注册</font>";
					}else{
						document.getElementById("msg").innerHTML="<font color='green'>通过</font>";
					}
			}
		);
			}
		}
		
	function checkUsernameCallback() {
		if(xmlHttp.readyState==4){
			if(xmlHttp.status==200){
				var text =xmlHttp.responseText;
			
				if(text=="true"){
					flag =false;
					document.getElementById("msg").innerHTML="<font color='red'>用户名已注册</font>";
				}else{
					flag = true;
					document.getElementById("msg").innerHTML="<font color='green'>通过</font>";
				}
			}
		}
	}
	function checkForm() {
		return flag;
	}
</script>
</head>
<body>
	<div id="wrapper">
		<div id="head">
			<img alt="" src="${pageContext.request.contextPath}/assets/img/nongchang2.jpg">
		</div>
		<div id="content">
			<form action="${pageContext.request.contextPath}/user/insertRegist" method="post" onsubmit="return checkForm()">
				用户名<input type="text" id="username" name="username" required="required" onblur="checkUserid(this.value)" class="username"
					placeholder="请输入用户名" title="0~9位字母或5~15位数字" 
					style="width: 300px; font-size: 14px; margin: 10px; height: 25px"><span id="msg"></span><br>
				密&nbsp&nbsp&nbsp码<input type="password" id="password"
					name="password" class="password" pattern="[A-Za-z0-9]{6,12}"
					required="required" title="0~9位字母或5~15位数字" placeholder="请输入密码"
					style="width: 300px; position: relative; left: 2px; font-size: 14px; margin: 10px; height: 25px"><br>
				验证码<input type="text" name="code" required="required"
					placeholder="请输入验证码"
					style="width: 300px; position: relative; left: 1px; font-size: 14px; margin: 10px; height: 25px" /><br>
				<img src="${pageContext.request.contextPath}/BufferImage" onclick="checkImg(this)"
					style="position: relative; top: -40px; left: 380px"><br>
				<button type="submit"
					style="background-color: green; border: green; relative; width: 306px; margin-left: 56px; height: 40px; margin-top: -30px">提交</button>
			</form>
			<div id="foot">
				<div class="mod-footer">
					<div class="box">2019@南京@开心农场</div>
				</div>
			</div>
		</div>
	</div>


	<!-- 注册成功3后返回登录页 -->
	<!-- 三秒钟后自动转到登录页面！！！<br> -->
	<!-- <span style="font-size:24px;"><meta http-equiv="refresh" content="3;URL=/ssm_happy_farm/"> </span> -->
</body>
</html>