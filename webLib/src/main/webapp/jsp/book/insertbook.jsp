<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>도서 등록</title>
<link rel="stylesheet" href="/webLib/css/layout.css">
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"/>
	</header>
<section class="d-flex justify-content-center align-items-center">
    <div class="container">
        <h1 class="text-center">도서 등록</h1>
        <form action="insertbookprocess.do" method="POST">
            <div class="form-group">
                <label for="title">도서 제목:</label>
                <input type="text" class="form-control" id="title" name="title">
            </div>
            <div class="form-group">
                <label for="writer">글 쓴 이:</label>
                <input type="text" class="form-control" id="writer" name="writer">
            </div>
            <div class="form-group">
                <label for="publisher">출 판 사:</label>
                <input type="text" class="form-control" id="publisher" name="publisher">
            </div>
            <div class="text-center">
                <input type="submit" class="btn btn-warning" value="등록">
            </div>
        </form>
    </div>
</section>


	<footer>
		<%@ include file="/jsp/include/bottom.jsp" %>
	</footer>
</body>
</html>