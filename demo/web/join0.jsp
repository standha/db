<%--
  Created by IntelliJ IDEA.
  User: cys10
  Date: 2023-03-23
  Time: 오후 6:32
  To change this template use File | Settings | File Templates.
--%>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<html>
<head>
  <title>푸렌드</title>
  <style>
    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
    }

    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style>
</head>
<body>
<div class="container">
  <div class="input-form-backgroud row">
    <div class="input-form col-md-12 mx-auto">
      <h4 class="mb-3">회원가입</h4>
      <form class="validation-form" novalidate>
        <div class="mb-3">
            <label for="name">이름</label>
            <input type="text" class="form-control" id="name" placeholder="" value="" required>
            <div class="invalid-feedback">
              이름을 입력해주세요.
            </div>
        </div>

        <div class="mb-3">
          <label for="email">이메일</label>
          <input type="email" class="form-control" id="email" placeholder="fooriend@example.com" required>
          <div class="invalid-feedback">
            이메일을 입력해주세요.
          </div>
        </div>

        <div class="mb-3">
          <label for="password">비밀번호</label>
          <input type="text" class="form-control" id="password" placeholder="****" required>
          <div class="invalid-feedback">
            비밀번호를 입력해주세요.
          </div>
        </div>

        <div class="mb-3">
          <label for="password ok">비밀번호 확인  <span class="text-muted">&nbsp;</span>    </label>
          <input type="text" class="form-control" id="password ok" placeholder="****" required>
        </div>
        <hr class="mb-4">
        <div class="custom-control custom-checkbox">
          <input type="checkbox" class="custom-control-input" id="aggrement" required>
          <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
        </div>
        <div class="mb-4"></div>
        <button class="btn btn-primary btn-lg btn-block" href="login.jsp" type="submit" >가입 완료</button>
      </form>
    </div>
  </div>
</div>
<script>
  window.addEventListener('load', () => {
    const forms = document.getElementsByClassName('validation-form');

    Array.prototype.filter.call(forms, (form) => {
      form.addEventListener('submit', function (event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }

        form.classList.add('was-validated');
      }, false);
    });
  }, false);
</script>
</body>
</html>
