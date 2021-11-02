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
        <title>Preskool - Exam</title>
		
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
  <script type="text/javascript" src="assets/js/jquery-1.12.4.js"></script>
        <script type="text/javascript">
        $(function(){
			read();
		});
       	function read(){
       	$("#aaaa").html("");
       	$("#num").html("");
       		var email = '${qq.email}';
       		$.ajax({
				url:'seleaaa',
				type:'get',
				data:{email:email},
				success:function(data){
				var peopl = "";
				$(data).each(function(i,item){
					peopl+="<li class='notification-message'onclick='clear("+item.id+");'><a href='student-inbox.jsp'><div class='media'><span class='avatar avatar-sm'></span>";
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
									<p class="text-muted mb-0">学生</p>
								</div>
							</div>
							<a class="dropdown-item" href="student-details.jsp">我的信息</a>
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
							<li>
								<a href="student-details.jsp"><i class="fas fa-user-graduate"></i><span>学生信息</span></a>
							</li>
							<li  class="active" > 
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
						<div class="row align-items-center">
							<div class="col">
								<h3 class="page-title">考试日期</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.jsp">仪表板</a></li>
									<li class="breadcrumb-item active">考试日期</li>
								</ul>
							</div>
							
						</div>
					</div>
					<!-- /Page Header -->
				
					<div class="row">
					<div class="top-nav-search">
					<form>
						<input type="text" value="" id="ss" class="form-control" placeholder="Search here">
						<button class="btn" onclick="sou()" type="button"><i class="fas fa-search"></i></button>
					</form>
				</div>
						<div class="col-sm-12">
						
							<div class="card card-table">
								<div class="card-body">
									<div class="table-responsive">
									<script type="text/javascript">
					var index=0;
					var s="";
					$(function(){
						cha();
						read();
					});
					function cha(ii,name){
					inde=ii;
					/* 查询 */
      				$.ajax({
       				url:'/ManageS/selexamdata',
       				type:'get',
       				data:{index:inde,name:name},
       				success:function(data){
       				
       				index=data.index;
        			var aaa="";
       				$(data.list).each(function(i,item){
       				aaa+="<tr><td>"+item.id+"</td>";
      				 aaa+="<td>"+item.examname+"</td>";
       				aaa+="<td>"+item.cname+"</td>";
       				aaa+="<td>"+item.dbegins+"</td>";
       				aaa+="<td>"+item.dends+"</td>";
       				
       				$("#exam").html(aaa);
      				});
      				paging(data.count);
    				   }
      				});
      				}
      				/* 分页 */
      			function paging(coun){
      				var str="";
       					str+="<a onclick='getS()' class='btn btn-outline-primary mr-2'>首页</a>";
       					str+="<a onclick='getShang()' class='btn btn-outline-primary mr-2'>上一页</a>";
       					str+="<a onclick='getXia("+coun+")' class='btn btn-outline-primary mr-2'>下一页</a>";
       					str+="<a onclick='getWy("+coun+")' class='btn btn-outline-primary mr-2'>尾页</a>";
       					$("#paging").html(str);	
       				}
       				/* 首页 */
       				function getS(){
       					cha(1,s);
       				}
       				/* 尾页 */
       				function getWy(con){
       				
       				con=con;
       					cha(con,s);
       				
       				}
       				/* 上一页 */
       			function getShang(){
       				index=index-1==0?1:index-1;
       				cha(index,s);
       			}
       			/* 下一页 */
      			function getXia(con){
      				index=index+1>=con?con:index+1;
      				cha(index,s);
      			
      			}
      			/* 搜索 */
      			function sou(){
					s=$("#ss").val();
					cha(1,s);	
				}
      				</script>
										<table class="table table-hover table-center mb-0">
											<thead>
												<tr>
													<th>id</th>
													<th>考试类型</th>
													<th>考试班级</th>
													<th>开始时间</th>
													<th>结束时间</th>
												</tr>
											</thead>
											<tbody id="exam">
												
											</tbody>
										</table>
										<div class="col-auto text-right float-right ml-auto" id="paging">
										</div>
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

		<!-- Datatables JS -->
		<script src="assets/plugins/datatables/datatables.min.js"></script>
		
		<!-- Custom JS -->
		<script src="assets/js/script.js"></script>
    </body>
</html>