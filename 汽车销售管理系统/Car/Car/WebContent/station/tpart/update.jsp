﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
		<!-- Bootstrap core CSS -->
	    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Font Awesome -->
		<link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet">

		<!-- ionicons -->
		<link href="${pageContext.request.contextPath}/css/ionicons.min.css" rel="stylesheet">
		
		<!-- Slider -->
		<link href="${pageContext.request.contextPath}/css/bootstrap-slider.css" rel="stylesheet"/>

		
		<!-- Simplify -->
		<link href="${pageContext.request.contextPath}/css/simplify.min.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js">
	</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/station/upp.js">
	
</script>
<script src="${pageContext.request.contextPath}/js/layer/layer.js">
	
</script>
<STYLE type="text/css">
* {
	font-size: 12px;
}

tr {
	height: 40px;
}
</STYLE>

</head>

<body>
			<br>
			<div class="input-group" style="width: 65%; margin-left: 20px;">
				<span class="input-group-addon" style="background-color:white;">
					所属部门  :
				</span> <select class="form-control" id="parentPart"></select>
			</div><br>
			<div class="input-group" style="width: 65%; margin-left: 20px;">
				<span class="input-group-addon" style="background-color:white;">
					岗位名称  :
				</span> 
				<input class="form-control" id="name" type="text" placeholder="请输入名称"/>
			</div><br>
			<div class="input-group" style="width: 65%; margin-left: 20px;">
				<span class="input-group-addon" style="background-color:white;">
					岗位备注：
				</span> 
				<textarea class="form-control" id="note" rows="5"  placeholder="请输入备注"></textarea>
			</div><br>
			<div class="input-group" style="margin-left: 25%">
				<button type="button" class="btn btn-info" style="background-color:#4b5f6f;" id="add">确认修改</button>
			</div>
	<input type="text" id="path" style="display: none" value="${pageContext.request.contextPath}/">
	<input type="text" id="old" style="display: none">
	<input type="hidden" id="id"  value="<%=request.getParameter("id") %>">
</body>
</html>
