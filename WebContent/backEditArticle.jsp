<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>�������</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
	</head>
	<body id="page">
		<h2>
			�鿴��������
		</h2>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>
					���⣺
				</th>
				<td>
					<input type="text" value=" ${bbs.title }" size="80"/>
				</td>
			</tr>
			<tr>
				<th>
					���ݣ�
				</th>
				<td>
						${bbs.content }
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<a href="backDeleteArticle.do?id=${bbs.id }">ɾ������</a>
				</td>
			</tr>
		</table>
	</body>
</html>