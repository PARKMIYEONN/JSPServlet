<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/webLib/css/layout.css">
<!-- �߰��� ��Ʈ��Ʈ�� CSS ��ũ -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    .book-table {
        border-collapse: collapse;
        width: 100%;
    }
    .book-table th,
    .book-table td {
        border: 1px solid transparent;
        padding: 8px;
        text-align: left;
    }
    .book-table th {
        background-color: #f2f2f2;
    }
    .book-table tr:hover {
        background-color: #f5f5f5;
    }
</style>
</head>
<body>
    <header>
        <jsp:include page="/jsp/include/topMypage.jsp"/>
    </header>
<section class="text-center">
    <div class="container">
        <h1>���� ���</h1>
        <table class="book-table">
            <thead>
                <tr>
                    <th>���� ��ȣ</th>
                    <th>���� ����</th>
                    <th>�� �� ��</th>
                    <th>�� �� ��</th>
                    <th>�� �� ��</th>
                    <th>�� �� ��</th>
                    <th>�����ݳ�</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="mybook" items="${mybooks}">
                    <tr>
                        <td>${mybook.bookNO}</td>
                        <td>${mybook.bookTitle}</td>
                        <td>${mybook.bookWriter}</td>
                        <td>${mybook.bookPublisher}</td>
                        <td>${mybook.rntDate}</td>
                        <td>${mybook.rtDate}</td>
                        <td>
                            <form action="returnbook.do" method="POST">
                                <input type="hidden" name="bookNO" value="${mybook.bookNO}">
                                <input type="submit" class="btn btn-primary" value="�����ݳ�">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</section>

<footer>
    <%@ include file="/jsp/include/bottom.jsp" %>
</footer>
<!-- �߰��� ��Ʈ��Ʈ�� JS ��ũ��Ʈ ��ũ -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

