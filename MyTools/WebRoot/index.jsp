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

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<script src="./jQuery/jquery-3.1.1.min.js"></script>
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
<script type="text/javascript">
	var xmlHttp;
	function createXmlHttp() {
		if (window.XMLHttpRequest) {
			//针对 Firefox, Chrome, Opera, Safari,IE7,IE8
			xmlHttp = new XMLHttpRequest();
		} else if (window.ActiveXObject) {
			//针对IE6,IE5
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	function verify() {
		var username = document.getElementById("username").value;

		//第一步：创建XMLHttpRequest对象
		createXmlHttp();

		//第二步：注册回调函数
		xmlHttp.onreadystatechange = callBack;

		//第三步：设置连接信息
		xmlHttp.open("POST", "servlet/AjaxServlet?username=" + username, true);

		//第四步：向服务器发送数据
		xmlHttp.send(null);
	}

	function callBack() {
		//第五步：接收服务器返回数据
		//判断对象的是否交互完成
		if (xmlHttp.readyState == 4) {
			//判断Http的交互是否成功
			if (xmlHttp.status == 200) {
				//获取服务器返回数据
				//获取服务器输出的纯文本格式
				var responseText = xmlHttp.responseText;
				//将数据显示在页面
				var usernameMsg = document.getElementById("usernameMsg");
				usernameMsg.innerHTML = responseText;
			}
		}
	}
	$(document).ready(function() {
		$("#username").focus(function() {
			$(this).css("background-color", "#cccccc");
		});
		$("#username").blur(function() {
			$(this).css("background-color", "#ffffff");
			verify();
		});
	});
</script>
</head>

<body>
	This is my JSP page.
	<br>
	<input type="text" id="text">
	<br>
	<p>如果你点击“隐藏” 按钮，我将会消失。</p>
	<button class="hide">隐藏</button>
	<button class="show">显示</button>
	<form method="post" action="servlet/AjaxServlet">
		用户名：<input type="text" name="username" id="username" /><span
			id="usernameMsg"></span><br /> <input type="button" value="测试"
			onclick="verify();" />
	</form>
</body>
</html>
