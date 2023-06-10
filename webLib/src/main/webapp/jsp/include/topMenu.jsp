<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Web Page</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, td {
            border: 1px solid black;
        }

        img {
            max-width: 100%;
            height: auto;
        }

        td.right-align {
            text-align: right;
            padding-right: 5px;
        }
    </style>
</head>
<body>
    <table>
        <tr>
            <td rowspan="2" style="width: 300px;"><a href="/webLib/main.do"><img src="/webLib/jsp/include/bbangmilib.png" alt="빵미도서관"></a></td>
            <td class="right-align">
            <span></span>
                <c:if test="${not empty loginUser}">
                    [<c:out value="${loginUser.name}"/>(${loginUser.id})님 안녕하세요]
                </c:if>
            </td>
        </tr>
        <tr>
            <td>
                <a href="/webLib/booksearch.do">도서검색</a> |
                <c:if test="${loginUser.no eq '1'}">
                    <a href="/webLib/usermanager.do">회원목록 |</a>
                    <a href="/webLib/rentallist.do">대여 회원 목록</a> |
                    <a href="/webLib/insertbook.do">도서등록</a> |
                </c:if>
                
                    <c:if test="${empty loginUser}">
                        <a href="/webLib/insertuser.do">회원가입</a> |
                        <a href="/webLib/login.do">로그인</a> |
                    </c:if>
                    <c:if test="${ not empty loginUser }">
                    <c:if test="${ loginUser.no != '1' }">
                        <a href="/webLib/mypage.do">마이페이지 |</a>
                       </c:if>
                    
                        <a href="/webLib/booklist.do">전체 도서 목록</a> |
                        <a href="/webLib/logout.do">로그아웃</a> |
                    </c:if>
                
            </td>
        </tr>
    </table>
</body>
</html>

