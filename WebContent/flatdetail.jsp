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
								style="float: left; text-align: left; font-family: tahoma; font-size: 8pt; color: #b1b1b1;"><b>&nbsp;�����������������������</b>
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
										value="${user.username}" /> </b>
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
						<a href="index.do" class="nav">���νṹ</a>
					</div>
					<div class="menu-text">
						&nbsp;&nbsp;
						<a href="#" class="nav">����</a>
					</div>
					<div class="menu-text">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="post.do" class="nav"><b>��������</b> </a>
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
													<a href="#" class="STYLE3">����ϸ��չ��</a>
												</td>
											</tr>
											<tr>
												<td>
													&nbsp;


												</td>
											</tr>
											<tr>
												<td align="right">
													<span class="STYLE3"><span class="STYLE5"></span>&nbsp;&nbsp;&nbsp;&nbsp;<A
														style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px"
														href="#">��${totalPages}ҳ</A> <A
														style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px"
														href="flatdetail.do?pageNo=${pageNo-1 }&id=${id }">&larr;
															��һҳ</A> <c:choose>
															<c:when test="${totalPages <= 10}">
																<c:forEach var="t" begin="1" end="${totalPages}">
																	<c:if test="${pageNo eq t}">
																		<A
																			style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px; BACKGROUND-COLOR: #006699"
																			href="flatdetail.do?pageNo=${t }&id=${id }"><font
																			color="white">${t }</font> </A>
																	</c:if>
																	<c:if test="${pageNo ne t}">
																		<A
																			style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px;"
																			href="flatdetail.do?pageNo=${t }&id=${id }">${t }</A>
																	</c:if>
																</c:forEach>
															</c:when>
															<c:otherwise>
																<c:if test="${pageNo <= 10}">
																	<c:forEach var="t" begin="1" end="10">
																		<c:if test="${pageNo eq t}">
																			<A
																				style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px; BACKGROUND-COLOR: #006699"
																				href="flatdetail.do?pageNo=${t }&id=${id }"><font
																				color="white">${t }</font> </A>
																		</c:if>
																		<c:if test="${pageNo ne t}">
																			<A
																				style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px;"
																				href="flatdetail.do?pageNo=${t }&id=${id }">${t
																				}</A>
																		</c:if>
																	</c:forEach>
																</c:if>


																<c:if test="${pageNo > 10}">
																	<c:forEach var="t" begin="11" end="${totalPages}">
																		<c:if test="${pageNo eq t}">
																			<A
																				style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px; BACKGROUND-COLOR: #006699"
																				href="flatdetail.do?pageNo=${t }&id=${id }"><font
																				color="white">${t }</font> </A>
																		</c:if>
																		<c:if test="${pageNo ne t}">
																			<A
																				style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px;"
																				href="flatdetail.do?pageNo=${t }&id=${id }">${t
																				}</A>
																		</c:if>
																	</c:forEach>
																</c:if>
															</c:otherwise>
														</c:choose> <A
														style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px"
														href="flatdetail.do?pageNo=${pageNo+1 }&id=${id }">��һҳ
															&rarr;</A> </span>
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

													<table width="100%" border="0">
														<tr>
															<td>
																<table width="100%" bgcolor="#dee3e7">
																	<tr>
																		<td width="76%">
																			&nbsp;&nbsp;���⣺
																			<a href="details.do?id=${root.id }">${root.title
																				}</a>
																		</td>
																		<td width="24%" align="right">
																			&nbsp;&nbsp;
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td>
																<table width="100%" border="0">
																	<tr>
																		<td width="32%">
																			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																			<span class="STYLE7">����</span>
																		</td>
																		<td width="68%">
																			<span class="STYLE7">����</span>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														<c:set var="i" value="1" />
														<c:forEach items="${beaList}" var="u">
															<tr>
																<td>
																	<table width="100%" style="border: solid 1px blue"
																		border="1" bgcolor="#efefef">
																		<tr>
																			<td width="21%" bgcolor="#dee3e7">
																				<table width="90%" height="227" border="0"
																					align="center">
																					<tr align="left">
																						<td>
																							<span class="STYLE3"><strong>${u.currentBbs.user.username
																									}</strong> </span>
																						</td>
																					</tr>
																					<tr align="left">
																						<td>
																							<span class="STYLE3"><strong>�ȼ���${u.currentBbs.user.level
																									}��</strong> </span>
																						</td>
																					</tr>
																					<tr align="left">
																						<td>
																							<img src="${u.currentBbs.user.imagePath }"
																								border="0" />
																						</td>
																					</tr>
																					<tr align="left">
																						<td>
																							<span class="STYLE3">������${u.currentBbs.user.appearNum
																								}</span>
																						</td>
																					</tr>
																					<tr align="left">
																						<td>
																							<span class="STYLE3">���֣�${u.currentBbs.user.score
																								}</span>
																						</td>
																					</tr>
																					<tr align="center">
																						<td>
																							<span class="STYLE3">��${i }¥</span>
																						</td>
																					</tr>
																				</table>
																			</td>
																			<td width="79%">
																				<table width="100%" height="100%" border="0">
																					<tr>
																						<td height="27">
																							&nbsp;&nbsp;
																							<span class="STYLE3">����ʱ�䣺${u.currentBbs.pdate
																								}<br />&nbsp;&nbsp;------------------------------------------------------------</span>
																						</td>
																					</tr>
																					<c:set var="parentBbs" value="${u.parentBbs}" />
																					<logic:present name="parentBbs">
																						<tr align="left">
																							<td height="200">
																								<c:if test="${u.currentBbs.pid ne 0}">
																								&nbsp;&nbsp;&nbsp;${u.parentBbs.user.username }д����
																								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																								&nbsp;&nbsp;
																								<a href="reply.do?id=${u.parentBbs.id }"
																										class="STYLE3">�ظ��ø���</a>
																								</c:if>
																								<table width="100%" height="62">
																									<c:if test="${u.currentBbs.pid ne 0}">
																										<tr height="113">
																											<td height="29" align="left">
																												<table width="95%" border="0"
																													style="border: solid 1px blue"
																													align="center" bgcolor="#FFFFFF">
																													<tr>
																														<td>
																															${u.parentBbs.content }
																														</td>
																													</tr>
																												</table>
																											</td>
																										</tr>
																									</c:if>
																									<tr height="113">
																										<td>
																											<table width="95%" border="0" align="center">
																												<tr align="left">
																													<td height="21">
																														${u.currentBbs.content }
																													</td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>
																					</logic:present>
																					<logic:notPresent name="parentBbs">
																						<tr align="left">
																							<td height="200">
																								<table width="100%" height="62">
																									<tr height="113">
																										<td>
																											<table width="95%" border="0" align="center">
																												<tr align="left">
																													<td height="21">
																														${u.currentBbs.content }
																													</td>
																												</tr>
																											</table>
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>
																					</logic:notPresent>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td width="21%" bgcolor="#dee3e7">
																				&nbsp;&nbsp;&nbsp;
																				<a href="#"><font color="#0033FF">���ض�¥</font> </a>
																			</td>
																			<td width="79%" align="center">
																				<span class="STYLE3"><img
																						src="images/reply-16x16.gif" width="16"
																						height="16" border="0"> &nbsp;<a
																					href="reply.do?id=${u.currentBbs.id }">�ظ�����</a> </span>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<c:set var="i" value="${i+1}"></c:set>
														</c:forEach>
													</table>
												</td>
											</tr>
										</table>
										<table width="100%" border="0">
											<tr>
												<td align="right">
													&nbsp;&nbsp;&nbsp;&nbsp;
													<A
														style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px"
														href="#">��${totalPages}ҳ</A>
													<A
														style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px"
														href="flatdetail.do?pageNo=${pageNo-1 }&id=${id }">&larr;
														��һҳ</A>

													<c:choose>
														<c:when test="${totalPages <= 10}">
															<c:forEach var="t" begin="1" end="${totalPages}">
																<c:if test="${pageNo eq t}">
																	<A
																		style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px; BACKGROUND-COLOR: #006699"
																		href="flatdetail.do?pageNo=${t }&id=${id }"><font
																		color="white">${t }</font> </A>
																</c:if>
																<c:if test="${pageNo ne t}">
																	<A
																		style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px;"
																		href="flatdetail.do?pageNo=${t }&id=${id }">${t }</A>
																</c:if>
															</c:forEach>
														</c:when>
														<c:otherwise>
															<c:forEach var="t" begin="11" end="${totalPages}">
																<c:if test="${pageNo eq t}">
																	<A
																		style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px; BACKGROUND-COLOR: #006699"
																		href="flatdetail.do?pageNo=${t }&id=${id }"><font
																		color="white">${t }</font> </A>
																</c:if>
																<c:if test="${pageNo ne t}">
																	<A
																		style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px;"
																		href="flatdetail.do?pageNo=${t }&id=${id }">${t }</A>
																</c:if>
															</c:forEach>
														</c:otherwise>
													</c:choose>
													<A
														style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px"
														href="flatdetail.do?pageNo=${pageNo+1 }&id=${id }">��һҳ
														&rarr;</A>
												</td>
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