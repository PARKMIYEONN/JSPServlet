<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="EUC-KR">
  <title>Insert title here</title>
  <link rel="stylesheet" href="/webLib/css/layout.css">
</head>
<body>
  <header>
    <jsp:include page="/jsp/include/topMypage.jsp"/>
  </header>
<section>
  <table class="transparent-table">
    <caption><h1>ȸ������ ����</h1></caption>
    <form action="/webLib/updateinfoprocess.do" method="post">
      <tr>
        <td>���̵�:</td>
        <td>${loginUser.id}</td>
        <input type="hidden" name="id" value="${loginUser.id}">
      </tr>
      <tr>
        <td>������ ��й�ȣ:</td>
        <td><input type="password" name="pw"></td>
      </tr>
      <tr>
        <td>��й�ȣ Ȯ��:</td>
        <td><input type="password" name="pwcheck"></td>
      </tr>
      <tr>
        <td>�̸�:</td>
        <td><input type="text" name="name" value="${loginUser.name}"></td>
      </tr>
      <tr>
        <td>�ڵ��� ��ȣ:</td>
        <td><input type="text" name="phone" value="${loginUser.phoneNo}"></td>
      </tr>
      <tr>
        <td>����:</td>
        <td>"${loginUser.birthDay}"</td>
      </tr>
      <tr>
        <td>���� ��й�ȣ:</td>
        <td><input type="password" name="password"></td>
      </tr>
      <tr>
        <td colspan="2" class="center">
          <input type="submit" value="����">
        </td>
      </tr>
    </form>
  </table>
</section>


  <footer>
    <%@ include file="/jsp/include/bottom.jsp" %>
  </footer>
</body>
</html>

