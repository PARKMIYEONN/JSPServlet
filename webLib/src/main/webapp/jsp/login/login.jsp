<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>Insert title here</title>
    <link rel="stylesheet" href="/webLib/css/layout.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <style>
        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
        }

        .container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            font-weight: bold;
            width: 70px;
        }

        .form-group input[type="text"],
        .form-group input[type="password"] {
            flex: 1;
            padding: 5px 10px;
            border: 1px solid #ced4da;
            border-radius: 5px;
        }

        .form-group input[type="submit"] {
            width: 100%;
            padding: 8px 10px;
            background-color: #ffd700; /* ����� �迭 */
            color: #fff; /* ���ڻ� */
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-group input[type="submit"]:hover {
            background-color: #ffdf00; /* ����� �迭 (ȣ�� ����) */
        }

        .form-group input:required:invalid {
            border-color: red;
        }

        .form-group input:required:invalid:focus {
            background-color: #ffcccc;
            outline: none;
        }

        .form-group input:required:valid {
            border-color: #ced4da;
        }

        .form-group .error-message {
            color: red;
            font-size: 14px;
            margin-top: 5px;
            display: none;
        }

        .form-group.has-error input:required:invalid {
            border-color: red;
        }

        .form-group.has-error .error-message {
            display: block;
        }
    </style>
    <script>
        window.onload = function () {
            var form = document.getElementById('loginForm');
            form.addEventListener('submit', function (event) {
                if (!form.checkValidity()) {
                    event.preventDefault();
                    event.stopPropagation();
                    form.classList.add('was-validated');
                    form.classList.add('has-error');
                } else {
                    form.classList.remove('has-error');
                }
            }, false);
        };
    </script>
</head>
<body>
    <header>
        <jsp:include page="/jsp/include/topMenu.jsp"/>
    </header>
    <section>
        <div class="container">
            <h2>�α���</h2>
            <form action="loginProcess.do" method="POST" id="loginForm" class="needs-validation">
                <div class="form-group">
                    <label for="id">���̵�:</label>
                    <input type="text" id="id" name="id" class="form-control" required placeholder="���̵� �Է����ּ���.">
                    <div class="invalid-feedback error-message">���̵� �Է����ּ���.</div>
                </div>
                <div class="form-group">
                    <label for="password">��й�ȣ:</label>
                    <input type="password" id="password" name="password" class="form-control" required placeholder="��й�ȣ�� �Է����ּ���.">
                    <div class="invalid-feedback error-message">��й�ȣ�� �Է����ּ���.</div>
                </div>
                <div class="form-group">
                    <input type="submit" value="�α���" class="btn btn-primary">
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
</body>
</html>




