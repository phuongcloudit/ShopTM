<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Edit Product <small>Preview</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li><a href="#">Product</a></li>
		<li class="active">Edit</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<!-- SELECT2 EXAMPLE -->
	<form action="" method="post" enctype="multipart/form-data">
		<div class="box box-primary">
			<div class="box-header with-border">
				<h3 class="box-title">Edit Product</h3>
			</div>
			<!-- /.box-header -->
			<div class="box-body">
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label>Name</label> <input type="text" class="form-control"
								placeholder="" value="${objP.name }" name="name">
						</div>
						<div class="form-group">
							<label>Category</label> <select class="form-control select2"
								style="width: 100%;" name="">
								<c:forEach items="${listCat }" var="objCat">
								<option>${objCat.cname }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label>Price</label>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="fa fa-dollar"></i>
								</div>
								<input type="text" class="form-control" value="${objP.price }" name="price">
									<div class="input-group-addon">
									<span>VNĐ</span>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label>Quantity</label> <input type="text" class="form-control"
								placeholder="" value="${objP.quantity }" name="quantity">
						</div>
						   <div class="form-group">
                  <label>Description</label>
                  <textarea name="description" class="form-control" rows="3" placeholder="Enter ...">${objP.description }</textarea>
                </div>

					</div>
					<!-- /.col -->
					<div class="col-md-6">

						<div class="form-group">
							<label>Image</label> <input type="file" name="hinhanh">
							
							<p class="help-block">Example block-level help text here.</p>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"> Delete image
							</label>
						</div>

					</div>
					<!-- /.col -->
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
