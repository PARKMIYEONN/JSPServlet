<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- register.jsp -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>회원가입</title>
    <style>
        .form-group {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        .form-group label {
            width: 100px;
            text-align: right;
            margin-right: 10px;
        }

        .form-group input {
            flex: 1;
            max-width: 200px;
        }
    </style>
</head>
<body>
    <h2>회원가입</h2>
    <form action="insertuserProcess.do" method="POST">
        <div class="form-group">
            <label for="id">아이디:</label>
            <input type="text" id="id" name="id" required>
        </div>
        <div class="form-group">
            <label for="password">비밀번호:</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div class="form-group">
            <label for="name">이름:</label>
            <input type="text" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="phone">전화번호:</label>
            <input type="text" id="phone" name="phone" required>
        </div>
        <div class="form-group">
            <label for="birthday">생일:</label>
            <input type="text" id="birthday" name="birthday" required>
        </div>
        <div>
            <input type="submit" value="가입하기">
        </div>
    </form>
</body>
</html>