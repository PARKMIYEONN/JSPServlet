<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- ��� ������ �� �ؼ� Ŭ���̾�Ʈ���� ������� ����. �ּ��� �� ���� ���ư�. ���������� �� �̰� �ּ��̳� �ϸ鼭 ȭ�鿡 �� �����ִ� ��
��� �ҽ����� �ϸ� �̰� �� ���� -->

<%-- ��� �����ڵ��� jsp�ּ��� ��� ��. �ҽ��� ������ �ʴ´�. --%>

<%-- 
	http://localhost:8080/dynamic-web/el/exam01.jsp?name=hong&id=kkk �Է½� hong ȭ�鿡 ���
 --%>

 �̸� : <%= request.getParameter("name") %> <br>
 �̸� : ${ param.name }<br>
 ID : ${ param.id }<br>
</body>
</html>