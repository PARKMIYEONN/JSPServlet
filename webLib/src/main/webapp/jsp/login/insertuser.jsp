<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- register.jsp -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>ȸ������</title>
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
    <h2>ȸ������</h2>
    <form action="insertuserProcess.do" method="POST">
        <div class="form-group">
            <label for="id">���̵�:</label>
            <input type="text" id="id" name="id" required>
        </div>
        <div class="form-group">
            <label for="password">��й�ȣ:</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div class="form-group">
            <label for="name">�̸�:</label>
            <input type="text" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="phone">��ȭ��ȣ:</label>
            <input type="text" id="phone" name="phone" required>
        </div>
        <div class="form-group">
            <label for="birthday">����:</label>
            <input type="text" id="birthday" name="birthday" required>
        </div>
        <div>
            <input type="submit" value="�����ϱ�">
        </div>
    </form>
</body>
</html>