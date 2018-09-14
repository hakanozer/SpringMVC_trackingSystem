<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<head>
	<title>Sales Management</title>
	<c:import url="/css"></c:import>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <c:import url="/header"></c:import>
  <c:import url="/menu"></c:import>
  <div class="content-wrapper">
    <section class="content-header">
      <h1>
        Sales Management
        <small>you can manage your sales in here</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href='<s:url value="/dashboard"></s:url>'><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Sales Management</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
		<a href="#insertForm" type="button" class="btn pull-right btn-success"><i class="fa fa-plus"></i>&emsp;New Insert</a>
		
		<hr/>
		

            
            
        <div class="box">
            <div class="box-header">
              <h3 class="box-title">Sales Table</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div id="example2_wrapper" class="dataTables_wrapper form-inline dt-bootstrap"><div class="row"><div class="col-sm-6"></div><div class="col-sm-6"></div></div><div class="row"><div class="col-sm-12"><table id="example2" class="table table-bordered table-hover dataTable" role="grid" aria-describedby="example2_info">
                <table id="salesTable"  class="table table-bordered table-striped">
                 <thead>
                <tr role="row" class="odd">
                  <th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column descending" style="width: 179px;" aria-sort="ascending">Sale ID</th>
                  
                  <th>SALE NAME</th>
                  <th>NUMBER OF SALES</th>
                  <th>PRODUCT NAME</th>
                  <th>SALE DISCRIPTION</th>
                  <th>DATE</th>
                  <th></th>
                    <th></th>
                </tr>
                </thead>
             <tbody id="rows">
                
                
                <c:forEach items="${lst}" var="item">
                <tr role="row" class="odd">
                  <td>${item.sid}</td>
                  <td>${item.sname}</td>
                  <td>${item.snumberofsale}</td>
                  <td>${item.sproductname}</td>
                  <td>${item.sdescription}</td>
                  <td>${item.sdate}</td>
                  
                  
                  <td>
                  
                  	<a href='<s:url value="/saleUpdate/${item.sid}"></s:url>'  class="btn btn-warning "><i class="fa fa-edit"></i>&emsp;Update</a>
                  	
                  
                  </td>
                  
                  <td>
                  <a href='<s:url value="/deleteSale/${item.sid}"></s:url>' type="button" class="btn btn-danger" > <i class="fa fa_fw fa-trash"></i>&emsp;Delete</a>
                 
                  </td>
                </tr>
                
                </c:forEach>
                
                
                
                
                </tbody>
                <tfoot>
                <tr >
           
           
                             <th>SALE ID</th>
                  <th>SALE NAME</th>
                  <th>NUMBER OF SALES</th>
                  <th>PRODUCT NAME</th>
                  <th>SALE DISCRIPTION</th>
                  <th>DATE</th>
           
           
                  
                  
                </tr>
                </tfoot>
              </table>
               </div></div><div class="row"><div class="col-sm-5"><div class="dataTables_info" id="example2_info" role="status" aria-live="polite">Showing 1 to 10 of ${rowcount} entries</div></div><div class="col-sm-7"><div class="dataTables_paginate paging_simple_numbers" id="example2_paginate"></div></div></div></div>
            </div>
            <!-- /.box-body -->
          </div>
            
         
            <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">New Sale Insert</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
         <form action='<s:url value="/saleInsert"></s:url>' method="post" class="form">
            <div id="insertForm" >
              <div class="box-body">
              
                <div class="form-group">
                  <label for="exampleInputEmail1">Sale Name</label>
                  <input name="sname" id="sname" type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter product name" required="required">
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
                  <input name="snumberofsale" id="snumberofsale" type="text" onkeypress="return isNumberKey(event)" class="form-control" id="exampleInputEmail1" placeholder="Enter number of products" required="required">
                </div>
                
                <div class="form-group">
                  <label for="exampleInputEmail1">Sale Description</label>
                  <input name="sdescription" id="sdescription" type="text"  class="form-control" id="exampleInputEmail1" placeholder="Enter number of products" required="required">
                </div>
 
              <!-- /.box-body -->

              <div class="box-footer">
                 <button type= "submit" class = "btn btn-success">insert</button>
              </div>
            </div>
          </div>
    </form>    
    </section>
    
    
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