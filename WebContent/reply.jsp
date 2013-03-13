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
-->
</style>

		<!-- fckeditor -->

		<script type="text/javascript" src="fckeditor/fckeditor.js"></script>
		<script type="text/javascript">

	window.onload = function()
	{
		// Automatically calculates the editor base path based on the _samples directory.
		// This is usefull only for these samples. A real application should use something like this:
		// oFCKeditor.BasePath = '/fckeditor/' ;	// '/fckeditor/' is the default value.
		
		//var sBasePath = document.location.pathname.substring(0,document.location.pathname.lastIndexOf('_samples')) ;
	
		var sBasePath = "<%=request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ request.getContextPath() + "/fckeditor/"%>";
	
		var oFCKeditor = new FCKeditor( 'content' ) ;
		oFCKeditor.BasePath	= sBasePath ;
		oFCKeditor.ReplaceTextarea() ;
	}

	</script>

		<!-- end of fckeditor -->

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
													<a href="#" class="STYLE3">回复页面</a>
												</td>
											</tr>
											<tr>
												<td>
													&nbsp;
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
												<td>
													<form action="replying.do" method="post">
														<input type="hidden" value="${id }" name="id" />
														<table width="100%" border="0">
															<tr>
																<th width="10%" scope="row" align="right">
																	用户名：
																</th>
																<td width="90%" align="left">
																	<logic:present name="user">
																		&nbsp;
																		<input type="text" name="username"
																			value="${user.username }" size="115" />
																	</logic:present>
																	<logic:notPresent name="user">
																		&nbsp;
																		<input type="text" name="username" value="游客"
																			size="115" />
																	</logic:notPresent>
																</td>
															</tr>
															<tr>
																<th scope="row" align="right">
																	标题：
																</th>
																<td align="left">
																	&nbsp;
																	<input type="text" name="title" size="115" />
																</td>
															</tr>
															<tr>
																<th scope="row" align="right">
																	内容：
																</th>
																<td align="left">
																	&nbsp;
																	<textarea rows="8" cols="70" name="content"></textarea>
																</td>
															</tr>
															<tr>
																<td align="center" colspan="2">
																	<input type="submit" value="确认提交" />
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	<input type="reset" value="取消重置" />
																</td>
															</tr>
														</table>
													</form>
												</td>
											</tr>
										</table>

									</td>
								</tr>
							</table>



						</td>
					</tr>
				</table>

				<div class="footer">
					<center>
						----------------------------------------------------------------------------------------------------------------
						------------------------------------------------------------------------
						<br />
						Copyright Business Company (c) 2007, All rights Reserved. Designed
						by
						<a href="#">Severus</a>
					</center>
				</div>

			</div>
		</center>
	</body>
</html>