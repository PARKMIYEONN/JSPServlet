<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- 얘는 서버가 다 해서 클라이언트에게 응답까지 보내. 주석도 다 같이 날아가. 웹브라우저가 어 이거 주석이네 하면서 화면에 안 보여주는 거
얘는 소스보기 하면 이게 다 보여 -->

<%-- 얘는 개발자들은 jsp주석을 써야 돼. 소스에 보이지 않는다. --%>

<%-- 
	http://localhost:8080/dynamic-web/el/exam01.jsp?name=hong&id=kkk 입력시 hong 화면에 출력
 --%>

 이름 : <%= request.getParameter("name") %> <br>
 이름 : ${ param.name }<br>
 ID : ${ param.id }<br>
</body>
</html>