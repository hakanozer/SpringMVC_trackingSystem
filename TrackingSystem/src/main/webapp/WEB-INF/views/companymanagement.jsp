<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<head>
	<title>Company Management</title>
	<c:import url="/css"></c:import>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <c:import url="/header"></c:import>
  <c:import url="/menu"></c:import>
  <div class="content-wrapper">
    <section class="content-header">
      <h1>
        Company Management
        <small>you can add your company</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href='<s:url value="/dashboard"></s:url>'><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Company Management</li>
      </ol>
    <div class="box">
            <div class="box-header">
              <h3 class="box-title">Company Table</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div id="example2_wrapper" class="dataTables_wrapper form-inline dt-bootstrap"><div class="row"><div class="col-sm-6"></div><div class="col-sm-6"></div></div><div class="row"><div class="col-sm-12"><table id="example2" class="table table-bordered table-hover dataTable" role="grid" aria-describedby="example2_info">
                <table id="productTable"  class="table table-bordered table-striped">
                 <thead>
                <tr role="row" class="odd">
                  
                  
                  <th>Company Name</th>
                  <th>Company Mail</th>
                  <th>Company number</th>
                  <th>Company adress</th>
                
                  <th></th>
                    <th></th>
                </tr>
                </thead>
             <tbody id="rows">
                
                
                <c:forEach items="${cp}" var="item">
                <tr role="row" class="odd">
                  <td>${item.compname}</td>
                  <td>${item.compmail}</td>
                  <td>${item.compno}</td>
                  <td>${item.compadress}</td>
                
            
                </tr>
                
                </c:forEach>
                
                
                
            
                </tr>
                </tfoot>
              </table>
               </div></div><div class="row"><div class="col-sm-5"><div class="dataTables_info" id="example2_info" role="status" aria-live="polite">Showing ${rowcount} entries</div></div><div class="col-sm-7"><div class="dataTables_paginate paging_simple_numbers" id="example2_paginate"></div></div></div></div>
            </div>
            <!-- /.box-body -->
          </div>

           <form action='<s:url value="/companyInsert"></s:url>' method="post">
  <div class="form-group">
    <label for="Companyname">Company Name</label>
    <input type="text" class="form-control" name="compname" placeholder="Enter company name">
   
  </div>
  <div class="form-group">
    <label for="company mail">Company Mail</label>
    <input type="text" class="form-control" name="compmail" placeholder="Enter company mail">
  </div>
  <div class="form-group">
    <label for="company number">Company Number</label>
    <input type="text" class="form-control" name="compno" placeholder="Enter company number">
  </div>
   <div class="form-group">
    <label for="comp adress">Company adress</label>
    <input type="text" class="form-control" name="compadress" placeholder="Enter company adress">
  </div>
  <button type="submit" class="btn btn-primary">insert</button>
</form>
            
      
  </div>
<c:import url="/footer"></c:import>
  <div class="control-sidebar-bg"></div>
</div>
<c:import url="/js"></c:import>

</body>
</html>