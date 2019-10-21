<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>土地修改 </title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/regist.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/addLand.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/area.css">
</head>
<body>

<div id="wrapper">
		<div id="head">
			<img alt="" src="${pageContext.request.contextPath}/assets/img/nongchang2.jpg">
		</div>
		<div class="btn met1" onClick="showAddr()" style="display: none;"></div><br>
	<div id="content">
	<form method="post" action="${pageContext.request.contextPath}/addLandpage"  enctype="multipart/form-data">	    
	<table>
		<tr>
		<td>土地编号：</td>
		<td><input type="text" name="landID" required="required" value="${land2.landid }" placeholder="请输入土地编号" /></td>
		</tr>
		<tr>
		<td>土地昵称：</td>
		<td><input type="text" name="landName" required="required" value="${land2.landname }" placeholder="请输入土地昵称"/></td>
		</tr>
		<tr>
		<td>租赁价格：</td>
		<td><input type="text" name="landPrice" required="required" value="${land2.landprice }" placeholder="请输入租赁价格"/></td>
		</tr>
		<tr>
		<td>上传图片：</td>
		<td><input type="file" name="file" required="required"  placeholder="请上传土地图片" /></td>
		<!--这个name=“file”并不是数据库的字段名哦-->
		</tr>
		<tr>
		<td>土地描述：</td>
		<td><input type="text" name="landMs" required="required" value="${land2.landms }" placeholder="请输入土地描述" /></td>
		</tr>
		<tr>
		<td>土地位置：</td>
		<td style="margin-left: 3px">
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
		<td>具体位置：</td>
		<td>
		<label for="landArea">
           	<input type="text" id="landArea" name="landArea" value="${land2.landarea }" placeholder="请输入具体位置"/>
        </label>
		</td>
		</tr>
		<tr>
		<td>发布日期：</td>
		<td>
		 <input type="date" name="landRq" id="landRq"   placeholder="请在这里输入放养日期"><span style="font-size: 12px"><fmt:formatDate value="${land2.landdate}" pattern="yyyy-MM-dd"/></span>
		</td>
		</tr>
		<tr>
		<td>土地大小：</td>
		<td>
		<input type="text" name="landSize" value="${land2.landsize }" placeholder="请输入土地大小" />
		</td>
		</tr>
	</table>
		<button type="submit" style="position: relative;left: 210px;">提交</button>
	</form>
</div>
</div>
<script src="${pageContext.request.contextPath}/assets/js/city.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/method.js"></script>
</body>
</html>