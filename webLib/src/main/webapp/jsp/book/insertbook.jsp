<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
    <h1>���� ���</h1>
    <form action="insertbookprocess.do" method="POST">
        <div>
            <label for="title">���� ����:</label>
            <input type="text" id="title" name="title">
        </div>
        <div>
            <label for="writer">�� �� ��:</label>
            <input type="text" id="writer" name="writer">
        </div>
        <div>
            <label for="publisher">�� �� ��:</label>
            <input type="text" id="publisher" name="publisher">
        </div>
        <div>
            <input type="submit" value="���">
        </div>
    </form>
</section>

	<footer>
		<%@ include file="/jsp/include/bottom.jsp" %>
	</footer>
</body>
</html>