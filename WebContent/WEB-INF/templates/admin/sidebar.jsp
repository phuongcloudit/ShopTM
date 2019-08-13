<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="${defines.urlAdmin }/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Alexander Pierce</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li class="active">
          <a href="${pageContext.request.contextPath }/admin">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          </a>
        </li>
         <li>
          <a href="${pageContext.request.contextPath }/admin/category">
            <i class="fa fa-envelope"></i> <span>Category</span>
          </a>
        </li>
          <li>
          <a href="${pageContext.request.contextPath }/admin/users">
            <i class="fa fa-envelope"></i> <span>Users</span>
          </a>
        </li>
        <li>
          <a href="${pageContext.request.contextPath }/admin/product">
            <i class="fa fa-edit"></i> <span>Product</span>
          </a>
        </li>
           <li>
          <a href="${pageContext.request.contextPath }/admin/discount">
            <i class="fa fa-edit"></i> <span>Discount code</span>
          </a>
        </li>
           <li>
          <a href="${pageContext.request.contextPath }/admin/order">
            <i class="fa fa-edit"></i> <span>Order</span>
          </a>
        </li>
        <li>
          <a href="${pageContext.request.contextPath }/admin/payment">
            <i class="fa fa-edit"></i> <span>Payment</span>
          </a>
        </li>
        <li>
          <a href="${pageContext.request.contextPath }/admin/slider">
            <i class="fa fa-edit"></i> <span>Sliders</span>
          </a>
        </li>
        
        <li>
          <a href="${pageContext.request.contextPath }/admin/contact">
            <i class="fa fa-calendar"></i> <span>Contact</span>
           
          </a>
        </li>
        <li class="header">LABELS</li>
        <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
