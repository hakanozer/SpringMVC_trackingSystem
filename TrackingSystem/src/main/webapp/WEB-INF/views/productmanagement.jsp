<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<head>
	<title>Product Management</title>
	<c:import url="/css"></c:import>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <c:import url="/header"></c:import>
  <c:import url="/menu"></c:import>
  <div class="content-wrapper">
    <section class="content-header">
      <h1>
        Product Management
        <small>you can manage your products in here</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href='<s:url value="/dashboard"></s:url>'><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Product Management</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
		<a href="#insertForm" type="button" class="btn pull-right btn-success"><i class="fa fa-plus"></i>&emsp;New Insert</a>
		
		<hr/>
		

            
            
        <div class="box">
            <div class="box-header">
              <h3 class="box-title">Product Table</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div id="example2_wrapper" class="dataTables_wrapper form-inline dt-bootstrap"><div class="row"><div class="col-sm-6"></div><div class="col-sm-6"></div></div><div class="row"><div class="col-sm-12"><table id="example2" class="table table-bordered table-hover dataTable" role="grid" aria-describedby="example2_info">
                <table id="productTable"  class="table table-bordered table-striped">
                 <thead>
                <tr role="row" class="odd">
                  <th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column descending" style="width: 179px;" aria-sort="ascending">Product ID</th>
                  <th>Product Name</th>
                  <th>Number Of Products</th>
                  <th>Category Name</th>
                  <th>Product Description</th>
                  <th>Purchased Company</th>
                  <th>Purchase Price</th>
                  <th></th>
                    <th></th>
                </tr>
                </thead>
             <tbody id="rows">
                
                
                <c:forEach items="${products}" var="item">
                <tr role="row" class="odd">
                  <td>${item.pid}</td>
                  <td>${item.pname}</td>
                  <td>${item.pnumber}</td>
                  <td>${item.pcategory}</td>
                  <td>${item.pdescription}</td>
                  <td>${item.pcompany}</td>
                  <td>${item.pprice}</td>
                  
                  <td>
                  
                  	<a href='<s:url value="/updateProduct/${item.pid}"></s:url>'  class="btn btn-warning "><i class="fa fa-edit"></i>&emsp;Update</a>
                  	
                  
                  </td>
                  
                  <td>
                  <a  class="btn btn-danger" href='<s:url value="/deleteProduct/${item.pid}"></s:url>'> <i class="fa fa_fw fa-trash"></i>&emsp;Delete</a>
                 
                  </td>
                </tr>
                
                </c:forEach>
                
                
                
                
                </tbody>
                <tfoot>
                <tr >
                    <th>Product ID</th>
                  <th>Product Name</th>
                  <th>Number Of Products</th>
                  <th>Category Name</th>
                  <th>Product Description</th>
                  <th>Purchased Company</th>
                  <th>Purchase Price</th>
                  
                  <th> <a href="javascript:printData('productTable')" class="btn btn-info"><i class="fa fa-fw fa-print"></i>&emsp;Print</a></th>
                </tr>
                </tfoot>
              </table>
               </div></div><div class="row"><div class="col-sm-5"><div class="dataTables_info" id="example2_info" role="status" aria-live="polite">Showing ${rowcount} entries</div></div><div class="col-sm-7"><div class="dataTables_paginate paging_simple_numbers" id="example2_paginate"></div></div></div></div>
            </div>
            <!-- /.box-body -->
          </div>
            
         
            <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">New Product Insert</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <div id="insertForm" >
              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Product Name</label>
                  <input id="pname" type="text" class="form-control"  placeholder="Enter product name" required="required">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Number Of Products</label>
                  <input id="pnumber" role="form" data-toggle="validator" type="text" onkeypress="return isNumberKey(event)" class="form-control" id="exampleInputEmail1" placeholder="Enter number of products">
                </div>
                <div class="form-group">
                <label>Category Name</label>
                <select class="form-control select2" style="width: 100%;" tabindex="-1" aria-hidden="false">
                  <option id="pcategory" selected="selected">1</option>
                  <option id="pcategory">1</option>
                  <option id="pcategory">1</option>
                  <option id="pcategory">1</option>
                  <option id="pcategory">1</option>
                  <option id="pcategory">1</option>
                  <option id="pcategory">1</option>
                </select>
                
              </div>
                
                <div class="form-group">
                  <label for="exampleInputPassword1">Product Description</label>
                  <textarea id="pdescription" style="resize : none" class="form-control" placeholder="Product description"></textarea>
                </div>
                <div class="form-group">
                <label>Purchased Company</label>
                <select class="form-control select2" style="width: 100%;" tabindex="-1" aria-hidden="false">
                  <option id="pcompany" selected="selected">1</option>
                  <option id="pcompany">1</option>
                  <option id="pcompany">1</option>
                  <option id="pcompany">1</option>
                  <option id="pcompany">1</option>
                  <option id="pcompany">1</option>
                  <option id="pcompany">1</option>
                </select>
                
              </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Purchase Price</label>
                  
                  <input id="pprice" type="text" onkeypress="return isNumberKey(event)" style="width: 30%;" class="form-control" id="exampleInputEmail1" placeholder="Enter purchase price">
                  
                </div>
                 
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <a id="btnSave" onclick="checkInput()" class="btn btn-success"><i class="fa fa-plus"></i>&emsp;Insert</a>
              </div>
            </div>
          </div>
        
    </section>
    
  </div>
<c:import url="/footer"></c:import>
  <div class="control-sidebar-bg"></div>
</div>
<c:import url="/js"></c:import>

</body>
</html>