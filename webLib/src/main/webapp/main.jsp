<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>홈</title>
    <link rel="stylesheet" href="/webLib/css/layout.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css">
    <style>
        .fancy-heading {
            color: #ff7f50;
            font-size: 32px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 2px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <header>
        <jsp:include page="/jsp/include/topMenu.jsp"/>
    </header>
    <section>
        <div class="container text-center">
            <h2 class="fancy-heading">환영합니다, 빵미도서관입니다</h2>
            <img src="/webLib/jsp/include/bbangmilib.png" alt="빵미도서관" class="img-fluid">
        </div>
    </section>

    <footer>
        <%@ include file="/jsp/include/bottom.jsp" %>
    </footer>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
