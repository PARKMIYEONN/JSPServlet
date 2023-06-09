<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
                <span>즐겨찾기</span>
                <c:if test="${not empty loginUser}">
                    [<c:out value="${loginUser.name}"/>(${loginUser.id})님 로그인중...]
                </c:if>
            </td>
        </tr>
        <tr>
            <td>
                <a href="/webLib/booksearch.do">도서검색</a> |
                <c:if test="${loginUser.no eq '1'}">
                    회원관리 |
                    <a href="/webLib/insertbook.do">도서등록</a> |
                </c:if>
                <c:choose>
                    <c:when test="${empty loginUser}">
                        <a href="/webLib/insertuser.do">회원가입</a> |
                        <a href="/webLib/login.do">로그인</a>
                    </c:when>
                    <c:otherwise>
                        <a href="/webLib/mypage.do">마이페이지 |</a>
                        <a href="/webLib/logout.do">로그아웃</a> |
                        <a href="/webLib/booklist.do">전체 도서 목록</a> |
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </table>
</body>
</html>

