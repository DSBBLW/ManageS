<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
		</script></head>
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
				<!-- 	<form>
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
									<h6></h6>
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
							<li class="submenu active">
								<a href="#"><i class="fas fa-user-graduate"></i> <span> 学生</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="teacher-students.jsp">学生列表</a></li>
									<li><a href="teacher-add-student.jsp" class="active">添加学生</a></li>
									<li><a href="teacher-edit-student.jsp">编辑学生</a></li>
								</ul>
							</li>
							<li><a href="teacher-subjects.jsp" class="active"><i class="fas fa-book-reader"></i> <span>专业列表</span> </a></li>

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
							<li > 
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
									<form id="qw"  method="post" action="/ManageS/add" enctype="multipart/form-data">
										<div class="row">
											<div class="col-12">
												<h5 class="form-title"><span>学生信息</span></h5>
											</div>
											<div class="col-12 col-sm-6">  
												<div class="form-group">
													<label>姓名</label>
													<input type="text" id="text1" class="form-control" name="sname">
												</div>
											</div>
											
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>性别</label>
													<select name="sex" id="sel1" class="form-control">
														<option value="">选择性别</option>
														<option value="女">女</option>
														<option value="男">男</option>
														<option value="其他">其他</option>
													  </select>
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>出生日期</label>
													<div>
														<input type="text" id="text2" class="form-control" name="bornDate">
													</div>
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>班级</label>
													<input type="text" id="text3" onmouseout="my();" class="form-control" name="classs">
													<div><span style="color: red" id="myzm"></span></div>
												</div>
											</div>
											<script type="text/javascript">
												$(function(){
													sezy();
												showarean();
												sub();
												});
												function my(){
													var sn=$("#text3").val();
													$.ajax({
       													url:'/ManageS/selgra',
       													type:'get',
       													data:{cn:sn},
       													success:function(data){
       														if(data==0){
       															$("#myzm").text("没有这个班级");
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
											</script>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>专业</label>
													<select name='majorid' id="zy" class="form-control">
														<option value="">请选择专业</option>
													  </select>
												</div>
											</div>
											
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>手机号码</label>
													<input id="text4" type="text" name="phonenum" class="form-control">
												</div>
											</div>
											
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>个人头像</label>
													<input type="file" name="f1" class="form-control">
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>籍贯</label>
													<!-- <textarea class="form-control"></textarea> -->
													<input type="text" id="text5" class="form-control" name="nativename">
												</div>
											</div>
											<div class="col-12 col-sm-6">
											<script type="text/javascript">
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
       													/* str+="<option>请选择市区</option>"; */
       													$(data).each(function(i,item){						
																str+="<option value="+item.id+">"+item.ext_name+"</option>";
														});
														$("#s2").show();
														$("#s2").append(str);
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
       													/* str+="<option>请选择区域</option>"; */
       													$(data).each(function(i,item){						
																str+="<option value="+item.id+">"+item.ext_name+"</option>";
														});
														$("#s3").show();
														$("#s3").append(str);
														}
														});		
													
													}
											</script>
												<div class="form-group">
													<label>arean</label>
													<select name='idp' id="s1"  onchange="show();" class="form-control">
													 
													 <option value="">请选择省份</option> 
													</select>
													<select name='idc' id="s2" onchange="show1();" style="display:none;" class="form-control">
													<option value="">请选择市区</option>
													</select>
													<select name="idt" id="s3" style="display:none;" class="form-control">
													<option value="">请选择区域</option>
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
																$("#text4").val()==""||
																$("#text5").val()==""||
																$("#sel1").val()==""||
																$("#s1").val()==""||
																$("#s2").val()==""||
																$("#s3").val()==""||
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