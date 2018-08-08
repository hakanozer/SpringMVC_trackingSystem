<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Log in</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  
  <link rel="stylesheet" href='<s:url value="resources/bower_components/bootstrap/dist/css/bootstrap.min.css"></s:url>'>
  <!-- Font Awesome -->
  
  <link rel="stylesheet" href='<s:url value="resources/bower_components/font-awesome/css/font-awesome.min.css"></s:url>'>
  <!-- Ionicons -->
  
  <link rel="stylesheet" href='<s:url value="resources/bower_components/Ionicons/css/ionicons.min.css"></s:url>'>
  <!-- Theme style -->
  
  <link rel="stylesheet" href='<s:url value="resources/dist/css/AdminLTE.min.css"></s:url>'>
  <!-- iCheck -->
  
  <link rel="stylesheet" href='<s:url value="resources/plugins/iCheck/square/blue.css"></s:url>'>

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <style>
    .example-modal .modal {
      position: relative;
      top: auto;
      bottom: auto;
      right: auto;
      left: auto;
      display: block;
      z-index: 1;
    }

    .example-modal .modal {
      background: transparent !important;
    }
  </style>
</head>
<body class="hold-transition login-page">

<div class="register-box">
  <div class="register-logo">
    <a href='<s:url value="/"></s:url>'><b>Tracking</b>System</a>
  </div>

  <div class="register-box-body">
    <p class="login-box-msg">Register a new membership</p>

    <form action='<s:url value="/userRegister"></s:url>' method="post">
      <div class="form-group has-feedback">
        <input name="aname" type="text" class="form-control" placeholder="Name" required="required">
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input name="asurname" type="text" class="form-control" placeholder="Surname" required="required">
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input name="amail" type="email" class="form-control" placeholder="Email" required="required">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input name="apassword" type="password" class="form-control" placeholder="Password" required="required">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label>
              <input type="checkbox"> I agree to the <a href="#" data-toggle="modal" data-target="#modal-default">terms</a>
            </label>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" class="btn btn-primary btn-block btn-flat" id="checkBtn">Register</button>
        </div>
        <!-- /.col -->
      </div>
    </form>


    <a href='<s:url value="/"></s:url>' class="text-center">I already have a membership</a>
  </div>
  <!-- /.form-box -->
</div>

        <div class="modal fade" id="modal-default">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Default Modal</h4>
              </div>
              <div class="modal-body">
                <p>One fine body&hellip;</p>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->




<!-- /.login-box -->

<!-- jQuery 3 -->

<script src='<s:url value="resources/bower_components/jquery/dist/jquery.min.js"></s:url>'></script>
<!-- Bootstrap 3.3.7 -->

<script src='<s:url value="resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></s:url>'></script>
<!-- iCheck -->

<script src='<s:url value="resources/plugins/iCheck/icheck.min.js"></s:url>'></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' /* optional */
    });
  });
</script>

<script type="text/javascript">
$(document).ready(function () {
    $('#checkBtn').click(function() {
      checked = $("input[type=checkbox]:checked").length;

      if(!checked) {
        alert("You must tick up to checkbox.");
        return false;
      }

    });
});

</script>


</body>
</html>
