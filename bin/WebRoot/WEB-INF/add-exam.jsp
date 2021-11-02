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
								<span>Main Menu</span>
							</li>
							<li> 
								<a href="index.jsp"><i class="fas fa-th-large"></i> <span>Dashboard</span></a>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-user-graduate"></i> <span> 学生</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="/ManageS/students.jsp">学生列表</a></li>
									<li><a href="/ManageS/student-details.jsp">学生信息</a></li>
									<li><a href="/ManageS/add-student.jsp"  class="active">学生添加</a></li>
									<li><a href="/ManageS/edit-student.jsp">学生编辑</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-chalkboard-teacher"></i> <span> Teachers</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="teachers.jsp">Teacher List</a></li>
									<li><a href="teacher-details.jsp">Teacher View</a></li>
									<li><a href="add-teacher.jsp">Teacher Add</a></li>
									<li><a href="edit-teacher.jsp">Teacher Edit</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-building"></i> <span> Departments</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="departments.jsp">Department List</a></li>
									<li><a href="add-department.jsp">Department Add</a></li>
									<li><a href="edit-department.jsp">Department Edit</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-book-reader"></i> <span> Subjects</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="subjects.jsp">Subject List</a></li>
									<li><a href="add-subject.jsp">Subject Add</a></li>
									<li><a href="edit-subject.jsp">Subject Edit</a></li>
								</ul>
							</li>

							<li class="menu-title"> 
								<span>Management</span>
							</li>

							<li class="submenu">
								<a href="#"><i class="fas fa-file-invoice-dollar"></i> <span> Accounts</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="fees-collections.jsp">Fees Collection</a></li>
									<li><a href="expenses.jsp">Expenses</a></li>
									<li><a href="salary.jsp">Salary</a></li>
									<li><a href="add-fees-collection.jsp">Add Fees</a></li>
									<li><a href="add-expenses.jsp">Add Expenses</a></li>
									<li><a href="add-salary.jsp">Add Salary</a></li>
								</ul>
							</li>
							<li> 
								<a href="holiday.jsp"><i class="fas fa-holly-berry"></i> <span>Holiday</span></a>
							</li>
							<li> 
								<a href="fees.jsp"><i class="fas fa-comment-dollar"></i> <span>Fees</span></a>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-user-graduate"></i> <span> 考试</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="exam.jsp">考试成绩</a></li>
									<li><a class="active" class="active" href="add-exam.jsp">添加成绩</a></li>
									
								</ul>
							</li>
							<li> 
								<a href="event.jsp"><i class="fas fa-calendar-day"></i> <span>Events</span></a>
							</li>
							<li> 
								<a href="time-table.jsp"><i class="fas fa-table"></i> <span>Time Table</span></a>
							</li>
							<li> 
								<a href="library.jsp"><i class="fas fa-book"></i> <span>Library</span></a>
							</li>

							<li class="menu-title"> 
								<span>Pages</span>
							</li>

							<li class="submenu">
								<a href="#"><i class="fas fa-shield-alt"></i> <span> Authentication </span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="login.jsp">Login</a></li>
									<li><a href="register.jsp">Register</a></li>
									<li><a href="forgot-password.jsp">Forgot Password</a></li>
									<li><a href="error-404.jsp">Error Page</a></li>
								</ul>
							</li>
							<li> 
								<a href="blank-page.jsp"><i class="fas fa-file"></i> <span>Blank Page</span></a>
							</li>

							<li class="menu-title"> 
								<span>Others</span>
							</li>

							<li> 
								<a href="sports.jsp"><i class="fas fa-baseball-ball"></i> <span>Sports</span></a>
							</li>
							<li> 
								<a href="hostel.jsp"><i class="fas fa-hotel"></i> <span>Hostel</span></a>
							</li>
							<li> 
								<a href="transport.jsp"><i class="fas fa-bus"></i> <span>Transport</span></a>
							</li>
							<li class="menu-title"> 
								<span>UI Interface</span>
							</li>
							<li> 
								<a href="components.jsp"><i class="fas fa-vector-square"></i> <span>Components</span></a>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-columns"></i> <span> Forms </span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="form-basic-inputs.jsp">Basic Inputs </a></li>
									<li><a href="form-input-groups.jsp">Input Groups </a></li>
									<li><a href="form-horizontal.jsp">Horizontal Form </a></li>
									<li><a href="form-vertical.jsp"> Vertical Form </a></li>
									<li><a href="form-mask.jsp"> Form Mask </a></li>
									<li><a href="form-validation.jsp"> Form Validation </a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-table"></i> <span> Tables </span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="tables-basic.jsp">Basic Tables </a></li>
									<li><a href="data-tables.jsp">Data Table </a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="javascript:void(0);"><i class="fas fa-code"></i> <span>Multi Level</span> <span class="menu-arrow"></span></a>
								<ul>
									<li class="submenu">
										<a href="javascript:void(0);"> <span>Level 1</span> <span class="menu-arrow"></span></a>
										<ul>
											<li><a href="javascript:void(0);"><span>Level 2</span></a></li>
											<li class="submenu">
												<a href="javascript:void(0);"> <span> Level 2</span> <span class="menu-arrow"></span></a>
												<ul>
													<li><a href="javascript:void(0);">Level 3</a></li>
													<li><a href="javascript:void(0);">Level 3</a></li>
												</ul>
											</li>
											<li><a href="javascript:void(0);"> <span>Level 2</span></a></li>
										</ul>
									</li>
									<li>
										<a href="javascript:void(0);"> <span>Level 1</span></a>
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
								<h3 class="page-title">添加学生</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="students.jsp">学生</a></li>
									<li class="breadcrumb-item active">添加学生</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
				
					<div class="row">
						<div class="col-sm-12">
						
							<div class="card">
								<div class="card-body">
									<form id="qw"  method="post" action="/ManageS/addexam">
										<div class="row">
											<div class="col-12">
												<h5 class="form-title"><span>学生信息</span></h5>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>考试类型</label>
													<select name="examid" id="exam" class="form-control">
														<option value="">请选择考试类型</option>
													  </select>
												</div>
											</div>
											
											<div class="col-12 col-sm-6">  
												<div class="form-group">
													<label>考试学生</label>
													<input onmouseout="my();" name="sname" type="text" id="text1" class="form-control">
													<div><span style="color: red" id="myzm"></span></div>
												</div>
											</div>
											<div class="col-12 col-sm-6">  
												<div class="form-group">
													<label>机试成绩</label>
													<input name="compresult" type="text" id="text2" class="form-control" >
												</div>
											</div>
											<div class="col-12 col-sm-6">  
												<div class="form-group">
													<label>笔试成绩</label>
													<input name="paperesult" type="text" id="text3" class="form-control">
												</div>
											</div>
											<script type="text/javascript">
												$(function(){
													sezy();
													selex();
												sub();
												});
												function my(){
													var sn=$("#text1").val();
													$.ajax({
       													url:'/ManageS/selus',
       													type:'get',
       													data:{sn:sn},
       													success:function(data){
       														if(data==0){
       															$("#myzm").text("没有这名学生");
       														}else{
       														$("#myzm").text("");
       														}
       													}
       													})
												}
												function sezy(){
      													$.ajax({
       													url:'/ManageS/selzy',
       													type:'get',
       													success:function(data){
														var str="";
														
														$(data).each(function(i,item){
																str+="<option value="+item.id+">"+item.mname+"</option>"
														});
														$("#zy").append(str);
													}
													});
											}
											function selex(){
      													$.ajax({
       													url:'/ManageS/selexam',
       													type:'get',
       													success:function(data){
														var str="";
														$(data).each(function(i,item){
																str+="<option value="+item.id+">"+item.examname+"</option>"
														});
														$("#exam").append(str);
													}
													});
											}
											</script>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>专业</label>
													<select name='mid' id="zy" class="form-control">
														<option value="">请选择专业</option>
													  </select>
												</div>
											</div>
											
											<div class="col-12">
												<button type="submit" class="btn btn-primary">提交</button>
												
												<script type="text/javascript">
													function sub(){
														$("#qw").submit(
															function(){
																if($("#text1").val()==""||
																$("#text2").val()==""||
																$("#text3").val()==""||
																$("#exam").val()==""||
																
																$("#zy").val()==""
																){
																alert("请填写完整信息");
																return false;
																}
														})
													
													}
												
												</script>
											</div>
										</div>
									</form>
								</div>
							</div>							
						</div>					
					</div>					
				</div>				
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
		<script src="assets/js/script.js"></script>
    </body>
</html>