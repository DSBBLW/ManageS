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
        <title>Preskool - Inbox</title>
		
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
							<li> 
								<a href="teacher-index.jsp"><i class="fas fa-th-large"></i> <span>?????????</span></a>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-user-graduate"></i> <span> ??????</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="teacher-students.jsp">????????????</a></li>
									<li><a href="teacher-add-student.jsp">????????????</a></li>
									<li><a href="teacher-edit-student.jsp">????????????</a></li>
								</ul>
							</li>
									<li><a href="teacher-subjects.jsp" class="active"><i class="fas fa-book-reader"></i> <span>????????????</span> </a></li>
							

							<li class="menu-title"> 
								<span>??????</span>
							</li>
							<li> 
								<a href="teacher-holiday.jsp"><i class="fas fa-holly-berry"></i> <span>??????</span></a>
							</li>
							
							<li class="submenu">
								<!-- ?????? --><a href="#"><i class="fas fa-clipboard-list"></i> <span>??????</span> <span class="menu-arrow"></span></a>
								<ul>
									<!-- ???????????? --><li><a href="teacher-student-exam.jsp">????????????</a></li>
									<!-- ???????????? --><li><a href="teacher-add-exam.jsp">????????????</a></li>
									
								</ul>
							</li>	
							<li > 
								<a  href="teacher-student-event.jsp"><i class="fas fa-calendar-day"></i> <span>????????????</span></a>
							</li>
							<li> 
								<a  href="teacher-inbox.jsp"><i class="fas fa-calendar-day"></i> <span>??????Email</span></a>
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
							<div class="col">
								<h3 class="page-title">??????Email</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="teacher-index.jsp">?????????</a></li>
									<li class="breadcrumb-item active">??????Email</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
					<div class="row">
						<div class="col-lg-3 col-md-4">
							
							<ul class="inbox-menu">
								<li class="active">
									<a href="#"><i class="fas fa-download"></i> ????????? <span class="mail-count">(5)</span></a>
								</li>
								<li>
									<a href="#"><i class="far fa-star"></i> ??????</a>
								</li>
								<li>
									<a href="#"><i class="far fa-paper-plane"></i> ?????????</a>
								</li>
								
								<li>
									<a href="#"><i class="far fa-trash-alt"></i> ?????????</a>
								</li>
							</ul>
						</div>
						
						<div class="col-lg-9 col-md-8">
							<div class="card">
								<div class="card-body">
									<div class="email-header">
										<div class="row">
											<div class="col top-action-left">
												<div class="float-left">
													<div class="btn-group dropdown-action">
														<button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown">?????? <i class="fas fa-angle-down"></i></button>
														<div class="dropdown-menu">
															<a class="dropdown-item" href="#">??????</a>
															<div class="dropdown-divider"></div> 
															<a class="dropdown-item" href="#">??????</a>
															<a class="dropdown-item" href="#">??????</a>
														</div>
													</div>
													<div class="btn-group dropdown-action">
														<button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown">??????<i class="fas fa-angle-down"></i></button>
														<div class="dropdown-menu">
															<a class="dropdown-item" href="#">??????</a>
															<a class="dropdown-item" href="#">??????</a>
															<div class="dropdown-divider"></div> 
															<a class="dropdown-item" href="#">???????????????</a>
															<div class="dropdown-divider"></div> 
															<a class="dropdown-item" href="#">??????</a>
														</div>
													</div>
													
													
													<div class="btn-group dropdown-action mail-search">
														<input type="text" placeholder="????????????" class="form-control search-message">
													</div>
												</div>
											</div>
											<div class="col-auto top-action-right">
												<div class="text-right">
													<button type="button" title="??????" data-toggle="tooltip" class="btn btn-white d-none d-md-inline-block"><i class="fas fa-sync-alt"></i></button>
													<div class="btn-group">
														<a class="btn btn-white"><i class="fas fa-angle-left"></i></a>
														<a class="btn btn-white"><i class="fas fa-angle-right"></i></a>
													</div>
												</div>
												
											</div>
										</div>
									</div>
									<div class="email-content">
										<div class="table-responsive">
											<table class="table table-inbox table-hover">
												<thead>
													<tr>
														<th colspan="6">
															<input type="checkbox" class="checkbox-all">
														</th>
													</tr>
												</thead>
												<tbody>
													<tr class="unread clickable-row">
														<td>
															<input type="checkbox" class="checkmail">
														</td>
														<td><span class="mail-important"><i class="fas fa-star starred"></i></span></td>
														<td class="name">John Doe</td>
														<td class="subject">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</td>
														<td><i class="fas fa-paperclip"></i></td>
														<td class="mail-date">13:14</td>
													</tr>
													<tr class="unread clickable-row">
														<td>
															<input type="checkbox" class="checkmail">
														</td>
														<td><span class="mail-important"><i class="far fa-star"></i></span></td>
														<td class="name">Envato Account</td>
														<td class="subject">Important account security update from Envato</td>
														<td></td>
														<td class="mail-date">8:42</td>
													</tr>
													<tr class="clickable-row">
														<td>
															<input type="checkbox" class="checkmail">
														</td>
														<td><span class="mail-important"><i class="far fa-star"></i></span></td>
														<td class="name">Twitter</td>
														<td class="subject">HRMS Bootstrap Admin Template</td>
														<td></td>
														<td class="mail-date">30 Nov</td>
													</tr>
													<tr class="unread clickable-row">
														<td>
															<input type="checkbox" class="checkmail">
														</td>
														<td><span class="mail-important"><i class="far fa-star"></i></span></td>
														<td class="name">Richard Parker</td>
														<td class="subject">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</td>
														<td></td>
														<td class="mail-date">18 Sep</td>
													</tr>
													<tr class="clickable-row">
														<td>
															<input type="checkbox" class="checkmail">
														</td>
														<td><span class="mail-important"><i class="far fa-star"></i></span></td>
														<td class="name">John Smith</td>
														<td class="subject">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</td>
														<td></td>
														<td class="mail-date">21 Aug</td>
													</tr>
													<tr class="clickable-row">
														<td>
															<input type="checkbox" class="checkmail">
														</td>
														<td><span class="mail-important"><i class="far fa-star"></i></span></td>
														<td class="name">me, Robert Smith (3)</td>
														<td class="subject">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</td>
														<td></td>
														<td class="mail-date">1 Aug</td>
													</tr>
													<tr class="unread clickable-row">
														<td>
															<input type="checkbox" class="checkmail">
														</td>
														<td><span class="mail-important"><i class="far fa-star"></i></span></td>
														<td class="name">Codecanyon</td>
														<td class="subject">Welcome To Codecanyon</td>
														<td></td>
														<td class="mail-date">Jul 13</td>
													</tr>
													<tr class="clickable-row">
														<td>
															<input type="checkbox" class="checkmail">
														</td>
														<td><span class="mail-important"><i class="far fa-star"></i></span></td>
														<td class="name">Richard Miles</td>
														<td class="subject">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</td>
														<td><i class="fas fa-paperclip"></i></td>
														<td class="mail-date">May 14</td>
													</tr>
													<tr class="unread clickable-row">
														<td>
															<input type="checkbox" class="checkmail">
														</td>
														<td><span class="mail-important"><i class="far fa-star"></i></span></td>
														<td class="name">John Smith</td>
														<td class="subject">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</td>
														<td></td>
														<td class="mail-date">11/11/16</td>
													</tr>
													<tr class="clickable-row">
														<td>
															<input type="checkbox" class="checkmail">
														</td>
														<td><span class="mail-important"><i class="fas fa-star starred"></i></span></td>
														<td class="name">Mike Litorus</td>
														<td class="subject">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</td>
														<td></td>
														<td class="mail-date">10/31/16</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				
				</div>			
			</div>
			<!-- /Main Wrapper -->
		
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
		<script  src="assets/js/script.js"></script>
		
    </body>
</html>
