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
		<h2>�α���</h2>
		<form action="loginProcess.do" method="POST">
			<div>
				<label for="id">���̵�:</label>
				<input type="text" id="id" name="id" required>
			</div>
			<div>
				<label for="password">��й�ȣ:</label>
				<input type="password" id="password" name="password" required>
			</div>
			<div>
				<input type="submit" value="�α���">
			</div>
		</form>
		<br>
		<a href="insertUser.do">ȸ������</a>
	</section>
	<footer>
		<%@ include file="/jsp/include/bottom.jsp" %>
	</footer>
</body>
</html>

