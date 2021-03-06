<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Preskool - Teachers</title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" href="assets/img/favicon.png">
	
		<link rel="stylesheet" href="assets/css/teachers.css">
		
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
						<input type="text" class="form-control" placeholder="请输入">
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
								<!-- 仪表板 --><a href="index.jsp"><i class="fas fa-th-large"></i> <span>仪表板</span></a>
							</li>
							<li class="submenu">
								<!-- 学生 --><a href="#"><i class="fas fa-user-graduate"></i> <span> 学生</span> <span class="menu-arrow"></span></a>
								<ul>
									<!-- 学生列表 --><li><a href="students.jsp" >学生列表</a></li>
									<!-- 添加学生 --><li><a href="add-student.jsp">添加学生</a></li>
									<!-- 编辑学生 --><li><a href="edit-student.jsp">编辑学生</a></li>
								</ul>
							</li>
							<li class="submenu active">
								<!-- 教师 --><a href="#"><i class="fas fa-chalkboard-teacher"></i> <span> 教师</span> <span class="menu-arrow"></span></a>
								<ul>
									<!-- 教师列表 --><li><a href="teachers.jsp" class="active">教师列表</a></li>
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
								<h3 class="page-title">教师</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.jsp">仪表板</a></li>
									<li class="breadcrumb-item active">教师</li>
								</ul>
							</div>
							<div class="col-auto text-right float-right ml-auto">
								<a href="add-teacher.jsp" class="btn btn-primary"><i class="fas fa-plus"></i></a>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
				
					<div class="row">
						<div class="col-sm-12">
						
							<div class="card card-table">
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-hover table-center mb-0 datatable">
											<thead>
												<tr>
													<th>ID</th>
													<th>姓名</th>
													<th>薪资</th>
													<th>职位</th>
													<th>电话</th>
													<th>Email</th>
													<th class="text-right">功能</th>
												</tr>
											</thead>
											<tbody id="table">
											
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
		<script src="/assets/plugins/datatables/datatables.min.js"></script>
		
		<!-- Custom JS -->
		<script src="assets/js/script.js"></script>
	<script type="text/javascript">
				var index=0;
					var s="";
					$(function(){
					
						cha();
					});
					function cha(ii,name){
					inde=ii;
					/* 查询 */
      				$.ajax({
       				url:'seletea',
       				type:'get',
       				data:{index:inde,name:name},
       				success:function(data){
       				index=data.index;
        			var aaa="";
       				var list="";
  					$(data.list).each(function(i,item){
  					list+="<tr><td>"+item.id+"</td>";
  					list+="<td>"+item.thname+"</td>";
  					list+="<td>"+item.money+"</td>";
  					list+="<td>"+item.post+"</td>";
  					list+="<td>"+item.phonenum+"</td>";
  					list+="<td>"+item.email+"</td>";
  					list+="<td><a onclick='upd("+item.id+")'  class='btn btn-sm bg-success-light mr-2'>"+
						"<i class='fas fa-pen'></i>"+
						"</a>"+
						"<a onclick='del("+item.id+")' class='btn btn-sm bg-danger-light'>"+
						"<i class='fas fa-trash'></i>"+
						"</a></td>";
  					$("#table").html(list);
      				});
      				paging(data.count);
    				
    				}
      				});
      				}
      				/* 修改 */
      				function upd(id){
      					window.location="updseltea?id="+id;
      				}
      				/* 删除 */
      				function del(id){
      					
      					$.ajax({
    					url:'deleteas',
    					type:'get',
    					data:{index:id},
    					success:function(data){
  							cha();
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
    </body>
</html>