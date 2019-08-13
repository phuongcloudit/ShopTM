<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        All Product
        <small>advanced tables</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Product</li>
      </ol>
      <hr>
	<c:if test="${not empty msg }">
	<div class="alert alert-success">
		<strong>${msg }</strong>
	</div>
</c:if>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">
                    <a class="btn btn-block btn-primary" href="${pageContext.request.contextPath }/admin/product/add"><i class="fa fa-plus"></i> Add new</a>
                  </h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
 				<th style="width: 10px">ID</th>
                  <th>Name</th>
                  <th>Category</th>
                  <th>Price</th>
                  <th style="width: 20px">Quantity</th>
                  <th>Picture</th>
                  <th style="width: 60px"></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${listProduct }" var="objP">
                <tr>
                  <td>${objP.id }</td>
                  <td>${objP.name }</td>
                  <td>${objP.cname }</td>
                  <td>${objP.price }</td>
                  <td>${objP.quantity }</td>
                  <td><img src="${pageContext.request.contextPath }/files/${objP.picture }" height="50" width="40" /></td>
                   <td>
                  	<div class="btn-group">
                      <a class="btn btn-default bg-blue" href="${pageContext.request.contextPath }/admin/product/edit/${objP.id}"><i class="fa fa-edit"></i></a>
                      <a onclick="return confirm('Are you sure?')" class="btn btn-default bg-red" href="${pageContext.request.contextPath }/admin/product/del/${objP.id}"><i class="fa fa-remove"></i></a>
                    </div>
                  </td>
                </tr>
                
                </c:forEach>
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->