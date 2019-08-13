<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>

<!-- header -->
<tiles:insertAttribute name="header"></tiles:insertAttribute>
<!-- /.header -->
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
  <tiles:insertAttribute name="sidebar"></tiles:insertAttribute>
    </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <tiles:insertAttribute name="body"></tiles:insertAttribute>
  </div>
  <!-- /.content-wrapper -->
 <tiles:insertAttribute name="footer"></tiles:insertAttribute>