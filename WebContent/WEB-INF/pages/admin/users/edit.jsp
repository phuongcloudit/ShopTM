<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Edit user <small>Preview</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li><a href="#">User</a></li>
		<li class="active">Edit</li>
	</ol>
</section>
<!-- Main content -->
<section class="content">
	<!-- SELECT2 EXAMPLE -->
	<form action="" method="post">
		<div class="box box-primary">
			<div class="box-header with-border">
				<h3 class="box-title">Edit user</h3>
			</div>
			<!-- /.box-header -->
			<div class="box-body">
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label>Full Name</label> <input type="text" class="form-control"
								placeholder="" value="${objU.fullname }" name="fullname">
						</div>
						<div class="form-group">
							<label>Email</label> <input type="text" class="form-control"
								placeholder="" value="${objU.email }" name="email">
						</div>
						<div class="form-group">
							<label>Password</label> <input type="password"
								class="form-control" placeholder="" name="password">
						</div>
						<div class="form-group">
							<label>Confirm password</label> <input type="password"
								class="form-control" placeholder="" name="password1">
						</div>

					</div>
					<!-- /.col -->
					<div class="col-md-6">
						<div class="form-group">
							<label>Image</label> <input type="file">

							<p class="help-block">Example block-level help text here.</p>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"> Delete image
							</label>
						</div>

						<div class="form-group">
							<label>Address</label> <input type="text" class="form-control"
								placeholder="" name="address" value="${objU.address }">
						</div>
						<div class="form-group">
							<label>Phone Number</label> <input type="text"
								class="form-control" placeholder="" name="phone"
								value="${objU.phone }">
						</div>
						<div class="form-group">
							<label>Level</label> <select class="form-control select2"
								style="width: 100%;" name="level">
								<option selected="selected">Alabama</option>
								<option>Alaska</option>
							</select>
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
