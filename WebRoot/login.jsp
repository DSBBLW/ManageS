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
        <title>Preskool - Login</title>
		
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
    </head>
    <body>
	<script type="text/javascript">
		
			
											function my(){
											var ph=$("#text1").val();
											var pa=$("#text2").val();
											var ty1=$("#text3").val();
											var sb="";
											var ty=parseInt(ty1);
											if(ph == "") {
													alert("手机号不能为空!");
													
												}else if(pa == "") {
													alert("密码不能为空!");
		
												}else {
												$.ajax({
												url:'login1',
												async:false,
												type:'get',
												data:{ty:ty,ph:ph,pa:pa},
		 										success: function(data){
           											if(data==null){
														alert("身份，手机号或者密码错误");
														$("text1").val(0);
														$("text2").val("");
														$("text3").val("");
													}else{
													 sb="login?userType="+ty+"&phonenum="+ph+"&password="+pa; 
													}
            									}
        										});
		}
		window.location=sb;
		}
			
	</script>
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
								<h1>登录</h1>
								<!-- <p class="account-subtitle">Access to our dashboard</p> -->
								
								<!-- Form -->
								<form>
									<div class="form-group">
										<select name="userType" id="text3" class="form-control">
										<option value="0">请选择身份</option>
										<option value="1">学生</option>
										<option value="2">老师</option>
										</select>
									</div>
									<div class="form-group">
										<input class="form-control" id="text1" name="phonenum" type="text" placeholder="电话号码">
									</div>
									<div class="form-group">
										<input class="form-control" id="text2" name="password" type="password" placeholder="密码">
									</div>				
									<div class="form-group">
										<a class="btn btn-primary btn-block" id="sub"  onclick="my()" type="submit">登录</a>
									</div>
								</form>
								<!-- /Form -->
								<!-- <div class="text-center forgotpass"><a href="forgot-password.jsp">忘记密码?</a></div>
								<div class="login-or">
									<span class="or-line"></span>
									<span class="span-or">or</span>
								</div> -->
								<!-- /Social Login -->
								<div class="text-center dont-have">没有账户? <a href="register.jsp">注册</a></div>
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
