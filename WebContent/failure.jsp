<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>Insert title here</title>
	</head>
	<body>
		|--ϵͳ������ʾ��
		<br />
		<logic:present name="flag">

			<c:set value="TowPassNotEquals" var="TowPassNotEquals" />
			<c:set value="UploadTXFailure" var="UploadTXFailure" />
			<c:set value="PostFailure" var="PostFailure" />
			<c:set value="LoginError" var="LoginError" />
			<c:set value="IndexError" var="IndexError" />
			<c:set value="DetailError" var="DetailError" />

			<c:if test="${TowPassNotEquals eq flag}">
			&nbsp;&nbsp;&nbsp;&nbsp;--�Բ��� �����������벻һ�£�
		</c:if>

			<c:if test="${UploadTXFailure eq flag}">
			&nbsp;&nbsp;&nbsp;&nbsp;--�Բ��� �ļ��ϴ�ʧ�� �����Ժ����ԣ�
		</c:if>

			<c:if test="${PostFailure eq flag}">
			&nbsp;&nbsp;&nbsp;&nbsp;--�Բ��� ��������ʧ�� �����Ժ����ԣ�
		</c:if>

			<c:if test="${LoginError eq flag}">
			&nbsp;&nbsp;&nbsp;&nbsp;--�Բ��� �û��������벻һ�� ����ȷ�����ԣ�
		</c:if>

			<c:if test="${IndexError eq flag}">
			&nbsp;&nbsp;&nbsp;&nbsp;--�Բ��� ��ҳ��¼ʧ�� �����Ժ����ԣ�
		</c:if>

			<c:if test="${DetailError eq flag}">
			&nbsp;&nbsp;&nbsp;&nbsp;--�Բ��� �鿴��������ʧ�� �����Ժ����ԣ�
		</c:if>
		</logic:present>
	</body>
</html>