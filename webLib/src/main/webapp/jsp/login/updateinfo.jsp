<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/webLib/css/layout.css">
<!-- �߰��� ��Ʈ��Ʈ�� CSS ��ũ -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMypage.jsp"/>
	</header>
<section>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h1>ȸ������ ����</h1>
                <form action="/webLib/updateinfoprocess.do" method="POST">
                    <div class="form-group">
                        <label for="id">���̵�:</label>
                        <input type="text" class="form-control" id="id" name="id" value="${loginUser.id}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="pw">������ ��й�ȣ:</label>
                        <input type="password" class="form-control" id="pw" name="pw">
                    </div>
                    <div class="form-group">
                        <label for="pwcheck">��й�ȣ Ȯ��:</label>
                        <input type="password" class="form-control" id="pwcheck" name="pwcheck">
                    </div>
                    <div class="form-group">
                        <label for="name">�̸�:</label>
                        <input type="text" class="form-control" id="name" name="name" value="${loginUser.name}">
                    </div>
                    <div class="form-group">
                        <label for="phone">�ڵ��� ��ȣ:</label>
                        <input type="text" class="form-control" id="phone" name="phone" value="${loginUser.phoneNo}">
                    </div>
                    <div class="form-group">
                        <label for="birthDay">�������:</label>
                        <input type="date" class="form-control" id="birthDay" name="birthDay" value="${loginUser.birthDay}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="password">���� ��й�ȣ:</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                        <small class="text-muted">* �����Ϸ��� ���� ��й�ȣ�� �Է��ϼ���.</small>
                    </div>
                    <div class="text-center">
                        <input type="submit" class="btn btn-warning btn-block" value="����">
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<footer>
    <%@ include file="/jsp/include/bottom.jsp" %>
</footer>
<!-- �߰��� ��Ʈ��Ʈ�� JS ��ũ��Ʈ ��ũ -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

