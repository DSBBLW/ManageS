<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE jsp>
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

		<!-- Datatables CSS -->
		<link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">
		
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
							
							<a class="dropdown-item" href="inbox.jsp">????????????</a>
							<a class="dropdown-item" href="login.jsp">??????</a>
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
									<!-- ???????????? --><li><a href="students.jsp"  class="active">????????????</a></li>
									<!-- ???????????? --><li><a href="add-student.jsp">????????????</a></li>
									<!-- ???????????? --><li><a href="edit-student.jsp">????????????</a></li>
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
								<h3 class="page-title">??????</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.jsp">????????????</a></li>
									<li class="breadcrumb-item active">??????</li>
								</ul>
							</div>
							<div class="col-auto text-right float-right ml-auto">
								<!-- <a href="#" class="btn btn-outline-primary mr-2"><i class="fas fa-download"></i> Download</a> -->
								<a href="add-student.jsp" class="btn btn-primary"><i class="fas fa-plus"></i></a>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
				
					<div class="row">
					<!-- Search Bar -->
					<script type="text/javascript">
					var index=0;
					var s="";
					$(function(){
					
						cha();
					});
					function cha(ii,name){
					inde=ii;
					/* ?????? */
      				$.ajax({
       				url:'sele',
       				type:'get',
       				data:{index:inde,name:name},
       				success:function(data){
       				index=data.index;
        			var aaa="";
       				$(data.list).each(function(i,item){
       				aaa+="<tr><td>"+item.id+"</td>";
      				 aaa+="<td><h2 class='table-avatar'><a href='student-details.jsp' class='avatar avatar-sm mr-2'><img class='avatar-img rounded-circle' src='assets/img/profiles/"+item.photo+"' alt='User Image'></a><a href='student-details.jsp'>"+item.sname+"</a></td>";
       				aaa+="<td>"+item.classs+"</td>";
       				aaa+="<td>"+item.bornDates+"</td>";
       				aaa+="<td>"+item.arean+"</td>";
       				aaa+="<td><a onclick='upd("+item.id+")'  class='btn btn-sm bg-success-light mr-2'>"+
						"<i class='fas fa-pen'></i>"+
						"</a>"+
						"<a onclick='del("+item.id+")' class='btn btn-sm bg-danger-light'>"+
						"<i class='fas fa-trash'></i>"+
						"</a></td>";
       				$("#tab").html(aaa);
      				});
      				paging(data.count);
    				   }
      				});
      				}
      				/* ?????? */
      				function upd(id){
      					window.location="upd?id="+id;
      				}
      				/* ?????? */
      				function del(id){
      					$.ajax({
       				url:'del',
       				type:'get',
       				data:{id:id},
       				success:function(data){
       					cha(index,s);
       				}
       				});
      				
      				}
      			/* ?????? */
      			function paging(coun){
      				var str="";
       					str+="<a onclick='getS()' class='btn btn-outline-primary mr-2'>??????</a>";
       					str+="<a onclick='getShang()' class='btn btn-outline-primary mr-2'>?????????</a>";
       					str+="<a onclick='getXia("+coun+")' class='btn btn-outline-primary mr-2'>?????????</a>";
       					str+="<a onclick='getWy("+coun+")' class='btn btn-outline-primary mr-2'>??????</a>";
       					$("#paging").html(str);	
       				}
       				/* ?????? */
       				function getS(){
       					cha(1,s);
       				}
       				/* ?????? */
       				function getWy(con){
       				con=con;
       					cha(con,s);
       				
       				}
       				/* ????????? */
       			function getShang(){
       				index=index-1==0?1:index-1;
       				cha(index,s);
       			}
       			/* ????????? */
      			function getXia(con){
      				index=index+1>=con?con:index+1;
      				cha(index,s);
      			
      			}
      			/* ?????? */
      			function sou(){
					s=$("#ss").val();
					cha(1,s);	
				}
					</script>
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
									
										<table class="table table-hover table-center mb-0 ">
											<thead>
												<tr>
													<th>ID</th>
													<th>??????</th>
													<th>??????</th>
													<th>????????????</th>
													<th>??????	</th>
													<th>??????</th>
																									
													</tr>
											</thead>
											<tbody id="tab">
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
					<p>Copyright ?? 2020By </p>					
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