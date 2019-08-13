<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<section class="content-header">
	<h1>
		Category <small>preview of simple tables</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active"><a href="#">Category</a></li>
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
		<div class="col-md-12">
			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">
						<a class="btn btn-block btn-primary"
							href="${pageContext.request.contextPath }/admin/category/add"><i
							class="fa fa-plus"></i> Add new</a>
					</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<table class="table table-bordered">
						<tr>
							<th style="width: 10px">#</th>
							<th style="width: 40px">ID</th>
							<th>Name</th>
							<th style="width: 100px"></th>
						</tr>
						<c:forEach items="${listCat }" var="objCat">
						<tr>
							<td>#</td>
							<td>${objCat.id }</td>
							<td>${objCat.cname }</td>
							<td>
								<div class="btn-group">
									<a class="btn btn-default bg-blue" href="${pageContext.request.contextPath }/admin/category/edit/${objCat.id}"><i class="fa fa-edit"></i></a>
                      <a onclick="return confirm('Are you sure?')" class="btn btn-default bg-red" href="${pageContext.request.contextPath }/admin/category/del/${objCat.id}"><i class="fa fa-remove"></i></a>
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


			<!-- /.box -->
		</div>
		<!-- /.col -->

		<!-- /.col -->
	</div>
	<!-- /.row -->

</section>