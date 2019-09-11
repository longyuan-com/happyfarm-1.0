<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%> 
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" class=" jd_retina"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>开心农场-结算页</title>
	<!--结算页面样式-->	
	<link rel="shortcut icon" href="<%=basePath%>assets/img/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" href="<%=basePath%>assets/css/bankList.css">
	<link rel="stylesheet" href="<%=basePath%>assets/css/shouye.css">
	<link rel="stylesheet" href="<%=basePath%>assets/css/base.css" />
	<link rel="stylesheet" href="<%=basePath%>assets/css/index.css" />
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
					var str = "http://localhost:8080/happy-farm/";
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
		window.location.href="/happy-farm/cart/ddInfo";
		
	}
	

</script>

</head>	
<body id="mainframe" >
<!-- ------------------------------------------头部导航栏公共配置-------------------------------------------------- -->
<div class="headerttt" >
	<div class="AllWrap headertop">
		<div class="nhzdy fl">
		<div class="AdvBanner"> 可提供土地租赁定制服务！ </div>
		</div>
			<div class="loginbar" >
				<div class="tell fr">
					<div class="AdvBanner">15851873045</div>
				</div>
				<div class="fr topmenu">
					<div class="fr topmenu">
						<a href="" type="url">官方论坛</a>|
						<a href="" rel="nofollow" type="url">充值有礼</a>|
						<a title="" href="" rel="nofollow" type="url" >留言反馈</a>
					</div>
				</div>
				<div class="fr">
				<c:if test="${empty user }">
					<span id="loginBar_647"> 
					<a href="/happy-farm/">[请登录]</a>&nbsp 
					<a href="/happy-farm/user/regist">[请注册]</a>
					</span>
				</c:if>
				<c:if test="${!empty user }">
				 您好 : ${user.username }
					<a href="/happy-farm/user/tuichu">退出</a>	
				</c:if>		
				</div>
			</div>
		</div>
	</div>
<div class="w w1 header clearfix">
    <div id="logo-2014">
            <a href="/happy-farm/user/shouye"> 
            <span style="margin-top: 10px"><img alt="" src="<%=basePath%>assets/img/favicon.ico"></span><img alt="" src="<%=basePath%>assets/img/logo.jpg">
			</a>
            <a href="" class="link2" style="margin-left: 20px"><b></b>"结算页"</a>
    </div>
    
    <div class="stepflex" id="#sflex03">
        <dl class="first done">
            <dt class="s-num">1</dt>
            <dd class="s-text">1.我的购物车<s></s><b></b></dd>
        </dl>
        <dl class="normal doing">
            <dt class="s-num">2</dt>
            <dd class="s-text">2.填写核对订单信息<s></s><b></b></dd>
        </dl>
        <dl class="normal last">
            <dt class="s-num">3</dt>
            <dd class="s-text">3.成功提交订单<s></s><b></b></dd>
        </dl>
    </div>
</div>
<!-- -----------------------------------------------------收货人信息----------------------------------------------------------------- -->
<div class="xiabanbu">
	<div class="btn met1" onClick="showAddr()" style="display: none;"></div><br>
	<div id="content2">
	<div class="Receinfo"><h3>收货人信息</h3></div>
	<c:if test="${empty receiverInfo }">
	<input type="button" onClick="msgbox(1)" value="+新增收货地址">
	</c:if>
	<c:if test="${!empty receiverInfo}">
	<div class="shouhuo">
	<c:forEach  items="${receiverInfo}" var="ri">
		${ri.receiver_name}
		${ri.receiver_address}
		${ri.receiver_phone}
		${ri.receiver_zip}
		<span class="edit">
		<a href="#" id="${ri.id}" onClick="dizhi(this)">编辑</a>
		<a href="/happy-farm/deleteAddress?ID=${ri.id}">删除</a>
		<a href="/happy-farm/moren?ID=${ri.id}">设为当前收货地址</a>
		</span><br>
	</c:forEach>
	<div class="hr"></div>
	</div>
	<div class="newAdress">
	<input type="button"  onClick="msgbox(1)" value="+新增收货地址">
	</div>
	</c:if>
	
	 <div id='inputbox' class="box">
	  	<div style="text-align: center;font-size: 18px">收货信息</div>
	  	<form method="post" action="${pageContext.request.contextPath}/receiver">
        <table>
		<tr>
		<td>
		收货人<span style="margin-left: 16px"><input type="text" name="receiver_name" required="required" placeholder="" ></span>
		</td>
		</tr>	
		<tr>
		<td style="margin-left: 3px">
		收货地址
		<select id="prov" onClick="showCity(this)">
          <option>请选择省份</option>
    	</select>
    	<!--城市选择-->
    	<select id="city" onClick="showCountry(this)">
         <option>请选择城市</option>
    	</select>
    	<!--县区选择-->
    	<select id="country" onClick="selecCountry(this)">
         <option>请选择县区</option>
    	</select>
		</td>
		</tr>
		<tr>
		<td>
		<label for="landArea">
          	 详细地址<span style="margin-left: 5px"><input type="text" id="landArea" name="receiver_address" required="required" placeholder="请输入具体位置"/></span>
        </label>
		</td>
		</tr>
		<tr>
		<td>
		手机号<span style="margin-left: 16px"><input type="text" name="receiver_phone"  required="required"></span>
		</td>
		</tr>
		<tr>
		<td>
		邮编<span style="margin-left: 29px"><input type="text" name="receiver_zip" required="required"></span>
		</td>
		</tr>
		</table>
			<input type="submit" value="保存新地址" style="background-color: red;border: 0px;color: white;">
		<div class="quxioa"><a class='x' href='' onclick="msgbox(0); return false;">取消</a></div>
		</form>
     </div>
	</div>
	
	 <div id='inputbox2' class="box">
	  	<div style="text-align: center;font-size: 18px">收货信息</div>
	  	<form method="post" action="${pageContext.request.contextPath}/edit">
        <table>
		<tr>
		<td>
		收货人<span style="margin-left: 16px"><input type="text" name="receiver_name" placeholder="收货人" required="required" id="shouhuoren"><input type="text" name="receid" id="receid" style="display: none;"></span>
		</td>
		</tr>	
		<tr>
		<td style="margin-left: 3px">
		收货地址
		<select id="prov" onClick="showCity(this)">
          <option>请选择省份</option>
    	</select>
    	<!--城市选择-->
    	<select id="city" onClick="showCountry(this)">
         <option>请选择城市</option>
    	</select>
    	<!--县区选择-->
    	<select id="country" onClick="selecCountry(this)">
         <option>请选择县区</option>
    	</select>
		</td>
		</tr>
		<tr>
		<td>
		<label for="landArea">
          	 详细地址<span style="margin-left: 5px"><input type="text" class="address" id="landArea" name="receiver_address" placeholder="请输入具体位置" required="required" value=""/></span>
        </label>
		</td>
		</tr>
		<tr>
		<td>
		手机号<span style="margin-left: 16px"><input type="text" id="phone" name="receiver_phone" placeholder="手机号" required="required" value=""></span>
		</td>
		</tr>
		<tr>
		<td>
		邮编<span style="margin-left: 29px"><input type="text" id="zip" name="receiver_zip" placeholder="邮编" required="required" value="" ></span>
		</td>
		</tr>
		</table>
			<input type="submit" value="保存新地址" style="background-color: red;border: 0px;color: white;">
		<div class="quxioa"><a class='x' href='' onclick="msgbox2(0); return false;">取消</a></div>
		</form>
     </div>
 <!-- -----------------------------------------------------支付方式----------------------------------------------------------------- -->
