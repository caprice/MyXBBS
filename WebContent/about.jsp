<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>ITWorld-</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb18030">
		<meta name="Desciption"
			content="This web design site is a very good site with wonderful web design resources">
		<meta name="keywords"
			content="This,web,design,site,is,a,very,good,site,with,wonderful,web,design,resources">
		<link href="style/style.css" rel="stylesheet" type="text/css">
		<style type="text/css">
<!--
.STYLE3 {
	font-size: 14px
}

.STYLE5 {
	font-size: 15px;
	font-weight: bold;
}

.STYLE7 {
	font-size: 14px;
	color: #0033FF;
}
-->
</style>
	</head>

	<body>
		<center>
			<div class="wrapper">
				<div class="header">
					<div style="float: left; margin-left: 110px; margin-top: 20px;">
						<img src="images/logo.jpg" style="float: left;">
						<div
							style="float: left; text-align: left; font-family: tahoma; font-size: 24pt; color: #636363; margin-left: 5px; margin-top: 5px;">
							<b><font size="10">IT</font> World</b>
							<br>
							<span
								style="float: left; text-align: left; font-family: tahoma; font-size: 8pt; color: #b1b1b1;"><b>&nbsp;做最棒的软件开发交流社区</b>
							</span>
						</div>

					</div>

					<div
						style="float: right; margin-right: 30px; margin-top: 50px; text-align: left; font-family: tahoma; font-size: 17pt; color: #636363;">
						the best media
						<b>solutions</b>
						<br>
						<span
							style="float: left; text-align: left; font-family: tahoma; font-size: 11pt; color: #b1b1b1;">
							<br /> <br /> <logic:present name="user">
								<b>&nbsp;&nbsp;&nbsp;&nbsp;当前用户：<c:out
										value="${user.username}" /> </b>
							</logic:present> <logic:notPresent name="user">
								<b>&nbsp;&nbsp;&nbsp;&nbsp;您尚未登录！</b>
							</logic:notPresent> </span>
					</div>

				</div>
				<div class="menu">
					<div class="menu-text"
						style="padding-left: 140px; padding-right: 50px;">
						<a href="#" class="nav">首页</a>
					</div>
					<div class="menu-text">
						&nbsp;&nbsp;
						<a href="#" class="nav">登录</a>
					</div>
					<div class="menu-text">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="#" class="nav">注册</a>
					</div>
					<div class="menu-text" style="padding-right: 30px;">
						<a href="#" class="nav">平板形式</a>
					</div>
					<div class="menu-text">
						&nbsp;&nbsp;
						<a href="#" class="nav">关于</a>
					</div>
					<div class="menu-text">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="#" class="nav"><b>发表新帖</b> </a>
					</div>

					<div style="float: right; padding-right: 25px; padding-top: 12px;">
						<input type="image" src="images/go.jpg" />
					</div>
					<div style="float: right; padding-right: 8px; padding-top: 14px;">
						<input style="border: none; height: 18px; width: 130px;"
							type="text" name="search_box" />
					</div>
				</div>


				<table width="93%" border="0" align="right">
					<tr>
						<td>
							<table width="100%" border="0">
								<tr>
									<td>
										<table width="100%" border="0">
											<tr align="left">
												<td>
													<a href="#" class="STYLE3">论坛首页</a>→
													<a href="#" class="STYLE3">关于页面</a>
												</td>
											</tr>
											<tr>
												<td>
													&nbsp;


												</td>
											</tr>
											<tr>
												<td align="right">
													<span class="STYLE3"><span class="STYLE5"></span>&nbsp;&nbsp;</span>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td>
										<table width="100%" style="border: solid 1px"
											bordercolor="#0066FF">
											<tr>
												<td align="right" width="40%">
													<font color="white">s</font>
												</td>
												<td align="left"></td>
											</tr>
											<tr>
												<td align="right" width="40%">
													制作人：
												</td>
												<td align="left">
													张树凯
												</td>
											</tr>
											<tr>
												<td align="right">
													制作日期：
												</td>
												<td align="left">
													2009-10-19
												</td>
											</tr>
											<tr>
												<td align="right">
													Email：
												</td>
												<td align="left">
													bauble@126.com
												</td>
											</tr>
											<tr>
												<td align="right" width="40%">
													<font color="white">s</font>
												</td>
												<td align="left"></td>
											</tr>
										</table>

										<div class="footer">
											<center>
												----------------------------------------------------------------------------------------------------------------
												------------------------------------------------------------------------
												<br />
												Copyright Business Company (c) 2007, All rights Reserved.
												Designed by
												<a href="#">Severus</a>
											</center>
										</div>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</div>
		</center>
	</body>
</html>