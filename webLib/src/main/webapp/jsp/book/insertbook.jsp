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
<section class="d-flex justify-content-center align-items-center">
    <div class="container">
        <h1 class="text-center">���� ���</h1>
        <form action="insertbookprocess.do" method="POST">
            <div class="form-group">
                <label for="title">���� ����:</label>
                <input type="text" class="form-control" id="title" name="title">
            </div>
            <div class="form-group">
                <label for="writer">�� �� ��:</label>
                <input type="text" class="form-control" id="writer" name="writer">
            </div>
            <div class="form-group">
                <label for="publisher">�� �� ��:</label>
                <input type="text" class="form-control" id="publisher" name="publisher">
            </div>
            <div class="text-center">
                <input type="submit" class="btn btn-warning" value="���">
            </div>
        </form>
    </div>
</section>


	<footer>
		<%@ include file="/jsp/include/bottom.jsp" %>
	</footer>
</body>
</html>