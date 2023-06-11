<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/webLib/css/layout.css">
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"/>
	</header>
<section>
    <h1>�뿩 ȸ�� ���</h1>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ȸ�� ��ȣ</th>
                <th>���̵�</th>
                <th>�̸�</th>
                <th>��ȭ��ȣ</th>
                <th>���� ��ȣ</th>
                <th>���� ����</th>
                <th>�� �� ��</th>
                <th>�� �� ��</th>
                <th>�� �� ��</th>
                <th>�� �� ��</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="ruser" items="${rentedusers}">
                <tr>
                    <td>${ruser.no}</td>
                    <td>${ruser.id}</td> 
                    <td>${ruser.name}</td>
                    <td>${ruser.phoneNo}</td>
                    <td>${ruser.bookNO}</td>
                    <td>${ruser.bookTitle}</td>
                    <td>${ruser.bookWriter}</td>
                    <td>${ruser.bookPublisher}</td>
                    <td>${ruser.rntDate}</td>
                    <td>${ruser.rtDate}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</section>


	<footer>
		<%@ include file="/jsp/include/bottom.jsp" %>
	</footer>
</body>
</html>	