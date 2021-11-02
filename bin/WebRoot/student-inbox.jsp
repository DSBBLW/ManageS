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
        <title>Preskool - Inbox</title>
        
		
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
				all();
			});
			function all(bool,email){
			
			    var bool ="";
			    var love = "";
				var email = '${qq.email}';
				$.ajax({
				url:'seleEm',
				type:'get',
				data:{email:email,bool:bool,love:love},
				success:function(data){
					var aaa="";
					$(data).each(function(i,item){
       				aaa+="<tr class='unread clickable-row'><td><input name='a' value="+item.emailid+" type='checkbox' class='checkmail'></td>";
       				if(item.love == 0){
       					aaa+="<td onclick='showsc("+item.emailid+")'><span  class='mail-important'><i class='far fa-star'></i></span></td>";
       				}else{
       					aaa+="<td onclick='showbc("+item.emailid+")'><span class='mail-important'><i class='fas fa-star starred'></i></span></td>";
       				}
       				aaa+="<td class='name'>"+item.sendemail+"</td>";
       				aaa+="<td class='subject'>"+item.headtext+"</td>";
       				aaa+="<td></td><td class='mail-date'>"+item.createDate+"</td>";
					}); 
					$("#tab").html(aaa);
				}
				});
			}
			function showsc(id){
			$.ajax({
				url:'sc',
				type:'get',
				data:{id:id},
				success:function(data){
				all();
				}
				})
			}
			function showbc(id){
			$.ajax({
				url:'bc',
				type:'get',
				data:{id:id},
				success:function(data){
				all();
				}
				})
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
								<span>主菜单</span>
							</li>
							<li> 
								<a href="student-index.jsp"><i class="fas fa-th-large"></i> <span>仪表板</span></a>
							</li>
							<li>
								<a href="student-details.jsp"><i class="fas fa-user-graduate"></i><span>学生信息</span></a>
							</li>
							<li > 
								<a  href="student-event.jsp"><i class="fas fa-calendar-day"></i> <span>考试时间</span></a>
							</li>
							<li class="active"> 
								<a  href="student-inbox.jsp"><i class="fas fa-calendar-day"></i> <span>我的Email</span></a>
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
								<h3 class="page-title">我的Email</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="teacher-index.jsp">仪表板</a></li>
									<li class="breadcrumb-item active">我的Email</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
					<div class="row">
						<div class="col-lg-3 col-md-4">
							
							<ul class="inbox-menu">
								<li class="active">
									<a href="#"><i class="fas fa-download"></i> 收件箱 <span class="mail-count">(5)</span></a>
								</li>
								<li>
									<a href="#"><i class="far fa-star"></i> 收藏</a>
								</li>
								<li>
									<a id="btn_add" onclick="show()"><i class="far fa-paper-plane"></i>发邮件</a>
									<script type="text/javascript">
									 //注册新增按钮的事件
 									function show(){
									 $('#myModal').modal();  
 									}
									</script>
									<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
 <div class="modal-dialog modal-lg" role="document">
 
 <div class="modal-content">

 <div class="modal-header">
 <script type="text/javascript">
 $(function(){
 	sho();		
 });
 function sho(){
 			var send='${qq.email}';
 			var inbox=$("#txt_departmentname").val();
 			var head=$("#txt_departmentlevel").val();
 			var text=$("#txt_statu").val();
 			var type=$("#txt_parentdepartment").val();
 			if(type!=""&&
 			inbox!=""){
 			$.ajax({
				url:'judge',
				type:'get',
				data:{type:type,email:inbox},
				success:function(data){
				if(data==null){
					$("#hide1").show();
					$("#btn_submit").attr("disabled",true);
				}else{
				$("#hide1").hide();
				}
 			}
 			})
 			}
 			if(type==""||
 			inbox==""||
 			head==""||
 			text==""
 			){
 			$("#btn_submit").attr("disabled",true);
 			}else{
 			$("#btn_submit").attr("disabled",false);
 			}
 			}
 		function add(){
 			var send='${qq.email}';
 			var inbox=$("#txt_departmentname").val();
 			var head=$("#txt_departmentlevel").val();
 			var text=$("#txt_statu").val();
 			var type=$("#txt_parentdepartment").val();
 			 $.ajax({
				url:'addEmail',
				type:'get',
				data:{send:send,inbox:inbox,head:head,text:text},
				success:function(data){
					if(data>0){
						alert("发送成功");
					}
				}
				}); 
 		}
 		
 						
 						function quan(){
 						var i=0;
 						if(i==0){
 						 $("input[name='a']").each(function(i,item){
								$(item).prop("checked",true);
								
							});
                   			 i=1;
 						}else{
 						  $("input[name='a']").each(function(i,item){
								$(item).prop("checked",false);
							});
                    	i=0;
 						}
 						}
 						function del(){
						var str="";
							$("input[name='a']").each(function(i,item){
								if($(item).prop("checked")==true){
									str+=$(item).val()+",";
								}
							});
							alert(str);
							if(str!=""){
								$.ajax({
								url:'Recentdelall',
								type:'get',
								data:{d:str},
								success:function(data){
									all();
								
								}
								});		
							}else{
							alert("你没有选取任何内容");
							}
							}	
 </script>
  <h4 class="modal-title" id="myModalLabel">发送邮件</h4>
  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
 </div>	
 <div class="modal-body">
<div class="form-group">
  <select onchange="sho()" name="txt_parentdepartment" class="form-control" id="txt_parentdepartment">
  <option value="">选择收件人的身份</option>
  <option value="1">学生</option>
  <option value="2">老师</option>
  </select>
  </div>
  
  
  <div class="form-group">
  <label for="txt_departmentname">收件人邮箱</label>
  <input onchange="sho()" type="text"  name="txt_departmentname" class="form-control" id="txt_departmentname" placeholder="Email">
   <div id="hide1" style="display:none;color:red">
  		没有此邮箱
  </div>
  </div>
  
  <div class="form-group">
  <label for="txt_departmentlevel">发送的标题</label>
  <input onchange="sho()" type="text" name="txt_departmentlevel" class="form-control" id="txt_departmentlevel" placeholder="标题">
  
  </div>
   
  <div class="form-group">
  <label for="txt_statu">发送的邮件</label>
 <textarea onchange="sho();" rows="10" cols="10" name="txt_statu" class="form-control" id="txt_statu">
 </textarea>
   
  </div>
  
 </div>
 <div class="modal-footer">
  <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
  <button onclick="add()" type="button" id="btn_submit" class="btn btn-primary" data-dismiss="modal">
  <span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>发送</button>
 </div>
 </div>
 </div>
 </div>

									
								</li>
								
								<li>
									<a href="#"><i class="far fa-trash-alt"></i> 垃圾箱</a>
								</li>
							</ul>
						</div>
						
						<div class="col-lg-9 col-md-8">
							<div class="card">
								<div class="card-body">
									<div class="email-header">
										<div class="row">
											<div class="col top-action-left">
												<div class="float-left">
													<div class="btn-group dropdown-action">
														<button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown">显示 <i class="fas fa-angle-down"></i></button>
														<div class="dropdown-menu">
															<a class="dropdown-item" href="#">全部</a>
															<div class="dropdown-divider"></div> 
															<a class="dropdown-item" href="#">已读</a>
															<a class="dropdown-item" href="#">未读</a>
														</div>
													</div>
													<div class="btn-group dropdown-action">
														<button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown">操作<i class="fas fa-angle-down"></i></button>
														<div class="dropdown-menu">
															<a class="dropdown-item" href="#">查看</a>
															
															<div class="dropdown-divider"></div> 
															<a class="dropdown-item" onclick="del();" href="#">删除</a>
														</div>
													</div>
													
													
													<div class="btn-group dropdown-action mail-search">
														<input type="text" placeholder="搜索信息" class="form-control search-message">
													</div>
												</div>
											</div>
											<div class="col-auto top-action-right">
												<div class="text-right">
													<button onclick="all1()" type="button" title="刷新" data-toggle="tooltip" class="btn btn-white d-none d-md-inline-block"><i class="fas fa-sync-alt"></i></button>
													<script type="text/javascript">
													function all1(){
													all();
													}
													</script>
													<div class="btn-group">
														<a class="btn btn-white"><i class="fas fa-angle-left"></i></a>
														<a class="btn btn-white"><i class="fas fa-angle-right"></i></a>
													</div>
												</div>
												
											</div>
										</div>
									</div>
									<div class="email-content">
										<div class="table-responsive">
										
											<table class="table table-inbox table-hover">
												<thead>
													<tr>
														<th colspan="6">
															<input type="checkbox" onclick="quan()" id="selectAll">
														
														</th>
													</tr>
												</thead>
												<tbody id="tab">
													
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				
				</div>			
			</div>
			<!-- /Main Wrapper -->
		
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