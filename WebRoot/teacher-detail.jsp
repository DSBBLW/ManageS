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
        <title>Preskool - Student Details</title>
		
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
	
		<!-- Main Wrapper -->
        <div class="main-wrapper">
		
			<!-- Header -->
            <div class="header">
			<!-- Logo -->
                <div class="header-left">
                    <a href="index.html" class="logo">
						<img src="/ManageS/assets/img/logo.png" alt="Logo">
					</a>
					<a href="index.html" class="logo logo-small">
						<img src="/ManageS/assets/img/logo-small.png" alt="Logo" width="30" height="30">
					</a>
                </div>
				<!-- /Logo -->
				
				<a href="javascript:void(0);" id="toggle_btn">
					<i class="fas fa-align-left"></i>
				</a>
				
				
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
							<span class="user-img" id="tx">
							
							</span>
						</a>
						<div class="dropdown-menu">
							<div class="user-header">
								<div class="avatar avatar-sm" id="tx1">
									
								</div>
								<div class="user-text">
									<h6 id="name1">
									
									</h6>
									<p class="text-muted mb-0" id="sf">
									
									</p>
								</div>
							</div>
							<a class="dropdown-item" href="teacher-inbox.jsp">收件箱</a>
							<a class="dropdown-item" href="login.jsp">注销</a>
						</div>
					</li>
					<!-- /User Menu -->
					
				</ul>
				<!-- /Header Right Menu -->
				
            </div>
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
							<li  class="active">
								<a href="student-details.jsp"><i class="fas fa-user-graduate"></i><span>学生信息</span></a>
							</li>
							<li > 
								<a  href="student-event.jsp"><i class="fas fa-calendar-day"></i> <span>考试时间</span></a>
							</li>
							<li> 
								<a  href="student-inbox.jsp"><i class="fas fa-calendar-day"></i> <span>我的Email</span></a>
							</li>
							</ul>
    				</div>
    				</div>
    				</div>
			<!-- Page Wrapper -->
            <div class="page-wrapper">
                <div class="content container-fluid">
				
					<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">学生信息</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="students.jsp">学生</a></li>
									<li class="breadcrumb-item active">学生信息</li>
								</ul>
							</div>
						</div>
					</div>
					
					<div class="card">
						<div class="card-body">
							<div class="row">
								<div class="col-md-12">
									<div class="about-info">
										<h4>关于我的</h4>
										<div class="media mt-3" >
											<div id="imgs">
											
												</div>
											<div class="media-body">
											<script type="text/javascript" src="assets/js/jquery-1.12.4.js"></script>
											<script type="text/javascript">
											$(function(){
											
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
       													$("#name").html(a);
       													b+=item.major;
       													$("#major").html(b);
       													c+=item.phonenum;
       													$("#phone").html(c);
       													d+=item.email;
       													$("#email").html(d);
       													e+=item.sex;
       													$("#sex").html(e);
       													f+=item.bornDates;
       													$("#born").html(f);
       													g+=item.introduce;
       													$("#geren").html(g);
       													h+=item.arean;
       													$("#arean").html(h);
       													i+="<img class='rounded-circle' src='assets/img/profiles/"+item.photo+"' width='31' alt='Ryan Taylor'>";
       													$("#tx").html(i);
       													j+="<img src='assets/img/profiles/"+item.photo+"' alt='User Image' class='avatar-img rounded-circle'>";
       													$("#tx1").html(j);
       													$("#name1").html(username);
       													$("#sf").html(sf);
       													l+="<img src='assets/img/profiles/"+item.photo+"' class='mr-3' alt='...'>";
       													$("#imgs").html(l);
       													m+=item.classs;
       													$("#classs").html(m);
      												});
       											}
       													
       										});
											});
												
											</script>
												<ul>
												
                                                    <li>
                                                        <span class="title-span">全名: </span>
                                                        <span class="info-span" id="name">
                                                        
                                                        </span>
                                                    </li>
                                                    <li>
                                                        <span class="title-span">部门 : </span>
                                                        <span class="info-span" id="major">
                                                        
                                                        </span>
                                                    </li>
                                                    <li>
                                                        <span class="title-span">手机号 : </span>
                                                        <span class="info-span" id="phone">
                                                        
                                                        </span>
                                                    </li>
                                                    <li>
                                                        <span class="title-span">电子邮件 : </span>
                                                        <span class="info-span" id="email">
                                                        
                                                        </span>
                                                    </li>
                                                    <li>
                                                        <span class="title-span">性别 : </span>
                                                        <span class="info-span" id="sex">
                                                        
                                                        </span>
                                                    </li>
                                                     
                                                    <li>
                                                        <span class="title-span">出生日期 : </span>
                                                        <span class="info-span" id="born">
                                                        
                                                        </span>
                                                    </li>
                                                </ul>
											</div>
										</div>

										<div class="row mt-3">
											<div class="col-md-12">
												<p id="geren">
												
												</p>
											</div>                                            
										</div>
										
										
										<div class="row mt-2">
											<div class="col-md-12">
												<h5>籍贯</h5>
												<p id="arean">
												
												</p>
											</div>                                            
                                        </div>

									</div>
								</div>								
							</div>

							

							<div class="row mt-2">
								<div class="col-md-12">
									<div class="skill-info">
										<h4>设置</h4>
							<script type="text/javascript">
							 var user='${qq.userName}'
							var pass='${qq.password}'
							function updpass() {
							var us=$("#text2").val();
							var id=${qq.id};
							var pass1=$("#text3").val();
							var pass2=$("#text4").val();
if(us == "") {
alert("用户名不能为空!");
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
							
							</script>
										<form>
											<div class="row mt-3">
												<div class="col-12 col-sm-6">  
													<div class="form-group">
														<label>用户名</label>
														<input type="text" id="text2" value="${qq.userName }"  class="form-control">
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
				</div>
				
				<!-- Footer -->
				<footer>
									
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