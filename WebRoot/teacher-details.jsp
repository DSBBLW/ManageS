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
								<span class="notification-title">我的邮箱</span>
								<a href="javascript:void(0)" class="clear-noti">清除全部 </a>
							</div>
							<div class="noti-content">
								<ul class="notification-list" id="aaaa">
									
									
								</ul>
							</div>
							<div class="topnav-dropdown-footer">
								<a href="#" onclick="bool();">标为已读</a>
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
									<p class="text-muted mb-0">老师</p>
								</div>
							</div>
							<a class="dropdown-item" href="teacher-details.jsp">我的信息</a>
							<a class="dropdown-item" href="teacher-inbox.jsp">我的邮箱</a>
							<a class="dropdown-item" href="login.jsp">注销</a>
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
								<a href="teacher-index.jsp"><i class="fas fa-th-large"></i> <span>仪表板</span></a>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-user-graduate"></i> <span> 学生</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="teacher-students.jsp">学生列表</a></li>
									<li><a href="teacher-add-student.jsp">添加学生</a></li>
									<li><a href="teacher-edit-student.jsp">编辑学生</a></li>
								</ul>
							</li>
							<li><a href="teacher-subjects.jsp"><i class="fas fa-book-reader"></i> <span>专业列表</span> </a></li>

							<li class="menu-title"> 
								<span>管理</span>
							</li>
							<li> 
								<a href="teacher-holiday.jsp"><i class="fas fa-holly-berry"></i> <span>假期</span></a>
							</li>
							<li class="submenu">
								<!-- 考试 --><a href="#"><i class="fas fa-clipboard-list"></i> <span>考试</span> <span class="menu-arrow"></span></a>
								<ul>
									<!-- 考试成绩 --><li><a href="teacher-student-exam.jsp">考试成绩</a></li>
									<!-- 添加成绩 --><li><a href="teacher-add-exam.jsp">添加成绩</a></li>
									
								</ul>
							</li>
							<li> 
								<a  href="teacher-student-event.jsp"><i class="fas fa-calendar-day"></i> <span>考试时间</span></a>
							</li>
							<li> 
								<a  href="teacher-inbox.jsp"><i class="fas fa-calendar-day"></i> <span>我的Email</span></a>
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
								<h3 class="page-title">教师详细信息</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="teachers.jsp">教师</a></li>
									<li class="breadcrumb-item active">教师详细信息</li>
								</ul>
							</div>
						</div>
					</div>
					
					<div class="card">
						<div class="card-body">
							<div class="row">
								<div class="col-md-12">
									<div class="about-info">
										<h4>关于我</h4>
										
										<div class="media mt-3">
											<img src="assets/img/user.jpg" class="mr-3" alt="...">
											<div class="media-body">
												<ul>
                                                    <li>
                                                        <span class="title-span">全名 : </span>
                                                        <span class="info-span">黛西公园</span>
                                                    </li>
                                                    <li>
                                                        <span class="title-span">部门 : </span>
                                                        <span class="info-span">计算机科学</span>
                                                    </li>
                                                    <li>
                                                        <span class="title-span">电话号 : </span>
                                                        <span class="info-span">+91 89657 48512</span>
                                                    </li>
                                                    <li>
                                                        <span class="title-span">邮箱: </span>
                                                        <span class="info-span">daisy@gmail.com</span>
                                                    </li>
                                                    <li>
                                                        <span class="title-span">性别: </span>
                                                        <span class="info-span">男</span>
                                                    </li>
                                                    <li>
                                                        <span class="title-span">出生日期: </span>
                                                        <span class="info-span">1995年4月22日</span>
                                                    </li>
                                                </ul>
											</div>
										</div>

										<div class="row mt-3">
											<div class="col-md-12">
												<p>你好，我是黛西·帕克斯。 Lorem Ipsum是印刷排版行业的简单虚拟文本，印刷排版行业的简单虚拟文本。</p>
											</div>                                            
										</div>
										
										<div class="row follow-sec">
                                            <div class="col-md-4 mb-3">
                                                <div class="blue-box">
                                                    <h3>2850</h3>
                                                    <p>点赞</p>
                                                </div>
                                            </div>
                                            <div class="col-md-4 mb-3">
                                                <div class="blue-box">
                                                    <h3>2050</h3>
                                                    <p>回复</p>
                                                </div>
                                            </div>
                                            <div class="col-md-4 mb-3">
                                                <div class="blue-box">
                                                    <h3>2950</h3>
                                                    <p>关注</p>
                                                </div>
                                            </div>
										</div>
										
										<div class="row mt-2">
											<div class="col-md-12">
												<h5>原住址</h5>
												<p>纽约Courtage区，东大街480号</p>
											</div>                                            
                                        </div>

                                        <div class="row mt-2">
											<div class="col-md-12">
												<h5>现在住址</h5>
												<p>纽约Courtage区，东大街480号</p>
											</div>                                            
                                        </div>
									</div>
								</div>								
							</div>

							<div class="row mt-2">
								<div class="col-md-12">
									<div class="skill-info">
										<h4>技能</h4>
										<p>Lorem Ipsum是印刷排版行业的简单虚拟文本，印刷排版行业的简单虚拟文本  </p>
										
										<ul>
                                            <li>
                                                <label>Lorem Ipsum很简单</label>
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%"></div>
                                                </div>
                                            </li>

                                            <li>
                                                <label>Lorem Ipsum很简单</label>
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-striped progress-bar-animated bg-success" role="progressbar" aria-valuenow="69" aria-valuemin="0" aria-valuemax="100" style="width: 69%"></div>
                                                </div>
                                            </li>

                                            <li>
                                                <label>Lorem Ipsum很简单</label>
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-striped progress-bar-animated bg-info" role="progressbar" aria-valuenow="86" aria-valuemin="0" aria-valuemax="100" style="width: 86%"></div>
                                                </div>
                                            </li>

                                            <li>
                                                <label>Lorem Ipsum很简单</label>
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-striped progress-bar-animated bg-warning" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width: 65%"></div>
                                                </div>
                                            </li>                                            
										</ul>
										
										<div class="row mt-3">
											<div class="col-md-12">
												<h5>教育</h5>
												<p class="mt-3">孟买xyz中学的中学教育。</p>
												<p>在孟买xyz高等中等教育学校接受高等中等教育。 </p>
												<p>金奈Abc艺术与科学学院理学学士学位。  </p>
												<p>普纳Cdm工程技术学院理学硕士。
											</div>                                            
										</div>
										
										<div class="row mt-3">
											<div class="col-md-12">
												<h5>证书</h5>
												<p class="mt-3">跑步比赛第一名。</p>
												<p>Lorem Ipsum是一个简单的虚拟文本。</p>
												<p>在高等教育中被评为全优学生。  </p>
												<p>Lorem Ipsum是一个简单的虚拟文本。</p>
											</div>                                            
                                        </div>
									</div>
								</div>
							</div>

							<div class="row mt-2">
								<div class="col-md-12">
									<div class="skill-info">
										<h4>设置</h4>

										<form>
											<div class="row mt-3">
												<div class="col-12 col-sm-6">  
													<div class="form-group">
														<label>用户名</label>
														<input type="text" class="form-control">
													</div>
												</div>
												<div class="col-12 col-sm-6">  
													<div class="form-group">
														<label>当前的密码</label>
														<input type="password" class="form-control">
													</div>
												</div>
												<div class="col-12 col-sm-6">  
													<div class="form-group">
														<label>新的密码</label>
														<input type="password" class="form-control">
													</div>
												</div>
												<div class="col-12">
													<button type="submit" class="btn btn-primary">提交</button>
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
		
		<!-- Custom JS -->
		<script  src="assets/js/script.js"></script>
		
    </body>
</html>