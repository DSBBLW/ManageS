<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <head>
    <script type="text/javascript" src="assets/js/jquery-1.12.4.js"></script>
	 <script type="text/javascript">
	 				$(function(){
						select();
					});
					function select(){
      				$.ajax({
    				url:'holiday',
    				type:'get',
    				success:function(data){
        			var aaa="";
       				$(data).each(function(i,item){
       					aaa+="<tr><td>"+item.id+"</td>";
      					aaa+="<td>"+item.holidayname+"</td>";
      					aaa+="<td>"+item.type+"</td>";
       					aaa+="<td>"+item.startdate+"</td>";
       					aaa+="<td>"+item.enddate+"</td></tr>";
       				$("#tab").html(aaa);
      				});
    				   }
      				});
      				}
	 </script>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Preskool - Students</title>
		<!-- Favicon -->
        <link rel="shortcut icon" href="assets/img/favicon.png">
	
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,500;0,600;0,700;1,400&display=swap">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
    <script type="text/javascript" src="assets/js/jquery-1.12.4.js"></script></head>
    <body>
		
		<!-- Main Wrapper -->
        <div class="main-wrapper">
		
			<!-- Header -->
            <div class="header">
			
				<!-- Logo -->
                <div class="header-left">
                    <a href="index.jsp" class="logo">
						<img src="/ManageS/assets/img/logo.png" alt="Logo">
					</a>
					<a href="index.jsp" class="logo logo-small">
						<img src="/ManageS/assets/img/logo-small.png" alt="Logo" width="30" height="30">
					</a>
                </div>
				<!-- /Logo -->
				
				<a href="javascript:void(0);" id="toggle_btn">
					<i class="fas fa-align-left"></i>
				</a>
				
				<!-- Search Bar -->
				<div class="top-nav-search">
					<form>
						<input type="text" class="form-control" placeholder="Search here">
						<button class="btn" type="submit"><i class="fas fa-search"></i></button>
					</form>
				</div>
				<!-- /Search Bar -->
				
				<!-- Mobile Menu Toggle -->
				<a class="mobile_btn" id="mobile_btn">
					<i class="fas fa-bars"></i>
				</a>
				<!-- /Mobile Menu Toggle -->
				
				<!-- Header Right Menu -->
				<ul class="nav user-menu">

					<!-- Notifications -->
					<li class="nav-item dropdown noti-dropdown">
						<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
							<i class="far fa-bell"></i> <span class="badge badge-pill">3</span>
						</a>
						<div class="dropdown-menu notifications">
							<div class="topnav-dropdown-header">
								<span class="notification-title">Notifications</span>
								<a href="javascript:void(0)" class="clear-noti"> Clear All </a>
							</div>
							<div class="noti-content">
								<ul class="notification-list">
									<li class="notification-message">
										<a href="#">
											<div class="media">
												<span class="avatar avatar-sm">
													<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/profiles/avatar-02.jpg">
												</span>
												<div class="media-body">
													<p class="noti-details"><span class="noti-title">Carlson Tech</span> has approved <span class="noti-title">your estimate</span></p>
													<p class="noti-time"><span class="notification-time">4 mins ago</span></p>
												</div>
											</div>
										</a>
									</li>
									<li class="notification-message">
										<a href="#">
											<div class="media">
												<span class="avatar avatar-sm">
													<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/profiles/avatar-11.jpg">
												</span>
												<div class="media-body">
													<p class="noti-details"><span class="noti-title">International Software Inc</span> has sent you a invoice in the amount of <span class="noti-title">$218</span></p>
													<p class="noti-time"><span class="notification-time">6 mins ago</span></p>
												</div>
											</div>
										</a>
									</li>
									<li class="notification-message">
										<a href="#">
											<div class="media">
												<span class="avatar avatar-sm">
													<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/profiles/avatar-17.jpg">
												</span>
												<div class="media-body">
												<p class="noti-details"><span class="noti-title">John Hendry</span> sent a cancellation request <span class="noti-title">Apple iPhone XR</span></p>
												<p class="noti-time"><span class="notification-time">8 mins ago</span></p>
												</div>
											</div>
										</a>
									</li>
									<li class="notification-message">
										<a href="#">
											<div class="media">
												<span class="avatar avatar-sm">
													<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/profiles/avatar-13.jpg">
												</span>
												<div class="media-body">
													<p class="noti-details"><span class="noti-title">Mercury Software Inc</span> added a new product <span class="noti-title">Apple MacBook Pro</span></p>
													<p class="noti-time"><span class="notification-time">12 mins ago</span></p>
												</div>
											</div>
										</a>
									</li>
								</ul>
							</div>
							<div class="topnav-dropdown-footer">
								<a href="#">View all Notifications</a>
							</div>
						</div>
					</li>
					<!-- /Notifications -->
					
					<!-- User Menu -->
					<li class="nav-item dropdown has-arrow">
						<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
							<span class="user-img"><img class="rounded-circle" src="/ManageS/assets/img/profiles/avatar-01.jpg" width="31" alt="Ryan Taylor"></span>
						</a>
						<div class="dropdown-menu">
							<div class="user-header">
								<div class="avatar avatar-sm">
									<img src="assets/img/profiles/avatar-01.jpg" alt="User Image" class="avatar-img rounded-circle">
								</div>
								<div class="user-text">
									<h6>Ryan Taylor</h6>
									<p class="text-muted mb-0">Administrator</p>
								</div>
							</div>
							<a class="dropdown-item" href="profile.jsp">My Profile</a>
							<a class="dropdown-item" href="inbox.jsp">Inbox</a>
							<a class="dropdown-item" href="login.jsp">Logout</a>
						</div>
					</li>
					<!-- /User Menu -->
					
				</ul>
				<!-- /Header Right Menu -->
				
            </div>
			<!-- /Header -->
			
			<!-- Sidebar -->
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
					<div id="sidebar-menu" class="sidebar-menu">
						<ul>
							<li class="menu-title"> 
								<span>主菜单</span>
							</li>
							<li> 
								<!-- 仪表板 --><a href="index.jsp"><i class="fas fa-th-large"></i> <span>仪表板</span></a>
							</li>
							<li class="submenu">
								<!-- 学生 --><a href="#"><i class="fas fa-user-graduate"></i> <span> 学生</span> <span class="menu-arrow"></span></a>
								<ul>
									<!-- 学生列表 --><li><a href="students.jsp" >学生列表</a></li>
									<!-- 添加学生 --><li><a href="add-student.jsp">添加学生</a></li>
									<!-- 编辑学生 --><li><a href="edit-student.jsp">编辑学生</a></li>
								</ul>
							</li>
							<li class="submenu">
								<!-- 教师 --><a href="#"><i class="fas fa-chalkboard-teacher"></i> <span> 教师</span> <span class="menu-arrow"></span></a>
								<ul>
									<!-- 教师列表 --><li><a href="teachers.jsp">教师列表</a></li>
									<!-- 增加教师 --><li><a href="add-teacher.jsp">增加教师</a></li>
									<!-- 编辑教师 --><li><a href="edit-teacher.jsp">编辑教师</a></li>
								</ul>
							</li>
							<li class="submenu">
								<!-- 专业 --><a href="#"><i class="fas fa-book-reader"></i> <span>专业</span> <span class="menu-arrow"></span></a>
								<ul>
									<!-- 专业列表 --><li><a href="subjects.jsp">专业列表</a></li>
									<!-- 添加专业 --><li><a href="add-subject.jsp">添加专业</a></li>
									<!-- 编辑专业 --><li><a href="edit-subject.jsp">编辑专业</a></li>
								</ul>
							</li>

							<li class="menu-title"> 
								<span>管理</span>
							</li>
							<li class="submenu">
								<!-- 账目 --><a href="#"><i class="fas fa-file-invoice-dollar"></i> <span>账目</span> <span class="menu-arrow"></span></a>
								<ul>
									<li class="submenu">
										<!-- 技术部 --><a href="#"> <span>技术部</span> <span class="menu-arrow"></span></a>
										<ul>
											<!-- 技术部业务 --><li><a href="skill.jsp"><span>技术部业务</span></a></li>
											<!-- 添加业务 --><li><a href="add-skill.jsp"><span>添加业务</span></a></li>
										</ul>
									</li>
									<li>
										<!-- 团建 --><a href="expenses.jsp"> <span>团建</span></a>
									</li>
								</ul>
							</li>
							
							<li  class="active"> 
								<!-- 假期 --><a href="holiday.jsp"><i class="fas fa-holly-berry"></i> <span>假期</span></a>
							</li>
							<li class="submenu">
								<!-- 课表 --><a href="course.jsp"><i class="fas fa-book"></i> <span>课表</span> <span class="menu-arrow"></span></a>
								<ul>
									<!-- 课表 --><li><a href="course-time.jsp">课程表</a></li>
									<!-- 排课 --><li><a href="add-course-time.jsp">排课</a></li>
								</ul>
							</li>
							<li class="submenu">
								<!-- 考试 --><a href="#"><i class="fas fa-clipboard-list"></i> <span>考试</span> <span class="menu-arrow"></span></a>
								<ul>
									<!-- 考试成绩 --><li><a href="exam.jsp">考试成绩</a></li>
									<!-- 添加成绩 --><li><a href="add-exam.jsp">添加成绩</a></li>
									
								</ul>
							</li>
							<li> 
								<!-- 考试时间 --><a href="event.jsp"><i class="fas fa-calendar-day"></i> <span>考试时间</span></a>
							</li>
						
						</ul>
					</div>
                </div>
            </div>
			<!-- /Sidebar -->
			
			<!-- Page Wrapper -->
            <div class="page-wrapper">
                <div class="content container-fluid">
				
					<!-- Page Header -->
					<div class="page-header">
						<div class="row align-items-center">
							<div class="col">
								<h3 class="page-title">假期</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="students.jsp">仪表板</a></li>
									<li class="breadcrumb-item active">假期</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
				
					<div class="row">
						<div class="col-sm-12">
						
							<div class="card card-table">
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-hover table-center mb-0 datatable">
											<thead>
												<tr>
													<th>编号</th>
													<th>假期</th>
													<th>放假时长</th>
													<th>开始时间</th>
													<th>返校时间</th>
												</tr>
											</thead>
											<tbody id="tab">
												
											</tbody>
										</table>
									</div>
								</div>
							</div>							
						</div>					
					</div>					
				</div>

				<!-- Footer -->
				<footer>
					<p>Copyright © 2020By <a href="http://www.bootstrapmb.com/">Dreamguys.</a></p>					
				</footer>
				<!-- /Footer -->	
			</div>
		<!-- /Main Wrapper -->
		
		<!-- jQuery -->
        <script src="assets/js/jquery-3.5.1.min.js"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		
		<!-- Slimscroll JS -->
		<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		
		<!-- Custom JS -->
		<script src="assets/js/script.js"></script>
    </body>
</html>