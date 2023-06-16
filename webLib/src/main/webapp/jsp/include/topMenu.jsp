<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, td {
            border: 1px solid black;
        }

        img {
            max-width: 200px;
            height: auto;
        }

        td.right-align {
            text-align: right;
            padding-right: 5px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="/webLib/main.do"><img src="/webLib/jsp/include/bbangmilib.png" alt="빵미도서관"></a>
        <span class="navbar-text">
            <c:if test="${not empty loginUser}">
                <c:out value="${loginUser.name}"/>(${loginUser.id})님 안녕하세요^^
            </c:if>
        </span>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="/webLib/main.do">홈</a></li>
                <li class="nav-item">
                    <a class="nav-link" href="/webLib/booksearch.do">도서검색</a>
                </li>
                <c:if test="${loginUser.no eq '1'}">
                    <li class="nav-item">
                        <a class="nav-link" href="/webLib/usermanager.do">회원목록</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/webLib/rentallist.do">대여 회원 목록</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/webLib/insertbook.do">도서등록</a>
                    </li>
                </c:if>
                <c:if test="${empty loginUser}">
                    <li class="nav-item">
                        <a class="nav-link" href="/webLib/insertuser.do">회원가입</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/webLib/login.do">로그인</a>
                    </li>
                </c:if>
                <c:if test="${ not empty loginUser }">
                    <c:if test="${ loginUser.no != '1' }">
                        <li class="nav-item">
                            <a class="nav-link" href="/webLib/mypage.do">마이페이지</a>
                        </li>
                    </c:if>
                    <li class="nav-item">
                        <a class="nav-link" href="/webLib/booklist.do">전체 도서 목록</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/webLib/logout.do">로그아웃</a>
                    </li>
                </c:if>
            </ul>
        </div>
    </nav>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>


