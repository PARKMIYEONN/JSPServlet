<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title her
</title>
<link rel="stylesheet" href="/webLib/css/layout.css">
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"/>
	</header>
<section>
    <h1>회원탈퇴</h1>
    <form action="deleteuserprocess.do" method="POST">
        <input type="hidden" name="id" value="${loginUser.id}">
        <div class="form-group">
            <label for="currentPassword">현재 비밀번호:</label>
            <input type="password" class="form-control" id="currentPassword" name="password" required>
        </div>
        <div class="form-group">
            <label for="confirmPassword">비밀번호 확인:</label>
            <input type="password" class="form-control" id="confirmPassword" name="pwcheck" required>
        </div>
        <div class="form-group">
            <input type="submit" class="btn btn-danger" value="회원탈퇴">
        </div>
    </form>
</section>

	<footer>
		<%@ include file="/jsp/include/bottom.jsp" %>
	</footer>
</body>
</html>