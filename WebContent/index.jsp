<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
										value="${user.username}" />
								</b>
							</logic:present> <logic:notPresent name="user">
								<b>&nbsp;&nbsp;&nbsp;&nbsp;您尚未登录！</b>
							</logic:notPresent> </span>
					</div>

				</div>
				<div class="menu">
					<div class="menu-text"
						style="padding-left: 140px; padding-right: 50px;">
						<a href="index.do" class="nav">首页</a>
					</div>
					<div class="menu-text">
						&nbsp;&nbsp;
						<a href="login.jsp" class="nav">登录</a>
					</div>
					<div class="menu-text">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="registe.do" class="nav">注册</a>
					</div>
					<div class="menu-text" style="padding-right: 30px;">
						<a href="plat.do" class="nav">平板形式</a>
					</div>
					<div class="menu-text">
						&nbsp;&nbsp;
						<a href="about.jsp" class="nav">关于</a>
					</div>
					<div class="menu-text">
						&nbsp;&nbsp;
						<a href="logout.do" class="nav"><b>注销</b> </a>
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
											<tr>
												<td>
													<a href="#" class="STYLE3">论坛首页</a>→
													<a href="#" class="STYLE3">树形结构展现</a>
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
											<tr>
												<td>
													&nbsp;
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
											<tr>
												<td align="left">
													&nbsp;&nbsp;
													<a href="post.jsp" class="STYLE3"><b>发表新帖</b>
													</a>
												</td>
												<td align="right">
													<span class="STYLE3"><span class="STYLE5">浏览${hit
															}次</span>&nbsp;&nbsp;&nbsp;&nbsp;<A
														style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px"
														href="#">共${totalPages}页</A> <A
														style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px"
														href="index.do?pageNo=${pageNo-1 }">&larr; 上一页</A> <c:choose>
															<c:when test="${totalPages <= 10}">
																<c:forEach var="t" begin="1" end="${totalPages}">
																	<c:if test="${pageNo eq t}">
																		<A
																			style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px; BACKGROUND-COLOR: #006699"
																			href="index.do?pageNo=${t }"><font color="white">${t
																				}</font>
																		</A>
																	</c:if>
																	<c:if test="${pageNo ne t}">
																		<A
																			style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px;"
																			href="index.do?pageNo=${t }">${t }</A>
																	</c:if>
																</c:forEach>
															</c:when>
															<c:otherwise>

																<c:if test="${pageNo <= 10}">

																	<c:forEach var="t" begin="1" end="10">
																		<c:if test="${pageNo eq t}">
																			<A
																				style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px; BACKGROUND-COLOR: #006699"
																				href="index.do?pageNo=${t }"><font color="white">${t
																					}</font>
																			</A>
																		</c:if>
																		<c:if test="${pageNo ne t}">
																			<A
																				style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px;"
																				href="index.do?pageNo=${t }">${t }</A>
																		</c:if>
																	</c:forEach>
																</c:if>

																<c:if test="${pageNo > 10}">

																	<c:forEach var="t" begin="11" end="${totalPages}">
																		<c:if test="${pageNo eq t}">
																			<A
																				style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px; BACKGROUND-COLOR: #006699"
																				href="index.do?pageNo=${t }"><font color="white">${t
																					}</font>
																			</A>
																		</c:if>
																		<c:if test="${pageNo ne t}">
																			<A
																				style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px;"
																				href="index.do?pageNo=${t }">${t }</A>
																		</c:if>
																	</c:forEach>
																</c:if>

															</c:otherwise>
														</c:choose> <A
														style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px"
														href="index.do?pageNo=${pageNo+1 }">下一页 &rarr;</A> </span>
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
																<span class="STYLE3">&nbsp;&nbsp;&nbsp;主题帖数：${rootCount
																	} &nbsp;&nbsp;&nbsp;&nbsp;帖子总数：${totleCount }</span>
																<br />
																<table width="100%" style="border: solid 1px"
																	bordercolor="#0066FF">
																	<tr bgcolor="#0870c7">
																		<th width="10%" scope="col">
																			编号
																		</th>
																		<th width="35%" scope="col">
																			标题
																		</th>
																		<th width="20%" scope="col">
																			发布日期
																		</th>
																		<th width="15%" scope="col">
																			发帖人
																		</th>
																		<th width="10%" scope="col">
																			回复数
																		</th>
																		<th width="10%" scope="col">
																			点击率
																		</th>
																	</tr>
																	<c:set var="i" value="1" />
																	<c:forEach items="${articles}" var="a">

																		<c:choose>
																			<c:when test="${i mod 2 == 1}">
																				<tr>
																					<td align="center">
																						${a.id }
																					</td>
																					<td align="left">
																						<%
																							String preStr = "";
																						%>
																						<c:set var="grade" value="${a.grade}" />
																						<c:forEach begin="1" end="${grade}">
																							<%
																								preStr += "----";
																							%>
																						</c:forEach>
																						<%=preStr%>
																						<a href="details.do?id=${a.id }">${ a.title}</a>
																					</td>
																					<td align="center">
																						${a.pdate }
																					</td>
																					<td align="center">
																						${a.user.username }
																					</td>
																					<td align="center">
																						${a.replyNum }
																					</td>
																					<td align="center">
																						${a.hit}
																					</td>
																				</tr>
																			</c:when>
																			<c:otherwise>
																				<tr bgcolor="#cad1e1">
																					<td align="center">
																						${a.id }
																					</td>
																					<td align="left">
																						<%
																							String preStr = "";
																						%>
																						<c:set var="grade" value="${a.grade}" />
																						<c:forEach begin="1" end="${grade}">
																							<%
																								preStr += "----";
																							%>
																						</c:forEach>
																						<%=preStr%>
																						<a href="details.do?id=${a.id }">${ a.title}</a>
																					</td>
																					<td align="center">
																						${a.pdate }
																					</td>
																					<td align="center">
																						${a.user.username }
																					</td>
																					<td align="center">
																						${a.replyNum }
																					</td>
																					<td align="center">
																						${a.hit }
																					</td>
																				</tr>
																			</c:otherwise>
																		</c:choose>
																		<c:set var="i" value="${i + 1}"></c:set>
																	</c:forEach>
																</table>

															</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>


										<table align="right">
											<tr align="right">
												<td align="right">
													&nbsp;&nbsp;&nbsp;&nbsp;
													<A
														style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px"
														href="#">共${totalPages}页</A>
													<A
														style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px"
														href="index.do?pageNo=${pageNo-1 }">&larr; 上一页</A>

													<c:choose>
														<c:when test="${totalPages <= 10}">
															<c:forEach var="t" begin="1" end="${totalPages}">
																<c:if test="${pageNo eq t}">
																	<A
																		style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px; BACKGROUND-COLOR: #006699"
																		href="index.do?pageNo=${t }"><font color="white">${t
																			}</font>
																	</A>
																</c:if>
																<c:if test="${pageNo ne t}">
																	<A
																		style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px;"
																		href="index.do?pageNo=${t }">${t }</A>
																</c:if>
															</c:forEach>
														</c:when>
														<c:otherwise>
															<c:forEach var="t" begin="11" end="${totalPages}">
																<c:if test="${pageNo eq t}">
																	<A
																		style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px; BACKGROUND-COLOR: #006699"
																		href="index.do?pageNo=${t }"><font color="white">${t
																			}</font>
																	</A>
																</c:if>
																<c:if test="${pageNo ne t}">
																	<A
																		style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px;"
																		href="index.do?pageNo=${t }">${t }</A>
																</c:if>
															</c:forEach>
														</c:otherwise>
													</c:choose>
													<A
														style="BORDER-RIGHT: #aaaadd 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #aaaadd 1px solid; PADDING-LEFT: 3px; PADDING-BOTTOM: 0.5px; MARGIN: 1px; BORDER-LEFT: #aaaadd 1px solid; COLOR: #006699; PADDING-TOP: 1px; BORDER-BOTTOM: #aaaadd 1px solid; TEXT-DECORATION: none; font-size: 12px"
														href="index.do?pageNo=${pageNo+1 }">下一页 &rarr;</A>
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
						<a href="backLogin.jsp">Severus</a>
					</center>
				</div>

			</div>
		</center>
	</body>
</html>
