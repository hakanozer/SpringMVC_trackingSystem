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
        Update Product
        <small>you can update your products in here</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href='<s:url value="/dashboard"></s:url>'><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Upadate Product</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
		
		
		
		

            
            
        <div class="box">
           
            
         
            <div class="box box-primary">
           
            <!-- /.box-header -->
            <!-- form start -->
            <div id="insertForm" >
            
              <div class="box-body">
              
                <div class="form-group" >
                
                <input value="${product.pid}" id="pid" type="hidden">
                  <label for="exampleInputEmail1">Product Name</label>
                  <input value="${product.pname}" id="pname" type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter product name">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Number Of Products</label>
                  <input value="${product.pnumber}" id="pnumber" type="text" onkeypress="return isNumberKey(event)" class="form-control" id="exampleInputEmail1" placeholder="Enter number of products">
                </div>
                <div class="form-group">
                <label>Category Name</label>
                <select class="form-control select2" style="width: 100%;" tabindex="-1" aria-hidden="false">
                  <option id="pcategory" selected="selected">${product.pcategory}</option>
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
                  <textarea  id="pdescription" style="resize : none" class="form-control" placeholder="Product description">${product.pdescription}</textarea>
                </div>
                <div class="form-group">
                <label>Purchased Company</label>
                <select class="form-control select2" style="width: 100%;" tabindex="-1" aria-hidden="false">
                  <option id="pcompany" selected="selected">${product.pcompany}</option>
                  <option id="pcompany">1</option>
                  <option id="pcompany">1</option>
                  <option id="pcompany">1</option>
                  <option id="pcompany">1</option>
                  <option id="pcompany">1</option>
                  <option id="pcompany">1</option>
                </select>
                
              </div>
                <div class="form-group">
                  <label " for="exampleInputEmail1">Purchase Price</label>
                  
                  <input value="${product.pprice}" id="pprice" type="text" onkeypress="return isNumberKey(event)" style="width: 30%;" class="form-control" id="exampleInputEmail1" placeholder="Enter purchase price">
                  
                </div>
             
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <a id="btnUpdate" onclick="checkInputUpdate()"  class="btn btn-warning"><i class="fa fa-edit"></i>&emsp;Update</a>
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