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
        <title>Preskool - Profile</title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" href="assets/img/favicon.png">
	
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,500;0,600;0,700;1,400&display=swap">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
		
		
        <link rel="stylesheet" href="assets/css/style.css">
        <script type="text/javascript" src="assets/js/jquery-1.12.4.js"></script>
        <script type="text/javascript">
        $(function(){
			reada();
			read();
		});
		function reada(){
			var ss='${qq.stuid}';
			var sf='${qq.tname}';
			var username='${qq.userName}';
			$.ajax({
       			url:'selgeren',
       			type:'get',
       			data:{id:ss},
       			success:function(data){
       			var a="";//姓名
       			var b="";//专业
       			var c="";//电话
       			var d="";//邮件
       			var e="";//性别
       			var f="";//出生日期
       			var g="";//介绍
       			var h="";//地址
       			var i="";//右上角头像
       			var j="";//右上角头像1
       			var k="";//用户名
       			var l="";//头像
       			var m="";//班级
       			$(data).each(function(i,item){
       				a+=item.sname;
       				$("#sname").html(a);
       													c+=item.phonenum;
       													$("#phone").html(c);
       													d+=item.email;
       													$("#email").html(d);
       													f+=item.bornDates;
       													$("#born").html(f);
       													g+=item.introduce;
       													$("#geren").html(g);
       													h+=item.arean;
       													$("#arean").html(h);
       													$("#arean1").html(h);
       													i+="<img class='rounded-circle' src='assets/img/profiles/"+item.photo+"' width='31' alt='Ryan Taylor'>";
       													$("#tx").html(i);
       													j+="<img src='assets/img/profiles/"+item.photo+"' alt='User Image' class='avatar-img rounded-circle'>";
       													$("#tx1").html(j);
       													$("#name2").html(username);
       													$("#sf").html(sf);
       													l+="<img src='assets/img/profiles/"+item.photo+"' class='mr-3' alt='...'>";
       													$("#imgs").html(l);
       													m+=item.classs;
       													$("#classs").html(m);
      												});
       											}
       													
       										});			
		}
		 var user='${qq.userName}';
							var pass='${qq.password}';
							function updpass() {
							var us=$("#text2").val();
							var id='${qq.id}';
							var pass1=$("#text3").val();
							var pass2=$("#text4").val();
if(us == "") {
alert("用户名不能为空!");
return false;
}
if(us!=user){
alert("用户名错误!");
return false;
}
if(pass1 == "") {
alert("密码不能为空!");
return false;
}else if(pass1!=pass){
	alert("密码不正确，请重新输入");
return false;
}
if(pass2 == "") {
alert("新密码不能为空!");
return false;
}
$.ajax({
url:'updpass',
type:'get',
data:{user:us,pass:pass2,id:id},
success:function(data){
if(data>0){
alert("修改成功,请重新登录");
window.location="login.jsp";
}

}
});

		}
			function read(){
       		var email = '${qq.email}';
       		$.ajax({
				url:'seleaaa',
				type:'get',
				data:{email:email},
				success:function(data){
				var peopl = "";
				$(data).each(function(i,item){
					peopl+="<li class='notification-message'><a href='student-inbox.jsp'><div class='media'><span class='avatar avatar-sm'></span>";
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
				<!-- <div class="top-nav-search">
					<form>
						<input type="text" class="form-control" placeholder="Search here">
						<button class="btn" type="submit"><i class="fas fa-search"></i></button>
					</form>
				</div> -->
				<!-- /Search Bar -->
				
				<!-- Mobile Menu Toggle -->
				<a class="mobile_btn" id="mobile_btn">
					<i class="fas fa-bars"></i>
				</a>
				<!-- /Mobile Menu Toggle -->
				
				<!-- Header Right Menu -->
				<ul class="nav user-menu">

					<!-- Notifications -->
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
							</a>
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
									<p class="text-muted mb-0">学生</p>
								</div>
							</div>
							<a class="dropdown-item" href="#">我的信息</a>
							<a class="dropdown-item" href="student-inbox.jsp">我的邮箱</a>
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
								<a href="student-index.jsp"><i class="fas fa-th-large"></i> <span>仪表板</span></a>
							</li>
							<li class="active">
								<a href="student-details.jsp"><i class="fas fa-user-graduate"></i><span>学生信息</span></a>
							</li>
							<li> 
								<a  href="student-event.jsp"><i class="fas fa-calendar-day"></i> <span>考试时间</span></a>
							</li>
							<li> 
								<a  href="student-inbox.jsp"><i class="fas fa-calendar-day"></i> <span>我的Email</span></a>
							</li>
							<li> 
								<a  href="add-fees-collection.jsp"><i class="fas fa-calendar-day"></i> <span>课程表</span></a>
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
								<h3 class="page-title">个人信息</h3>
								<!-- <ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
									<li class="breadcrumb-item active">Profile</li>
								</ul> -->
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
					<div class="row">
						<div class="col-md-12">
							<div class="profile-header">
								<div class="row align-items-center">
									<div class="col-auto profile-image">
										<a href="#"id="imgs">
											
										</a>
									</div>
									<div class="col ml-md-n2 profile-user-info">
										<h4 class="user-name mb-0" >姓名</h4>
										<h6 class="text-muted">${qq.sname}</h6>
										<div class="user-Location"><i class="fas fa-map-marker-alt"></i> <span id="arean"></span></div>
									</div>
									<div class="col-auto profile-btn">
										
										<a href="/ManageS/updaatt?email=${qq.email}" class="btn btn-primary">
											Edit
										</a>
									</div>
								</div>
							</div>
							<div class="profile-menu">
								<ul class="nav nav-tabs nav-tabs-solid">
									<li class="nav-item">
										<a class="nav-link active" data-toggle="tab" href="#per_details_tab">关于</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#password_tab">密码</a>
									</li>
								</ul>
							</div>	
							<div class="tab-content profile-tab-cont">
								
								<!-- Personal Details Tab -->
								<div class="tab-pane fade show active" id="per_details_tab">
								
									<!-- Personal Details -->
									<div class="row">
										<div class="col-lg-9">
											<div class="card">
												<div class="card-body">
													<h5 class="card-title d-flex justify-content-between">
														<span>详细信息</span> 
														
													</h5>
													<div class="row">
														<p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">用户名</p>
														<p class="col-sm-9"id="name2"></p>
													</div>
													<div class="row">
														<p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">出生日期</p>
														<p class="col-sm-9"id="born"></p>
													</div>
													<div class="row">
														<p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">Email</p>
														<p class="col-sm-9"id="email"></p>
													</div>
													<div class="row">
														<p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">手机</p>
														<p class="col-sm-9"id="phone"></p>
													</div>
													<div class="row">
														<p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">所属班级</p>
														<p class="col-sm-9 mb-0" id="classs"></p>
													</div>
													<div class="row">
														<p class="col-sm-3 text-muted text-sm-right mb-0">个人介绍</p>
														<p class="col-sm-9 mb-0" id="geren"></p>
													</div>
												</div>
											</div>
											
										</div>

										<div class="col-lg-3">
											
											<!-- Account Status -->
											<!-- <div class="card">
												<div class="card-body">
													<h5 class="card-title d-flex justify-content-between">
														<span>账号</span>
														<a class="edit-link" href="#"><i class="far fa-edit mr-1"></i> </a>
													</h5>
													<button class="btn btn-success" type="button"><i class="fe fe-check-verified"></i> Active</button>
												</div>
											</div> -->
											<!-- /Account Status -->

											<!-- Skills -->
											<div class="card">
												<div class="card-body">
													<h5 class="card-title d-flex justify-content-between">
														<span>特长 </span> 
													</h5>
													<div class="skill-tags">
														<span>HTML5</span>
														<span>CSS3</span>
														<span>Javascript</span>
														<span>MySql</span>
														<span>C++</span>
														<span></span>
													</div>
												</div>
											</div>
											<!-- /Skills -->

										</div>
									</div>
									<!-- /Personal Details -->

								</div>
								<!-- /Personal Details Tab -->
								
								<!-- Change Password Tab -->
								<div id="password_tab" class="tab-pane fade">
								
									<div class="card">
										<div class="card-body">
											<h5 class="card-title">修改密码</h5>
											<div class="row">
												<div class="col-md-10 col-lg-6">
													<form>
											<div class="row mt-3">
												<div class="col-12 col-sm-6">  
													<div class="form-group">
														<label>用户名</label>
														<input type="text" id="text2" class="form-control">
													</div>
												</div>
												<div class="col-12 col-sm-6">  
													<div class="form-group">
														<label>原密码</label>
														<input type="password" id="text3" class="form-control">
													</div>
												</div>
												<div class="col-12 col-sm-6">  
													<div class="form-group">
														<label>新密码</label>
														<input type="password" id="text4"	 class="form-control">
													</div>
												</div>
												<div class="col-12">
													<button type="button" onclick="updpass()" class="btn btn-primary">提交</button>
												</div>
											</div>
										</form>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- /Change Password Tab -->
								
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
		<script  src="assets/js/script.js"></script>
		
    </body>
</html>