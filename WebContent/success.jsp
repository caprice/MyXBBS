<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>

<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script language="JavaScript1.2" type="text/javascript">

function delayURL(url) {
    var delay = document.getElementById("time").innerHTML;
	if(delay > 0) {
		delay--;
		document.getElementById("time").innerHTML = delay;
	} else {
		window.top.location.href = url;
    }
    setTimeout("delayURL('" + url + "')", 1000); 
}

</script>


<logic:present name="flag">

	<c:set value="AddUserSuccess" var="AddUserSuccess" />
	<c:set value="UploadTXSuccess" var="UploadTXSuccess" />
	<c:set value="PostSuccess" var="PostSuccess" />
	<c:set value="LoginSuccess" var="LoginSuccess" />
	<c:set value="ReplySuccess" var="ReplySuccess" />

	<c:if test="${AddUserSuccess eq flag}">
		<center>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			��ϲ����ע��ɹ���
			<br>
			<br>
			<span id="time">6 </span>���Ӻ��Զ���ת����������Զ���ת��������������
			<br>
			<br>
			<a href="upload.jsp">����ͷ���ϴ�ҳ��</a>
		</center>

		<script type="text/javascript">
			delayURL("upload.jsp", 3000);
		</script>
	</c:if>

	<c:if test="${UploadTXSuccess eq flag}">
		<center>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			��ϲ����ͷ���ϴ��ɹ���
			<br>
			<br>
			<span id="time">6 </span>���Ӻ��Զ���ת����������Զ���ת��������������
			<br>
			<br>
			<a href="index.do">������ҳ</a>
		</center>

		<script type="text/javascript">
			delayURL("index.do", 3000);
		</script>
	</c:if>

	<c:if test="${PostSuccess eq flag}">
		<center>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			��ϲ�������������ɹ���
			<br>
			<br>
			<span id="time">6 </span>���Ӻ��Զ���ת����������Զ���ת��������������
			<br>
			<br>
			<a href="index.do">������ҳ</a>
		</center>

		<script type="text/javascript">
			delayURL("index.do", 3000);
		</script>
	</c:if>


	<c:if test="${LoginSuccess eq flag}">
		<center>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			��ϲ������¼�ɹ���
			<br>
			<br>
			<span id="time">6 </span>���Ӻ��Զ���ת����������Զ���ת��������������
			<br>
			<br>
			<a href="index.do">������ҳ</a>
		</center>

		<script type="text/javascript">
			delayURL("index.do", 3000);
		</script>
	</c:if>

	<c:if test="${ReplySuccess eq flag}">
		<center>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			��ϲ�����ظ��ɹ���
			<br>
			<br>
			<span id="time">6 </span>���Ӻ��Զ���ת����������Զ���ת��������������
			<br>
			<br>
			<a href="index.do">������ҳ</a>
		</center>

		<script type="text/javascript">
			delayURL("index.do", 3000);
		</script>
	</c:if>
</logic:present>