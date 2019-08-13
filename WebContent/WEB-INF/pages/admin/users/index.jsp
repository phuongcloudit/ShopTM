<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        User
        <small>advanced tables</small>
      </h1>
      <hr>
      <c:if test="${not empty msg }">
		<div class="alert alert-success">
			<strong>${msg }</strong>
		</div>
	</c:if>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">User</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
     <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Responsive Hover Table</h3>
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
                  <th>ID</th>
                  <td></td>
                  <th>Full Name</th>
                  <th>Email</th>
                  <th>Address</th>
                  <th>Phone Number</th>
                  <th>Date created</th>
                  <th>Level</th>
                  <th>Action</th>
                </tr>
                <c:forEach items="${listUser }" var="objU">
                <tr>
                  <td>${objU.id }</td>
                  <td></td>
                  <td>${objU.email }</td>
                  <td>${objU.fullname }</td>
                  <td>${objU.address }</td>
                  <td>${objU.phone }</td>
                  <td>${objU.date_created }</td>
                  <td><span class="label label-success">Approved</span></td>
                   <td>
                  	<div class="btn-group">
                      <a class="btn btn-default bg-blue" href="${pageContext.request.contextPath }/admin/users/${objU.id }/edit"><i class="fa fa-edit"></i></a>
                      <a onclick="return confirm('Are you sure?')" class="btn btn-default bg-red" href="${pageContext.request.contextPath }/admin/users/${objU.id }/del"><i class="fa fa-remove"></i></a>
                    </div>
                  </td>
                </tr>
               </c:forEach>
              </table>
            </div>
            <!-- /.box-body -->
             <div class="box-footer clearfix">
              <ul class="pagination pagination-sm no-margin pull-right">
                <li><a href="#">&laquo;</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">&raquo;</a></li>
              </ul>
            </div>
          </div>
          <!-- /.box -->
        </div>
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->