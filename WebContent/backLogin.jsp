<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>管理界面</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
		<form action="backIndex.do" id="loginForm" method="post">
			<h3>
				管理员登录
			</h3>
			<label for="userName">
				<span>用户名：</span>
				<input id="userName" name="adminname" type="text" />
			</label>
			<label for="passWord">
				<span>密&nbsp;&nbsp;码：</span>
				<input id="passWord" type="password" name="adminpass" />
			</label>
			<label>
				<input name="" type="submit" class="bt" value="登&nbsp;&nbsp;录" />
			</label>
		</form>
	</body>
</html>
