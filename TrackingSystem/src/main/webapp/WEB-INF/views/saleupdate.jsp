<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<head>
	<title>Sales Update</title>
	<c:import url="/css"></c:import>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <c:import url="/header"></c:import>
  <c:import url="/menu"></c:import>
  <div class="content-wrapper">
    <section class="content-header">
      <h1>
        Update Sales
        <small>you can update your sales in here</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href='<s:url value="/dashboard"></s:url>'><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Update Sale</li>
      </ol>
    </section>


            <div id="insertForm" >
              <div class="box-body">
              
              <form action='<s:url value="/cihangir"></s:url>' method="post" class="form">
              <input value="${sale.sid}" name="sid" type="hidden">
                <div class="form-group">
                  <label for="exampleInputEmail1">Sale Name</label>
                  <input value="${sale.sname}" name="sname"  type="text" class="form-control"  placeholder="Enter product name" required="required">
                </div>
                
                  <div class="form-group">
                <label>Product Name</label>
                <select name="sproductid" class="form-control select2" style="width: 100%;" tabindex="-1" aria-hidden="false">
                
                <c:forEach var="item" items= "${lst2}">
                 <option value="${item.pid}">${item.pname}</option>
                </c:forEach>
    			</select>
                </div>
                
                <div class="form-group">
                  <label for="exampleInputEmail1">Number Of Sales</label>
                  <input value="${sale.snumberofsale}" name="snumberofsale"  type="text" onkeypress="return isNumberKey(event)" class="form-control"  placeholder="Enter number of products" required="required">
                </div>
                
                <div class="form-group">
                  <label for="exampleInputEmail1">Sale Description</label>
                  <input value="${sale.sdescription }" name="sdescription"  type="text"  class="form-control"  placeholder="Enter number of products" required="required">
                </div>
 
              

              <div class="box-footer">
                 <button type="submit" class = "btn btn-success">insert</button>
              </div>
            </form>  
            </div>
          </div>
        





  
<c:import url="/footer"></c:import>
  <div class="control-sidebar-bg"></div>
</div>
<c:import url="/js"></c:import>
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
</body>
</html>