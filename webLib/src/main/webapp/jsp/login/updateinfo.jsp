<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>내 정보 수정</title>
<link rel="stylesheet" href="/webLib/css/layout.css">
<!-- 추가한 부트스트랩 CSS 링크 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMypage.jsp"/>
	</header>
<section>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h1>회원정보 수정</h1>
                <form action="/webLib/updateinfoprocess.do" method="POST">
                    <div class="form-group">
                        <label for="id">아이디:</label>
                        <input type="text" class="form-control" id="id" name="id" value="${loginUser.id}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="pw">변경할 비밀번호:</label>
                        <input type="password" class="form-control" id="pw" name="pw">
                    </div>
                    <div class="form-group">
                        <label for="pwcheck">비밀번호 확인:</label>
                        <input type="password" class="form-control" id="pwcheck" name="pwcheck">
                    </div>
                    <div class="form-group">
                        <label for="name">이름:</label>
                        <input type="text" class="form-control" id="name" name="name" value="${loginUser.name}">
                    </div>
                    <div class="form-group">
                        <label for="phone">핸드폰 번호:</label>
                        <input type="text" class="form-control" id="phone" name="phone" value="${loginUser.phoneNo}">
                    </div>
                    <div class="form-group">
                        <label for="birthDay">생년월일:</label>
                        <input type="date" class="form-control" id="birthDay" name="birthDay" value="${loginUser.birthDay}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="password">현재 비밀번호:</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                        <small class="text-muted">* 수정하려면 현재 비밀번호를 입력하세요.</small>
                    </div>
                    <div class="text-center">
                        <input type="submit" class="btn btn-warning btn-block" value="수정">
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<footer>
    <%@ include file="/jsp/include/bottom.jsp" %>
</footer>
<!-- 추가한 부트스트랩 JS 스크립트 링크 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

