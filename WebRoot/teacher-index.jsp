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
        <script type="text/javascript" src="assets/js/jquery-1.12.4.js"></script>
        <script type="text/javascript">
			$(function(){
			read();
				
    		});
		
		function read(){
       		var email = '${qq.email}';
       		$.ajax({
				url:'seleaaas',
				type:'get',
				data:{email:email},
				success:function(data){
				var peopl = "";
				$(data).each(function(i,item){
					peopl+="<li class='notification-message'><a href='teacher-inbox.jsp'><div class='media'><span class='avatar avatar-sm'></span>";
					peopl+="<div class='media-body'><p class='noti-details'><span class='noti-title'>标题:</span> <span class='noti-title'>"+item.headtext+"</span></p>";
					peopl+="<p class='noti-time'><span class='notification-time'>发送时间:"+item.createtime+"</span></p></div></div></a></li>";
					
				});
				$("#aaaa").html(peopl);
				$("#num").html(data.length);
				}
				});
       	}
       	function bool(){
       		var email1 = '${qq.email}';
       		$.ajax({
				url:'updbool',
				type:'get',
				data:{email:email1},
				success:function(data){
					if(data == 1){
						read();
					}
				}	
				});
       	}
		</script>
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
								<span class="notification-title">我的信箱</span>
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
							<li  class="active"> 
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
					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">欢迎${qq.thname}${qq.tname}!</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item active">仪表板</li>
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
											<h6>学生</h6>
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
											<h6>获奖</h6>
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
											<h6>专业</h6>
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
											<h6>收入</h6>
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
									<h5 class="card-title">明星学生</h5>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-hover table-center">
											<thead class="thead-light">
												<tr>
													<th>ID</th>
													<th>姓名</th>
													<th>专业</th>
													<th>就业薪资</th>
													<th class="text-right">年</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="text-nowrap">
														<div>1145</div>
													</td>
													<td class="text-nowrap">伍红霞</td>
													<td class="text-center">大数据</td>
													<td class="text-center">15000</td>
													<td class="text-right">
														<div>2019</div>
													</td>
												</tr>
												<tr>
													<td class="text-nowrap">
														<div>1379</div>
													</td>
													<td class="text-nowrap">鲍德华</td>
													<td class="text-center">大数据</td>
													<td class="text-center">10000</td>
													<td class="text-right">
														<div>2018</div>
													</td>
												</tr>
												<tr>
													<td class="text-nowrap">
														<div>1661</div>
													</td>
													<td class="text-nowrap">项亮</td>
													<td class="text-center">UI设计</td>
													<td class="text-center">13000</td>
													<td class="text-right">
														<div>2019</div>
													</td>
												</tr>
												<tr>
													<td class="text-nowrap">
														<div>1871</div>
													</td>
													<td class="text-nowrap">鲍晓阳</td>
													<td class="text-center">网络工程</td>
													<td class="text-center">16000</td>
													<td class="text-right">
														<div>2020</div>
													</td>
												</tr>
												<tr>
													<td class="text-nowrap">
														<div>2100</div>
													</td>
													<td class="text-nowrap">彭红霞</td>
													<td class="text-center">运维实战</td>
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
									<h5 class="card-title">学生活动</h5>
								</div>
								<div class="card-body">
									<ul class="activity-feed">
										<li class="feed-item">
											<div class="feed-date">4月13日</div>
											<span class="feed-text"><a>占峰</a>国际编程大赛 <a>获得第一名</a></span>
										</li>
										<li class="feed-item">
											<div class="feed-date">5月21日</div>
											<span class="feed-text"><a>彭红霞</a>社团活动 <a href="invoice.jsp">获得第一名</a></span>
										</li>
										<li class="feed-item">
											<div class="feed-date">6月2日</div>
											<span class="feed-text"><a>章晓强</a>项目大赛中<a href="profile.jsp">获得笔记本电脑一台</a></span>
										</li>
										<li class="feed-item">
											<div class="feed-date">1月1日</div>
											<span class="feed-text"><a>校长</a> 元旦晚会中<a>出席并演讲</a></span>
										</li>
										<li class="feed-item">
											<div class="feed-date">11月21日</div>
											<span class="feed-text"><a>万小亮</a>静态网页大赛<a href="invoice.jsp">获得第一名</a></span>
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
					<p>最终解释权归<strong>仌组</strong>所有 © 2021</p>					
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