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
        <title>Preskool - Dashboard</title>
		
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
								<span>?????????</span>
							</li>
							<li class="active"> 
								<!-- ????????? --><a href="index.jsp"><i class="fas fa-th-large"></i> <span>?????????</span></a>
							</li>
							<li class="submenu">
								<!-- ?????? --><a href="#"><i class="fas fa-user-graduate"></i> <span> ??????</span> <span class="menu-arrow"></span></a>
								<ul>
									<!-- ???????????? --><li><a href="students.jsp">????????????</a></li>
									<!-- ???????????? --><li><a href="add-student.jsp">????????????</a></li>
									<!-- ???????????? --><li><a href="edit-student.jsp">????????????</a></li>
								</ul>
							</li>
							<li class="submenu">
								<!-- ?????? --><a href="#"><i class="fas fa-chalkboard-teacher"></i> <span> ??????</span> <span class="menu-arrow"></span></a>
								<ul>
									<!-- ???????????? --><li><a href="teachers.jsp">????????????</a></li>
									<!-- ???????????? --><li><a href="add-teacher.jsp">????????????</a></li>
									<!-- ???????????? --><li><a href="edit-teacher.jsp">????????????</a></li>
								</ul>
							</li>
							
							<li class="submenu">
								<!-- ?????? --><a href="#"><i class="fas fa-book-reader"></i> <span>??????</span> <span class="menu-arrow"></span></a>
								<ul>
									<!-- ???????????? --><li><a href="subjects.jsp">????????????</a></li>
									<!-- ???????????? --><li><a href="add-subject.jsp">????????????</a></li>
									<!-- ???????????? --><li><a href="edit-subject.jsp">????????????</a></li>
								</ul>
							</li>

							<li class="menu-title"> 
								<span>??????</span>
							</li>
							<li class="submenu">
								<!-- ?????? --><a href="#"><i class="fas fa-file-invoice-dollar"></i> <span>??????</span> <span class="menu-arrow"></span></a>
								<ul>
									<li class="submenu">
										<!-- ????????? --><a href="#"> <span>?????????</span> <span class="menu-arrow"></span></a>
										<ul>
											<!-- ??????????????? --><li><a href="skill.jsp"><span>???????????????</span></a></li>
											<!-- ???????????? --><li><a href="add-skill.jsp"><span>????????????</span></a></li>
										</ul>
									</li>
									<li>
										<!-- ?????? --><a href="expenses.jsp"> <span>??????</span></a>
									</li>
								</ul>
							</li>
							
							<li> 
								<!-- ?????? --><a href="holiday.jsp"><i class="fas fa-holly-berry"></i> <span>??????</span></a>
							</li>
							<li class="submenu">
								<!-- ?????? --><a href="course.jsp"><i class="fas fa-book"></i> <span>??????</span> <span class="menu-arrow"></span></a>
								<ul>
									<!-- ?????? --><li><a href="course-time.jsp">?????????</a></li>
									<!-- ?????? --><li><a href="add-course-time.jsp">??????</a></li>
								</ul>
							</li>
							<li class="submenu">
								<!-- ?????? --><a href="#"><i class="fas fa-clipboard-list"></i> <span>??????</span> <span class="menu-arrow"></span></a>
								<ul>
									<!-- ???????????? --><li><a href="exam.jsp">????????????</a></li>
									<!-- ???????????? --><li><a href="add-exam.jsp">????????????</a></li>
									
								</ul>
							</li>
							
							<li> 
								<!-- ???????????? --><a href="event.jsp"><i class="fas fa-calendar-day"></i> <span>????????????</span></a>
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
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">?????????????????????!</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item active">?????????</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->

					<!-- Overview Section -->
					<div class="row">
						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card bg-one">
								<div class="card-body">
									<div class="db-widgets d-flex justify-content-between align-items-center">
										<div class="db-icon">
											<i class="fas fa-user-graduate"></i>
										</div>
										<div class="db-info">
											<h3>1162</h3>
											<h6>??????</h6>
										</div>										
									</div>
								</div>
							</div>
						</div>

						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card bg-two">
								<div class="card-body">
									<div class="db-widgets d-flex justify-content-between align-items-center">
										<div class="db-icon">
											<i class="fas fa-crown"></i>
										</div>
										<div class="db-info">
											<h3>50+</h3>
											<h6>??????</h6>
										</div>										
									</div>
								</div>
							</div>
						</div>

						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card bg-three">
								<div class="card-body">
									<div class="db-widgets d-flex justify-content-between align-items-center">
										<div class="db-icon">
											<i class="fas fa-building"></i>
										</div>
										<div class="db-info">
											<h3>5+</h3>
											<h6>??????</h6>
										</div>										
									</div>
								</div>
							</div>
						</div>

						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card bg-four">
								<div class="card-body">
									<div class="db-widgets d-flex justify-content-between align-items-center">
										<div class="db-icon">
											<i class="fas fa-file-invoice-dollar"></i>
										</div>
										<div class="db-info">
											<h3>$193</h3>
											<h6>??????</h6>
										</div>										
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /Overview Section -->				

					<div class="row">
						
						
						<div class="col-md-12 col-lg-6">
						
							<!-- Student Chart -->
							
							<!-- /Student Chart -->							
						</div>	
					</div>
					
					<div class="row">
						<div class="col-md-6 d-flex">						
							<!-- Star Students -->
							<div class="card flex-fill">
								<div class="card-header">
									<h5 class="card-title">????????????</h5>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-hover table-center">
											<thead class="thead-light">
												<tr>
													<th>ID</th>
													<th>??????</th>
													<th>??????</th>
													<th>????????????</th>
													<th class="text-right">???</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="text-nowrap">
														<div>1145</div>
													</td>
													<td class="text-nowrap">?????????</td>
													<td class="text-center">?????????</td>
													<td class="text-center">15000</td>
													<td class="text-right">
														<div>2019</div>
													</td>
												</tr>
												<tr>
													<td class="text-nowrap">
														<div>1379</div>
													</td>
													<td class="text-nowrap">?????????</td>
													<td class="text-center">?????????</td>
													<td class="text-center">10000</td>
													<td class="text-right">
														<div>2018</div>
													</td>
												</tr>
												<tr>
													<td class="text-nowrap">
														<div>1661</div>
													</td>
													<td class="text-nowrap">??????</td>
													<td class="text-center">UI??????</td>
													<td class="text-center">13000</td>
													<td class="text-right">
														<div>2019</div>
													</td>
												</tr>
												<tr>
													<td class="text-nowrap">
														<div>1871</div>
													</td>
													<td class="text-nowrap">?????????</td>
													<td class="text-center">????????????</td>
													<td class="text-center">16000</td>
													<td class="text-right">
														<div>2020</div>
													</td>
												</tr>
												<tr>
													<td class="text-nowrap">
														<div>2100</div>
													</td>
													<td class="text-nowrap">?????????</td>
													<td class="text-center">????????????</td>
													<td class="text-center">20000</td>
													<td class="text-right">
														<div>2021</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- /Star Students -->							
						</div>

						<div class="col-md-6 d-flex">						
							<!-- Feed Activity -->
							<div class="card flex-fill">
								<div class="card-header">
									<h5 class="card-title">????????????</h5>
								</div>
								<div class="card-body">
									<ul class="activity-feed">
										<li class="feed-item">
											<div class="feed-date">4???13???</div>
											<span class="feed-text"><a>??????</a>?????????????????? <a>???????????????</a></span>
										</li>
										<li class="feed-item">
											<div class="feed-date">5???21???</div>
											<span class="feed-text"><a>?????????</a>???????????? <a href="invoice.jsp">???????????????</a></span>
										</li>
										<li class="feed-item">
											<div class="feed-date">6???2???</div>
											<span class="feed-text"><a>?????????</a>???????????????<a href="profile.jsp">???????????????????????????</a></span>
										</li>
										<li class="feed-item">
											<div class="feed-date">1???1???</div>
											<span class="feed-text"><a>??????</a> ???????????????<a>???????????????</a></span>
										</li>
										<li class="feed-item">
											<div class="feed-date">11???21???</div>
											<span class="feed-text"><a>?????????</a>??????????????????<a href="invoice.jsp">???????????????</a></span>
										</li>
									</ul>
								</div>
							</div>
							<!-- /Feed Activity -->							
						</div>
					</div>
				</div>
				
				<!-- Footer -->
				<footer>
					<p>??????????????????<strong>??????</strong>?????? ?? 2021</p>					
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
		
		<!-- Chart JS -->
		<script src="assets/plugins/apexchart/apexcharts.min.js"></script>
		<script src="assets/plugins/apexchart/chart-data.js"></script>
		
		<!-- Custom JS -->
		<script  src="assets/js/script.js"></script>
		
    </body>
</html>