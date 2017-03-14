<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'Bootstrap_Modal.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="./css/bootstrap.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="./jQuery/jquery-3.1.1.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="./js/bootstrap.js"></script>


<script>
	$(document).ready(function() {
		$(".hide").click(function() {
			$("p").hide();
		});
		$(".show").click(function() {
			$("p").show();
		});
	});
</script>
</head>

<body>
	<input type="text" id="text">
	<br>
	<p>如果你点击“隐藏” 按钮，我将会消失。</p>
	<button class="hide">隐藏</button>
	<button class="show">显示</button>
</body>
</html>
