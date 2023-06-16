<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>ȸ�� ����</title>
    <link rel="stylesheet" href="/webLib/css/layout.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
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

        .form-group input[type="submit"] {
            background-color: #ffd700;
            color: #fff;
            border: 1px solid #ffd700;
        }

        .form-group input[type="submit"]:hover {
            background-color: #ffdf00;
            border: 1px solid #ffdf00; 
        }
    </style>
</head>
<body>
    <header>
        <jsp:include page="/jsp/include/topMenu.jsp"/>
    </header>
    <section>
        <div class="container">
            <h2>ȸ������</h2>
            <form action="insertuserProcess.do" method="POST">
                <div class="form-group">
                    <label for="id">���̵�:</label>
                    <input type="text" id="id" name="id" class="form-control" required oninvalid="this.setCustomValidity('���̵� �Է����ּ���.')" oninput="this.setCustomValidity('')">
                </div>
                <div class="form-group">
                    <label for="password">��й�ȣ:</label>
                    <input type="password" id="password" name="password" class="form-control" required oninvalid="this.setCustomValidity('��й�ȣ�� �Է����ּ���.')" oninput="this.setCustomValidity('')" placeholder="�ִ� 16�ڸ�">
                </div>
                <div class="form-group">
                    <label for="name">�̸�:</label>
                    <input type="text" id="name" name="name" class="form-control" required oninvalid="this.setCustomValidity('�̸��� �Է����ּ���.')" oninput="this.setCustomValidity('')">
                </div>
                <div class="form-group">
                    <label for="phone">��ȭ��ȣ:</label>
                    <input type="text" id="phone" name="phone" class="form-control" required oninvalid="this.setCustomValidity('��ȭ��ȣ�� �Է����ּ���.')" oninput="this.setCustomValidity('')" placeholder="ex) 010-0000-0000">
                </div>
                <div class="form-group">
                    <label for="birthday">�������:</label>
                    <input type="text" id="birthday" name="birthday" class="form-control datepicker" required oninvalid="this.setCustomValidity('��������� �������ּ���.')" oninput="this.setCustomValidity('')">
                </div>
                <div class="form-group">
                    <input type="submit" value="�����ϱ�" class="btn btn-primary">
                </div>
            </form>
        </div>
    </section>

    <footer>
        <%@ include file="/jsp/include/bottom.jsp" %>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script>
        $(document).ready(function() {
            $('.datepicker').datepicker({
                format: 'yyyymmdd',
                autoclose: true
            });
        });
    </script>
</body>
</html>

