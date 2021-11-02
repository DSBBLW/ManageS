<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Preskool - Transport</title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" href="assets/img/favicon.png">
	
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,500;0,600;0,700;1,400&display=swap">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

		<!-- Datatables CSS -->
		<link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>
		
		<!-- Main Wrapper -->
        <div class="main-wrapper">
		
			<!-- Header -->
            <div class="header">
			
				<!-- Logo -->
                <div class="header-left">
                    <a href="index.jsp" class="logo">
						<img src="assets/img/logo.png" alt="Logo">
					</a>
					<a href="index.jsp" class="logo logo-small">
						<img src="assets/img/logo-small.png" alt="Logo" width="30" height="30">
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
							<span class="user-img"><img class="rounded-circle" src="assets/img/profiles/avatar-01.jpg" width="31" alt="Ryan Taylor"></span>
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
								<a href="index.jsp"><i class="fas fa-th-large"></i> <span>指示板</span></a>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-user-graduate"></i> <span> 学生</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="students.jsp">学生列表</a></li>
									<li><a href="student-details.jsp">学生信息</a></li>
									<li><a href="add-student.jsp">添加学生</a></li>
									<li><a href="edit-student.jsp">编辑学生</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-chalkboard-teacher"></i> <span> 教师</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="teachers.jsp">教师列表</a></li>
									<li><a href="teacher-details.jsp">教师信息</a></li>
									<li><a href="add-teacher.jsp">添加教师</a></li>
									<li><a href="edit-teacher.jsp">编辑教师</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-building"></i> <span> 部门</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="departments.jsp">部门列表</a></li>
									<li><a href="add-department.jsp">添加部门</a></li>
									<li><a href="edit-department.jsp">编辑部门</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-book-reader"></i> <span>专业</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="subjects.jsp">专业列表</a></li>
									<li><a href="add-subject.jsp">添加专业</a></li>
									<li><a href="edit-subject.jsp">编辑专业</a></li>
								</ul>
							</li>

							<li class="menu-title"> 
								<span>管理</span>
							</li>

							<li class="submenu">
								<a href="#"><i class="fas fa-file-invoice-dollar"></i> <span>账目</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="fees-collections.jsp">收集费用</a></li>
									<li><a href="expenses.jsp">费用</a></li>
									<li><a href="salary.jsp">工资</a></li>
									<li><a href="add-fees-collection.jsp">增加费用</a></li>
									<li><a href="add-expenses.jsp">添加费用</a></li>
									<li><a href="add-salary.jsp">增加工资</a></li>
								</ul>
							</li>
							<li> 
								<a href="holiday.jsp"><i class="fas fa-holly-berry"></i> <span>假期</span></a>
							</li>
							<li> 
								<a href="fees.jsp"><i class="fas fa-comment-dollar"></i> <span>费用</span></a>
							</li>
							<li> 
								<a href="exam.jsp"><i class="fas fa-clipboard-list"></i> <span>考试名单</span></a>
							</li>
							<li> 
								<a href="event.jsp"><i class="fas fa-calendar-day"></i> <span>事件</span></a>
							</li>
							<li> 
								<a href="time-table.jsp"><i class="fas fa-table"></i> <span>时间表</span></a>
							</li>
							<li> 
								<a href="library.jsp"><i class="fas fa-book"></i> <span>图书馆</span></a>
							</li>

							<li class="menu-title"> 
								<span>页面</span>
							</li>

							<li class="submenu">
								<a href="#"><i class="fas fa-shield-alt"></i> <span>身份验证</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="login.jsp">登录</a></li>
									<li><a href="register.jsp">注册</a></li>
									<li><a href="forgot-password.jsp">忘记了密码</a></li>
									<li><a href="error-404.jsp">错误页面</a></li>
								</ul>
							</li>
							<li> 
								<a href="blank-page.jsp"><i class="fas fa-file"></i> <span>空白页</span></a>
							</li>

							<li class="menu-title"> 
								<span>其他人</span>
							</li>

							<li> 
								<a href="sports.jsp"><i class="fas fa-baseball-ball"></i> <span>体育</span></a>
							</li>
							<li> 
								<a href="hostel.jsp"><i class="fas fa-hotel"></i> <span>旅馆</span></a>
							</li>
							<li class="active"> 
								<a href="transport.jsp"><i class="fas fa-bus"></i> <span>运输</span></a>
							</li>
							<li class="menu-title"> 
								<span>用户界面接口</span>
							</li>
							<li> 
								<a href="components.jsp"><i class="fas fa-vector-square"></i> <span>组件</span></a>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-columns"></i> <span>形式</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="form-basic-inputs.jsp">基本输入</a></li>
									<li><a href="form-input-groups.jsp">输入组 </a></li>
									<li><a href="form-horizontal.jsp">水平的形式</a></li>
									<li><a href="form-vertical.jsp">垂直形式</a></li>
									<li><a href="form-mask.jsp">形式掩盖</a></li>
									<li><a href="form-validation.jsp">表单验证</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-table"></i> <span>表</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="tables-basic.jsp">基本表</a></li>
									<li><a href="data-tables.jsp">数据表</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="javascript:void(0);"><i class="fas fa-code"></i> <span>多层次</span> <span class="menu-arrow"></span></a>
								<ul>
									<li class="submenu">
										<a href="javascript:void(0);"> <span>1级</span> <span class="menu-arrow"></span></a>
										<ul>
											<li><a href="javascript:void(0);"><span>2级</span></a></li>
											<li class="submenu">
												<a href="javascript:void(0);"> <span>2级</span> <span class="menu-arrow"></span></a>
												<ul>
													<li><a href="javascript:void(0);">3级</a></li>
													<li><a href="javascript:void(0);">3级</a></li>
												</ul>
											</li>
											<li><a href="javascript:void(0);"> <span>2级</span></a></li>
										</ul>
									</li>
									<li>
										<a href="javascript:void(0);"> <span>1级</span></a>
									</li>
								</ul>
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
								<h3 class="page-title">运输</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.jsp">指示板</a></li>
									<li class="breadcrumb-item active">运输</li>
								</ul>
							</div>
							<div class="col-auto text-right float-right ml-auto">
								<a href="#" class="btn btn-outline-primary mr-2"><i class="fas fa-download"></i> Download</a>
								<a href="add-transport.jsp" class="btn btn-primary"><i class="fas fa-plus"></i></a>
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
													<th>Route Name</th>
													<th>Vehicle Number</th>
													<th>Driver Name</th>
													<th>Driver License</th>
													<th>Contact Number</th>
													<th>Driver Address</th>
													<th class="text-right">Action</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>New Cross</td>
													<td>TN 43 AS 5263</td>
													<td>Steve</td>
													<td>REDH968532</td>
													<td>+91 8974158962</td>
													<td>152, South Pole, 2nd Street, 3rd Cross</td>
													<td class="text-right">
														<div class="actions">
															<a href="edit-transport.jsp" class="btn btn-sm bg-success-light mr-2">
																<i class="fas fa-pen"></i>
															</a>
															<a href="#" class="btn btn-sm bg-danger-light">
																<i class="fas fa-trash"></i>
															</a>
														</div>
													</td>
												</tr>
												<tr>
													<td>North Pole</td>
													<td>TN 34 DB 5847</td>
													<td>Akbar</td>
													<td>RGTH958932</td>
													<td>+91 8596841252</td>
													<td>253, 2nd Street, 3rd Crosst</td>
													<td class="text-right">
														<div class="actions">
															<a href="edit-transport.jsp" class="btn btn-sm bg-success-light mr-2">
																<i class="fas fa-pen"></i>
															</a>
															<a href="#" class="btn btn-sm bg-danger-light">
																<i class="fas fa-trash"></i>
															</a>
														</div>
													</td>
												</tr>
												<tr>
													<td>South Wales</td>
													<td>TN 34 AK 6789</td>
													<td>Joseph</td>
													<td>DLFH985632</td>
													<td>+91 9658741526</td>
													<td>741, East Road, 2nd Street</td>
													<td class="text-right">
														<div class="actions">
															<a href="edit-transport.jsp" class="btn btn-sm bg-success-light mr-2">
																<i class="fas fa-pen"></i>
															</a>
															<a href="#" class="btn btn-sm bg-danger-light">
																<i class="fas fa-trash"></i>
															</a>
														</div>
													</td>
												</tr>
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
			<!-- /Page Wrapper -->
			
        </div>
		<!-- /Main Wrapper -->
		
		<!-- jQuery -->
        <script src="assets/js/jquery-3.5.1.min.js"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		
		<!-- Slimscroll JS -->
        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

		<!-- Datatables JS -->
		<script src="assets/plugins/datatables/datatables.min.js"></script>
		
		<!-- Custom JS -->
		<script src="assets/js/script.js"></script>
    </body>
</html>
