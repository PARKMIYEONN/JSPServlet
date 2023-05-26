<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="kr.ac.kopo.book.BookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
BookVO[] books = new BookVO[1];
BookVO b = new BookVO(); 
b.setTitle("성공"); 
books[0] = b; 
pageContext.setAttribute("books1", books); 


Map<String, String> m = new HashMap<String, String>();
m.put("title", "성공");
ArrayList<Map<String, String>> titleList = new ArrayList<>();
titleList.add(m);
pageContext.setAttribute("books2", titleList);  

//이 방식이 제일 많이 쓰인다!!!!! 하지만 규모가 있는 프로젝트를 하다보면 Map이 생각보다 많이 쓰인다!!!
ArrayList<BookVO> bookList = new ArrayList<>();
BookVO bo = new BookVO();
bo.setTitle("성공");
bookList.add(bo);
pageContext.setAttribute("books3", bookList);


Map<String,String>[] book = new HashMap[1];
Map<String, String> ma = new HashMap<String, String>();
ma.put("title", "성공");
book[0] = ma;
pageContext.setAttribute("books4", book);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 성공 출력 -->
	성공/실패?(배열 안에 Beans) ${ books1[0].title }<br>
	성공/실패?(List 안에 Map) ${ books2[0].title }<br>
	성공/실패?(List 안에 Beans) ${ books3[0].title }<br>
	성공/실패?(배열 안에 Map) ${ books4[0].title }<br>
</body>
</html>