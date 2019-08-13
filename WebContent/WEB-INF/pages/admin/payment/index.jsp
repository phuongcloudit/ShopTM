<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Payment
        <small>advanced tables</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Payment</li>
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
                    <a class="btn btn-block btn-primary" href="${pageContext.request.contextPath }/admin/payment/add"><i class="fa fa-plus"></i> Add new</a>
                  </h3>
              <div class="box-tools">
                <div class="input-group input-group-sm" style="width: 150px;">
                  <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

                  <div class="input-group-btn">
                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tr>
                  <th>#</th>
                  <th>ID</th>
                  <th>Payment Name</th>
                  <th>Action</th>
                </tr>
                <c:forEach items="${listPay }" var="pay">
                <tr>
                  <td>#</td>
                  <td>${pay.id }</td>
                  <td>${pay.name }</td>
                   <td>
                  	<div class="btn-group">
                      <a class="btn btn-default bg-blue" href="${pageContext.request.contextPath }/admin/payment/edit/${pay.id}"><i class="fa fa-edit"></i></a>
                      <a onclick="return confirm('Are you sure?')" class="btn btn-default bg-red" href="${pageContext.request.contextPath }/admin/payment/del/${pay.id}" ><i class="fa fa-remove"></i></a>
                    </div>
                  </td>
                </tr>
               </c:forEach>
              </table>
            </div>
          </div>
          <!-- /.box -->
        </div>
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->