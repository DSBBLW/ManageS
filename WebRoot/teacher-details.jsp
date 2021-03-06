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
        <title>Preskool - Teacher Details</title>
		
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
					<!-- <form>
						<input type="text" class="form-control" placeholder="Search here">
						<button class="btn" type="submit"><i class="fas fa-search"></i></button>
					</form> -->
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
							<i class="far fa-bell"></i> <span class="badge badge-pill"id="num"></span>
						</a>
						<div class="dropdown-menu notifications">
							<div class="topnav-dropdown-header">
								<span class="notification-title">????????????</span>
								<a href="javascript:void(0)" class="clear-noti">???????????? </a>
							</div>
							<div class="noti-content">
								<ul class="notification-list" id="aaaa">
									
									
								</ul>
							</div>
							<div class="topnav-dropdown-footer">
								<a href="#" onclick="bool();">????????????</a>
							</div>
						</div>
					</li>
					<!-- /Notifications -->
					
					<!-- User Menu -->
					<li class="nav-item dropdown has-arrow">
						<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
							
						</a>
						<div class="dropdown-menu">
							<div class="user-header">
								<div class="avatar avatar-sm">
									
								</div>
								<div class="user-text">
									<h6 id="sname"></h6>
									<p class="text-muted mb-0">??????</p>
								</div>
							</div>
							<a class="dropdown-item" href="teacher-details.jsp">????????????</a>
							<a class="dropdown-item" href="teacher-inbox.jsp">????????????</a>
							<a class="dropdown-item" href="login.jsp">??????</a>
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
							<li><a href="teacher-subjects.jsp"><i class="fas fa-book-reader"></i> <span>????????????</span> </a></li>

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
							<li> 
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
				
					<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">??????????????????</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="teachers.jsp">??????</a></li>
									<li class="breadcrumb-item active">??????????????????</li>
								</ul>
							</div>
						</div>
					</div>
					
					<div class="card">
						<div class="card-body">
							<div class="row">
								<div class="col-md-12">
									<div class="about-info">
										<h4>?????????</h4>
										
										<div class="media mt-3">
											<img src="assets/img/user.jpg" class="mr-3" alt="...">
											<div class="media-body">
												<ul>
                                                    <li>
                                                        <span class="title-span">?????? : </span>
                                                        <span class="info-span">????????????</span>
                                                    </li>
                                                    <li>
                                                        <span class="title-span">?????? : </span>
                                                        <span class="info-span">???????????????</span>
                                                    </li>
                                                    <li>
                                                        <span class="title-span">????????? : </span>
                                                        <span class="info-span">+91 89657 48512</span>
                                                    </li>
                                                    <li>
                                                        <span class="title-span">??????: </span>
                                                        <span class="info-span">daisy@gmail.com</span>
                                                    </li>
                                                    <li>
                                                        <span class="title-span">??????: </span>
                                                        <span class="info-span">???</span>
                                                    </li>
                                                    <li>
                                                        <span class="title-span">????????????: </span>
                                                        <span class="info-span">1995???4???22???</span>
                                                    </li>
                                                </ul>
											</div>
										</div>

										<div class="row mt-3">
											<div class="col-md-12">
												<p>??????????????????????????????????? Lorem Ipsum???????????????????????????????????????????????????????????????????????????????????????</p>
											</div>                                            
										</div>
										
										<div class="row follow-sec">
                                            <div class="col-md-4 mb-3">
                                                <div class="blue-box">
                                                    <h3>2850</h3>
                                                    <p>??????</p>
                                                </div>
                                            </div>
                                            <div class="col-md-4 mb-3">
                                                <div class="blue-box">
                                                    <h3>2050</h3>
                                                    <p>??????</p>
                                                </div>
                                            </div>
                                            <div class="col-md-4 mb-3">
                                                <div class="blue-box">
                                                    <h3>2950</h3>
                                                    <p>??????</p>
                                                </div>
                                            </div>
										</div>
										
										<div class="row mt-2">
											<div class="col-md-12">
												<h5>?????????</h5>
												<p>??????Courtage???????????????480???</p>
											</div>                                            
                                        </div>

                                        <div class="row mt-2">
											<div class="col-md-12">
												<h5>????????????</h5>
												<p>??????Courtage???????????????480???</p>
											</div>                                            
                                        </div>
									</div>
								</div>								
							</div>

							<div class="row mt-2">
								<div class="col-md-12">
									<div class="skill-info">
										<h4>??????</h4>
										<p>Lorem Ipsum????????????????????????????????????????????????????????????????????????????????????  </p>
										
										<ul>
                                            <li>
                                                <label>Lorem Ipsum?????????</label>
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%"></div>
                                                </div>
                                            </li>

                                            <li>
                                                <label>Lorem Ipsum?????????</label>
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-striped progress-bar-animated bg-success" role="progressbar" aria-valuenow="69" aria-valuemin="0" aria-valuemax="100" style="width: 69%"></div>
                                                </div>
                                            </li>

                                            <li>
                                                <label>Lorem Ipsum?????????</label>
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-striped progress-bar-animated bg-info" role="progressbar" aria-valuenow="86" aria-valuemin="0" aria-valuemax="100" style="width: 86%"></div>
                                                </div>
                                            </li>

                                            <li>
                                                <label>Lorem Ipsum?????????</label>
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-striped progress-bar-animated bg-warning" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width: 65%"></div>
                                                </div>
                                            </li>                                            
										</ul>
										
										<div class="row mt-3">
											<div class="col-md-12">
												<h5>??????</h5>
												<p class="mt-3">??????xyz????????????????????????</p>
												<p>?????????xyz??????????????????????????????????????????????????? </p>
												<p>??????Abc??????????????????????????????????????????  </p>
												<p>??????Cdm?????????????????????????????????
											</div>                                            
										</div>
										
										<div class="row mt-3">
											<div class="col-md-12">
												<h5>??????</h5>
												<p class="mt-3">????????????????????????</p>
												<p>Lorem Ipsum?????????????????????????????????</p>
												<p>??????????????????????????????????????????  </p>
												<p>Lorem Ipsum?????????????????????????????????</p>
											</div>                                            
                                        </div>
									</div>
								</div>
							</div>

							<div class="row mt-2">
								<div class="col-md-12">
									<div class="skill-info">
										<h4>??????</h4>

										<form>
											<div class="row mt-3">
												<div class="col-12 col-sm-6">  
													<div class="form-group">
														<label>?????????</label>
														<input type="text" class="form-control">
													</div>
												</div>
												<div class="col-12 col-sm-6">  
													<div class="form-group">
														<label>???????????????</label>
														<input type="password" class="form-control">
													</div>
												</div>
												<div class="col-12 col-sm-6">  
													<div class="form-group">
														<label>????????????</label>
														<input type="password" class="form-control">
													</div>
												</div>
												<div class="col-12">
													<button type="submit" class="btn btn-primary">??????</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>				
				</div>
				
				<!-- Footer -->
				<footer>
					<p>Copyright ?? 2020By <a href="http://www.bootstrapmb.com/">Dreamguys.</a></p>					
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
		
		<!-- Custom JS -->
		<script  src="assets/js/script.js"></script>
		
    </body>
</html>