<div class="pay">
 	<div class="pay1"><h3>支付方式</h3></div>
 	<div class="pay2" style="width: 300px;margin-top: 10px;">
 	<div class="payment-item" >支付宝</div>
 	<div class="payment-item2" >微信</div>
 	</div>
</div>    
<div class="hr2"></div>
<!-- -----------------------------------------------------商品详情----------------------------------------------------------------- -->
<div class="songhuoqd">
	<div class="qd"><h3>送货清单</h3></div>
	<div class="shooping-list">
		<div class="list">
			<h4 class="list-peisong">配送方式</h4>
			<div class="list-kuaidi" >快递速运</div>
			<div class="peisong-time">
				<span>配送时间：</span>
				<div id="time">&nbsp预计到达时间8月22日24:00前送达&nbsp</div>
			<div class="hr4"></div>
			</div>
	 	</div>
	
		<div class="list2">
			<!-- <div id="land"></div> -->
			<c:forEach items="${laCartsList}" var="c">
			<div id="land-img" ><img id="img-id" src="http://localhost:8080/happy-farm/${c.landImg}"></div>
			<div id="land-name1">【<span id="land-name">${c.landName}</span>】</div>
			<div id="land-price1">￥<span id="land-price">${c.landPrice}</span></div>
			<div id="land-num1">x<span id="land-num">${c.num}</span></div>
			<c:set var="totalPrice" value="${totalPrice+(c.landPrice*c.num)}"/>	
			</c:forEach>
		</div>
	</div>
</div>
<div class="hr3"></div>
<!-- -----------------------------------------------------总价支付----------------------------------------------------------------- -->
<div class="jiesuan2">
	<div class="jiesuan3">
		<span style="margin-left: 152px">总商品金额：<span id="totalPrice2"><fmt:formatNumber value="${totalPrice}" type="currency"/></span></span><br>
		<span style="margin-left: 152px">服务费：￥0</span><br>
		<span style="margin-left: 152px">运费：￥0</span>
	</div>
</div>
<!-- -----------------------------------------------------订单页页脚----------------------------------------------------------------- -->
<div class="jiesuan4">
<div id="yfze">应付总额：<span id="totalPrice3"><fmt:formatNumber value="${totalPrice}" type="currency"/></span></div>
<c:forEach items="${morenRece}" var="mr">
<div id="shxx"><span>当前收货地址：${mr.receiver_address}</span>&nbsp <span>收货人：${mr.receiver_name}   ${mr.receiver_phone}</span></div>
</c:forEach>
</div>
<div class="tjdd"><button type="submit" id="tjdd-anniu" onclick="TJDD()">提交订单</button></div>
</div>
<script src="<%=basePath%>assets/js/city.js"></script>
<script src="<%=basePath%>assets/js/method.js"></script>
<script src="<%=basePath%>assets/js/jquery.js"></script>
<script src="<%=basePath%>assets/js/jquery-1.8.2.min.js"></script>
</body>
</html>