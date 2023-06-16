<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>내정보</title>
    <link rel="stylesheet" href="/webLib/css/layout.css">
    <!-- 추가한 부트스트랩 CSS 링크 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: verdana, sans-serif;
            font-size: 15px;
        }
        
        header {
            margin-top: 1%;
            margin-left: 15%;
            margin-right: 15%;
            min-height: 100px;
            background-color: pink;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        section {
            margin-left: 17%;
            margin-right: 17%;
            min-height: 450px;
            background-color: beige;
            padding: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        footer {
            margin-left: 15%;
            margin-right: 15%;
            background-color: bisque;
            padding: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
        }
        
        h1 {
            text-align: center;
            margin-bottom: 30px;
            font-weight: bold;
            font-size: 24px;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
            text-align: center;
        }
        
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
        }
        
        th {
            background-color: #f9f9f9;
            font-weight: bold;
        }
        
        form {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        
        .btn {
            font-weight: bold;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <header>
        <jsp:include page="/jsp/include/topMypage.jsp" />
    </header>
    <section>
        <div class="container">
            <h1>회원정보</h1>
            <table>
                <tr>
                    <th>회원번호</th>
                    <th>아이디</th>
                    <th>이름</th>
                    <th>전화번호</th>
                    <th>생일</th>
                </tr>
                <tr>
                    <td>${user.no}</td>
                    <td>${user.id}</td>
                    <td>${user.name}</td>
                    <td>${user.phoneNo}</td>
                    <td>${user.birthDay}</td>
                </tr>
            </table>
            <form action="updateinfo.do" method="POST">
                <input type="hidden" name="phone" value="${user.phoneNo}">
                <input type="hidden" name="name" value="${user.name}">
                <input type="hidden" name="" value="${user.birthDay}">
                <button type="submit" class="btn btn-sm btn-warning">정보수정</button>
            </form>
        </div>
    </section>
    <footer>
        <%@ include file="/jsp/include/bottom.jsp" %>
    </footer>
    <!-- 추가한 부트스트랩 JS 스크립트 링크 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>



