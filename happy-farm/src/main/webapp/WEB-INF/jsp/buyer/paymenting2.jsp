<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" class=" jd_retina"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>开心农场-结算页</title>
	<!--结算页面样式-->	
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bankList.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/shouye.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/base.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index.css" />
<style type="text/css">
.box{
    width:424px; margin-top:10%; margin:auto; padding:34px;
    height:260px; border:3px #aaa solid;
    display:none;            /* 默认对话框隐藏 */
}
.box.show{display:block;} 
.box .x{ font-size:12px; text-align:center; display:block;color: white;}
.box input{width:168px; font-size:12px; margin-top:18px;height: 20px}

#img-id{
max-width:80px;_width:expression(this.width >100?"200px":this.width);
max-height:100px;_height:expression(this.height>100?"100px":this.height);
}
</style>
<script type="text/javascript">
	function msgbox(n){
         document.getElementById('inputbox').style.display=n?'block':'none';     /* 点击按钮打开/关闭 对话框 */
    }
	function msgbox2(n){
		 document.getElementById('inputbox2').style.display=n?'block':'none'; 
	}
	function dizhi(obj) {
		var id=obj.id;
		console.log(id);
		msgbox2(1);
		edit(id);
	}
	function edit(id) {
	$.ajax({
			type: "get",
			url:"${pageContext.request.contextPath }/editReceiver",
			data: {"id":id},
			success: function(date) {
				console.log(date);
				$("#receid").val(date.id);
				$("#shouhuoren").val(date.receiver_name);
				$(".address").val(date.receiver_address);
				$("#phone").val(date.receiver_phone);
				$("#zip").val(date.receiver_zip);
				//alert(date.receiver_name);
			}
		});
	}
	
	function shapping() {
		/* $.ajax({
			type : "get",
			url : "${pageContext.request.contextPath }/cart/JianSuanList",
			success : function(date) {
				//alert(date);
				var ImageContent = "";
				$.each(date, function(index, value) {
					var str = "http://localhost:8080${pageContext.request.contextPath}/";
					var str2;
					var item;
					if (date.length > 0) {
						for (var i = 0; i < date.length; i++) {
							item = date[i].landImg;
							str2 = str + item;
						}
						ImageContent += '<img id="img-id" src="1">' + ""
								+ '</img><span>' + "【" + value.landName + "】"
								+ '</span><span>' + value.landPrice
								+ '</span><span>' + value.num + '</span><br>';

						$('#land').html(ImageContent);
						$("#img-id").prop("src", str2);
					}
				});
			}
		}); */
		
	}
	/* $("#img-id").attr("src",str2);
	$("#land-name").html(item.landName);
	$("#land-price").html(item.landPrice);
	$("#land-num").html(item.num); */
	function TJDD(){
		window.location.href="${pageContext.request.contextPath}/cart/ddInfo";
		
	}
	

</script>

</head>	
<body id="mainframe" >
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
<!-- -----------------------------------------------------收货人信息----------------------------------------------------------------- -->
订单号：${orderid }
<script src="${pageContext.request.contextPath}/assets/js/city.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/method.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery-1.8.2.min.js"></script>
</body>
</html>