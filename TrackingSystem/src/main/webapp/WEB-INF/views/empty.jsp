<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<head>
	<title>Dashboard</title>
	<c:import url="/css"></c:import>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <c:import url="/header"></c:import>
  <c:import url="/menu"></c:import>
  <div class="content-wrapper">
    <section class="content-header">
      <h1>
        Empty
        <small>Description</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href='<s:url value="/dashboard"></s:url>'><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Empty</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
		<button type="button" class="btn pull-right btn-success"><i class="fa fa-plus"></i>&emsp;New Insert</button>
		<hr/>
		<div class="box">
            <div class="box-header">
              <h3 class="box-title">Data Table With Full Features</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Rendering engine</th>
                  <th>Browser</th>
                  <th>Platform(s)</th>
                  <th>Engine version</th>
                  <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                
                
                
                <tr>
                  <td>Trident</td>
                  <td>Internet
                    Explorer 4.0
                  </td>
                  <td>Win 95+</td>
                  <td> 4</td>
                  <td>
                  	<a href="" class="btn btn-warning"><i class="fa fa-edit"></i>&emsp;Update</a>
                  	<a href="" onclick="return deleteItem('This ${atalay } deleted ?')" class="btn btn-danger"><i class="fa fa_fw fa-trash"></i>&emsp;Delete</a>
                  </td>
                </tr>
                
                
                
                </tbody>
                <tfoot>
                <tr>
                  <th>Rendering engine</th>
                  <th>Browser</th>
                  <th>Platform(s)</th>
                  <th>Engine version</th>
                  <th>Actions</th>
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
            </div>

            <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Quick Example</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form">
              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Email address</label>
                  <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
              </div>
            </form>
          </div>
            
            
          
    </section>
    
  </div>
<c:import url="/footer"></c:import>
  <div class="control-sidebar-bg"></div>
</div>
<c:import url="/js"></c:import>

</body>
</html>
    