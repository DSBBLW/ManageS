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
									<p class="text-muted mb-0">Admin</p>
								</div>
							</div>
							<a class="dropdown-item" href="inbox.jsp">发送邮件</a>
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
								<!-- 仪表板 --><a href="index.jsp"><i class="fas fa-th-large"></i> <span>仪表板</span></a>
							</li>
							<li class="submenu active">
								<!-- 学生 --><a href="#"><i class="fas fa-user-graduate"></i> <span> 学生</span> <span class="menu-arrow"></span></a>
								<ul>
									<!-- 学生列表 --><li><a href="students.jsp" >学生列表</a></li>
									<!-- 添加学生 --><li><a href="add-student.jsp">添加学生</a></li>
									<!-- 编辑学生 --><li><a href="edit-student.jsp" class="active">编辑学生</a></li>
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
							
							<li> 
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
								<h3 class="page-title">编辑学生</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="students.jsp">学生</a></li>
									<li class="breadcrumb-item active">编辑学生</li>
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
												<h5 class="form-title"><span>学生信息</span></h5>
											</div>
											
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>姓名</label>
													<input type="text" class="form-control" name="sname" value="${list.sname }">
												</div>
											</div>
											
											
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>出生日期</label>
													<div>
														<input type="text" class="form-control" name="bornDate"  value="${list.bornDate}">
													</div>
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>班级</label>
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
       															$("#myzm").text("没有这个班级");
       														}else{
       														$("#myzm").text("");
       														}
       													}
       													})
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
													<label>电话号码</label>
													<input type="text" class="form-control" name="phonenum" value="${list.phonenum }">
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>个人头像</label>
													<input name="f1" type="file" class="form-control">
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
														$("#s2").hide();
														$("#s3").hide();
														var id=$("#s1").val();
														$("#s3").html("");
														$("#s2").html("");
														$.ajax({
       													url:'/ManageS/selci',
       													type:'get',
       													data:{co:id},
       													success:function(data){
       													var str="";
       													/* str+="<option>请选择市区</option>"; */
       													str+="<option>请选择市区</option>";		
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
														$("#s3").html("");
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
														if(qu!=0){
															$("#s3").val(qu);
															
														}
													
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