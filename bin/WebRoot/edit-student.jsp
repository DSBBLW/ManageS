<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
								<span>?????????</span>
							</li>
							<li> 
								<!-- ????????? --><a href="index.jsp"><i class="fas fa-th-large"></i> <span>?????????</span></a>
							</li>
							<li class="submenu active">
								<!-- ?????? --><a href="#"><i class="fas fa-user-graduate"></i> <span> ??????</span> <span class="menu-arrow"></span></a>
								<ul>
									<!-- ???????????? --><li><a href="students.jsp" >????????????</a></li>
									<!-- ???????????? --><li><a href="add-student.jsp">????????????</a></li>
									<!-- ???????????? --><li><a href="edit-student.jsp" class="active">????????????</a></li>
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
						<div class="row align-items-center">
							<div class="col">
								<h3 class="page-title">????????????</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="students.jsp">??????</a></li>
									<li class="breadcrumb-item active">????????????</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
				
					<div class="row">
						<div class="col-sm-12">
						
							<div class="card">
								<div class="card-body">
									<form enctype="multipart/form-data" method="post" action="/ManageS/upda">
									<input type="text" class="form-control" style="display:none;" name="id" value="${list.id}">
												<input type="text" class="form-control" style="display:none;" name="classid" value="${list.classid}">
										<div class="row">
											<div class="col-12">
												<h5 class="form-title"><span>????????????</span></h5>
											</div>
											
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>??????</label>
													<input type="text" class="form-control" name="sname" value="${list.sname }">
												</div>
											</div>
											
											
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>????????????</label>
													<div>
														<input type="text" class="form-control" name="bornDate"  value="${list.bornDate}">
													</div>
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>??????</label>
													<input type="text" id="text3"  onmouseout="my();" class="form-control" name="classs"  value="${list.classs }">
													<div><span style="color: red" id="myzm"></span></div>
												</div>
											</div>
											<script type="text/javascript">
													var zy=${list.majorid}
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
														if(zy!=""){
															$("#zy").val(zy);
														}
													}
													});
											}
											function my(){
													var sn=$("#text3").val();
													$.ajax({
       													url:'/ManageS/selgra',
       													type:'get',
       													data:{cn:sn},
       													success:function(data){
       														if(data==0){
       															$("#myzm").text("??????????????????");
       														}else{
       														$("#myzm").text("");
       														}
       													}
       													})
												}
													</script>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>??????</label>
													<select name='majorid' id="zy" class="form-control">
														<option value="">???????????????</option>
													  </select>
												</div>
											</div>
											
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>????????????</label>
													<input type="text" class="form-control" name="phonenum" value="${list.phonenum }">
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>????????????</label>
													<input name="f1" type="file" class="form-control">
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>??????</label>
													<input type="text" name="nativename" class="form-control" value="${list.nativename }">
												</div>
											</div>
											<div class="col-12 col-sm-6">
											<script type="text/javascript">
												var sheng=${list.idp};
												var shi=${list.idc};
												var qu=${list.idt};
												$(function(){
													showarean();
												sezy();
												});
											
												function showarean(){
													$.ajax({
       													url:'/ManageS/selpro',
       													type:'get',
       													success:function(data){
       													var str="";
														$(data).each(function(i,item){	
														str+="<option value="+item.id+">"+item.ext_name+"</option>";		
																
													});
														$("#s1").append(str);	
														if(sheng!=0){
														$("#s1").val(sheng);
														show();
														}
													}	
													});
													}
													function show(){
														var id=$("#s1").val();
														$("#s3").html("");
														$.ajax({
       													url:'/ManageS/selci',
       													type:'get',
       													data:{co:id},
       													success:function(data){
       													var str="";
       													/* str+="<option>???????????????</option>"; */
       													$(data).each(function(i,item){						
																str+="<option value="+item.id+">"+item.ext_name+"</option>";
														});
														$("#s2").show();
														$("#s2").append(str);
														if(shi!=0){
															$("#s2").val(shi);
															show1();
														}
														}
														});					
													}
													function show1(){
													var id=$("#s2").val();
														$.ajax({
       													url:'/ManageS/selqu',
       													type:'get',
       													data:{co:id},
       													success:function(data){
       													var str="";
       													/* str+="<option>???????????????</option>"; */
       													$(data).each(function(i,item){						
																str+="<option value="+item.id+">"+item.ext_name+"</option>";
														});
														$("#s3").show();
														$("#s3").append(str);
														if(qu!=0){
															$("#s3").val(qu);
															
														}
														}
														});		
													
													}
											</script>
												<div class="form-group">
													<label>arean</label>
													<select name='idp' id="s1"  onchange="show();" class="form-control">
													<option value="">???????????????</option>
													
													</select>
													<select name='idc' id="s2" onchange="show1();" style="display:none;" class="form-control">
													<option value="">???????????????</option>
													</select>
													<select name="idt" id="s3" style="display:none;" class="form-control">
													<option value="">???????????????</option>
													</select>
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