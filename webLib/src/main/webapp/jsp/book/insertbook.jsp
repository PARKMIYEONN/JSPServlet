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
    <h1>도서 등록</h1>
    <form action="insertbookprocess.do" method="POST">
        <div>
            <label for="title">도서 제목:</label>
            <input type="text" id="title" name="title">
        </div>
        <div>
            <label for="writer">글 쓴 이:</label>
            <input type="text" id="writer" name="writer">
        </div>
        <div>
            <label for="publisher">출 판 사:</label>
            <input type="text" id="publisher" name="publisher">
        </div>
        <div>
            <input type="submit" value="등록">
        </div>
    </form>
</section>

	<footer>
		<%@ include file="/jsp/include/bottom.jsp" %>
	</footer>
</body>
</html>