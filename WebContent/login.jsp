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
-->
</style>
	</head>

	<body>
		<center>
			<div class="wrapper">
				<div class="header">
					<div style="float: left; margin-left: 110px; margin-top: 20px;">
						p
						<img src="images/logo.jpg" style="float: left;">
						<div
							style="float: left; text-align: left; font-family: tahoma; font-size: 24pt; color: #636363; margin-left: 5px; margin-top: 5px;">
							<b><font size="10">IT</font> World</b>
							<br>
							<span
								style="float: left; text-align: left; font-family: tahoma; font-size: 8pt; color: #b1b1b1;"><b>&nbsp;����������������������</b>
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
								<b>&nbsp;&nbsp;&nbsp;&nbsp;��ǰ�û���<c:out
										value="${user.username}" />
								</b>
							</logic:present> <logic:notPresent name="user">
								<b>&nbsp;&nbsp;&nbsp;&nbsp;����δ��¼��</b>
							</logic:notPresent> </span>
					</div>

				</div>
				<div class="menu">
					<div class="menu-text"
						style="padding-left: 140px; padding-right: 50px;">
						<a href="#" class="nav">��ҳ</a>
					</div>
					<div class="menu-text">
						&nbsp;&nbsp;
						<a href="#" class="nav">��¼</a>
					</div>
					<div class="menu-text">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="#" class="nav">ע��</a>
					</div>
					<div class="menu-text" style="padding-right: 30px;">
						<a href="#" class="nav">ƽ����ʽ</a>
					</div>
					<div class="menu-text">
						&nbsp;&nbsp;
						<a href="#" class="nav">����</a>
					</div>
					<div class="menu-text">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="#" class="nav"><b>��������</b> </a>
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
													<a href="#" class="STYLE3">��̳��ҳ</a>��
													<a href="#" class="STYLE3">�û���¼</a>
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
										<form action="login.do" method="post">
											<table width="100%" style="border: solid 1px"
												bordercolor="#0066FF">
												<tr>
													<td height="149">
														<table width="100%" border="0">
															<tr>
																<td width="28%" height="50" align="right">
																	<span class="STYLE3">�û�����</span>
																</td>
																<td width="72%" align="left">
																	&nbsp;
																	<input type="text" name="username" size="40" />
																</td>
															</tr>
															<tr>
																<td height="51" align="right">
																	<span class="STYLE3">��&nbsp;&nbsp;�룺</span>
																</td>
																<td align="left">
																	&nbsp;
																	<input type="password" name="password" size="44" />
																</td>
															</tr>
															<tr>
																<td colspan="2" align="center">
																	<input type="submit" value="ȷ���ύ" />
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	<input type="reset" value="ȡ������" />
																</td>
															</tr>
														</table>
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
				<br />
				<br />
				<br />
				<br />



				<div class="footer">
					<br />
					<br />
					<br />
					<br />
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