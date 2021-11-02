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
        <title>Preskool - Register</title>
		
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
        <div class="main-wrapper login-body">
            <div class="login-wrapper">
            	<div class="container">
                	<div class="loginbox">
                    	<div class="login-left">
							<img class="img-fluid" src="assets/img/logo-white.png" alt="Logo">
                        </div>
                        <div class="login-right">
							<div class="login-right-wrap">
								<h1>注册</h1>
								<!-- Form -->
								<form id="qw" method="get"  onsubmit="return checkForm(this);" action="addlo">
									<div class="form-group">
										<select id="text5" name="userType" class="form-control">
										<option value="">请选择身份</option>
										<option value="1">学生</option>
										<option value="2">老师</option>
										</select>
									</div>
									<div class="form-group">
										<input class="form-control" name="stid" type="text" id="text1" placeholder="学号" onchange="stu();">
									</div>
									<div class="form-group">
										<input class="form-control" name="userName" type="text" id="text2" placeholder="用户名">
									</div>
									<div class="form-group">
										<input class="form-control" name="password" type="password" id="text3" placeholder="密码">
									</div>
									<div class="form-group">
										<input class="form-control" type="password" id="text4" placeholder="确认密码">
									</div>
									
									<div class="form-group mb-0">
										<button class="btn btn-primary btn-block" type="submit">注册</button>
									</div>
								</form>
								<!-- /Form -->
								<script type="text/javascript">
								
function checkForm(form) {
	if($("#text5").val() == "") {
		alert("身份不能为空!");
		return false;
	}
	if($("#text1").val() == "") {
		alert("学号不能为空!");
		return false;
	}
	if($("#text2").val() == "") {
		alert("用户名不能为空!");
		return false;
	}
	if($("#text3").val() == "") {
		alert("密码不能为空!");
		return false;
	}
	if(($("#text3").val())!=($("#text4").val())){
		alert("密码必须一致");
		return false;
	}
	return true;
}
														
										
												function stu(){
												var type1=$("#text5").val();
												var type =parseInt(type1);
												var id1=$("#text1").val();
												var id = parseInt(id1);
												$.ajax({
														async:false,
       													url:'stuid',
       													type:'get',
       													data:{id:id1,type:type1},
       													success:function(data){
       													if(data!=null&&data>0){
															alert("您已经注册");
															$("#text1").val("");
														}
													}	
													});
												
												$.ajax({
												url:'selid',
												type:'get',
												data:{id:id,type:type},
		 										success: function(data){						
           											if(data==0){
														alert("此学号或职工号不存在");
														$("#text1").val("");
													}
            									}
        										});
		
												}
												
												</script>
								
								
								<!-- /Social Login -->
								
								<div class="text-center dont-have">已经有账户了? <a href="login.jsp">登录 </a></div>
							</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<!-- /Main Wrapper -->
		
		<!-- jQuery -->
        <script src="assets/js/jquery-3.5.1.min.js"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		
		<!-- Custom JS -->
		<script src="assets/js/script.js"></script>
		
    </body>
</html>
