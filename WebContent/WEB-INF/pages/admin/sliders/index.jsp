
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Sliders
        <small>advanced tables</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Slider</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
     <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">
                    <a class="btn btn-block btn-primary" href="${pageContext.request.contextPath }/admin/slider/add"><i class="fa fa-plus"></i> Add new</a>
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
                  <th>Link</th>
                  <th>Picture</th>
                  <th>Action</th>
                </tr>
                <tr>
                  <td>183</td>
                  <td>11-7-2014</td>
                  <td><span class="label label-success">Approved</span></td>
                   <td>
                  	<div class="btn-group">
                      <a class="btn btn-default bg-blue" href="${pageContext.request.contextPath }/admin/users/1/edit"><i class="fa fa-edit"></i></a>
                      <a class="btn btn-default bg-red" href="${pageContext.request.contextPath }/admin/users/1/del"><i class="fa fa-remove"></i></a>
                    </div>
                  </td>
                </tr>
               
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