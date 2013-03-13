<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>IT World 论坛后台管理系统</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js.js"></script>
		<style type="text/css">
<!--
.STYLE1 {
	color: white
}
-->
</style>
	</head>

	<body id="index">
		<h1 class="STYLE1">
			IT World 论坛后台管理系统
		</h1>
		<ul id="globalNav">
			<li>
				<a href="#">帖子管理</a>
				<ul>
					<li>
						<a href="backArticleList.do" target="frameBord">&nbsp;&nbsp;&nbsp;查看帖子</a>
					</li>
				</ul>
			</li>
			<!-- 	<li><a href="login.html">退出</a></li>-->
		</ul>
		<iframe id="frameBord" name="frameBord" frameborder="0" width="100%"
			height="100%" src="backSiteInfo.jsp"></iframe>
	</body>

</html>
