<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>

<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>�����б�</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
	</head>
	<body id="page">
		<h2>
			�����б�
		</h2>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>
					ID
				</th>
				<th>
					����
				</th>
				<th>
					����
				</th>
				<th>
					����ʱ��
				</th>
				<th>
					�ظ���
				</th>
				<th>
					�����
				</th>
				<th>
					�������
				</th>
			</tr>
			<c:forEach items="${articles}" var="a">
			<tr>
				<td align="center">
					${a.id }
				</td>
				<td>
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
					${a.user.username }
				</td>
				<td align="center">
					${a.pdate }
				</td>
				<td align="center">
					${a.replyNum }
				</td>
				<td align="center">
					${a.hit }
				</td>
				<td align="center">
					<a href="backEditArticle.do?id=${a.id }">�鿴����</a> &nbsp;/&nbsp;
					<a href="backDeleteArticle.do?id=${a.id }">ɾ��</a>
				</td>
			</tr>
			</c:forEach>
		</table>
	</body>
</html>