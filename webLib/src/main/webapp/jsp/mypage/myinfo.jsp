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
		<jsp:include page="/jsp/include/topMypage.jsp"/>
	</header>
	<section>
회원번호 : ${user.no}<br>	
아이디 : ${user.id}<br>
이름 : ${user.name}<br>
전화번호 : ${user.phoneNo}<br>
생일 : ${user.birthDay}<br>
 <form action="updateinfo.do" method="POST">
 <input type="hidden" name="phone" value="${user.phoneNo}">
 <input type="hidden" name="name" value="${user.phoneNo}">
 <input type="hidden" name="" value="${user.phoneNo}">
  <input type="submit" value="정보수정">
 </form>
	</section>

	<footer>
		<%@ include file="/jsp/include/bottom.jsp" %>
	</footer>
</body>
</html>