<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Edit Category <small>Preview</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li><a href="#">Category</a></li>
		<li class="active">Add</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<!-- SELECT2 EXAMPLE -->
	<form action="" method="post">
		<div class="box box-primary">
			<div class="box-header with-border">
				<h3 class="box-title">Edit Category</h3>
			</div>
			<!-- /.box-header -->
			<div class="box-body">
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							<label>Name</label> <input type="text" class="form-control"
								placeholder="" name="cname" value="${objCat.cname }">
						</div>
						

					</div>
				</div>
				<!-- /.row -->
			</div>
			<!-- /.box-body -->
			<div class="box-footer">
				<input type="submit" class="btn btn-primary" value="Submit">
				<input type="reset" class="btn bg-green" value="Reset">
			</div>
		</div>

	</form>





	<!--/.col (right) -->
	<!-- /.row -->
</section>
<!-- /.content -->
