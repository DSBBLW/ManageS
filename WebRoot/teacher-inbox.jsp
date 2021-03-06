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
			function all(bool,email,love){
			
			    var bool ="";
			    var love = "";
				var email = '${qq.email}';
				$.ajax({
				url:'seleEm1',
				type:'get',
				data:{email:email,bool:bool,love:love},
				success:function(data){
					var aaa="";
					$(data).each(function(i,item){
					
       				aaa+="<tr class='unread clickable-row' onclick='show1("+item.emailid+");'><td><input name='a' value="+item.emailid+" type='checkbox' class='checkmail'></td>";
       				
       				aaa+="<td class='name'>"+item.sendemail+"</td>";
       				aaa+="<td class='subject'>"+item.headtext+"</td>";
       				aaa+="<td></td><td class='mail-date'>"+item.createtime+"</td>";
       				
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
									<p class="text-muted mb-0">??????</p>
								</div>
							</div>
							<a class="dropdown-item" href="teacher-details.jsp">????????????</a>
							<a class="dropdown-item" href="teacher-inbox.jsp">????????????</a>
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
								<a href="teacher-index.jsp"><i class="fas fa-th-large"></i> <span>?????????</span></a>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-user-graduate"></i> <span> ??????</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="teacher-students.jsp">????????????</a></li>
									<li><a href="teacher-add-student.jsp">????????????</a></li>
									<li><a href="teacher-edit-student.jsp">????????????</a></li>
								</ul>
							</li>
							<li><a href="teacher-subjects.jsp"><i class="fas fa-book-reader"></i> <span>????????????</span> </a></li>

							<li class="menu-title"> 
								<span>??????</span>
							</li>
							<li> 
								<a href="teacher-holiday.jsp"><i class="fas fa-holly-berry"></i> <span>??????</span></a>
							</li>
							<li class="submenu">
								<!-- ?????? --><a href="#"><i class="fas fa-clipboard-list"></i> <span>??????</span> <span class="menu-arrow"></span></a>
								<ul>
									<!-- ???????????? --><li><a href="teacher-student-exam.jsp">????????????</a></li>
									<!-- ???????????? --><li><a href="teacher-add-exam.jsp">????????????</a></li>
									
								</ul>
							</li>
							<li> 
								<a  href="teacher-student-event.jsp"><i class="fas fa-calendar-day"></i> <span>????????????</span></a>
							</li>
							<li  class="active"> 
								<a  href="teacher-inbox.jsp"><i class="fas fa-calendar-day"></i> <span>??????Email</span></a>
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
								<h3 class="page-title">??????Email</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="teacher-index.jsp">?????????</a></li>
									<li class="breadcrumb-item active">??????Email</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
					<div class="row">
						<div class="col-lg-3 col-md-4">
							
							<ul class="inbox-menu">
								<li class="active">
									<a href="#"><i class="fas fa-download"></i> ????????? <span class="mail-count"></span></a>
								</li>
								<li>
									<a href="#"><i class="far fa-star"onclick="bool();"></i>????????????</a>
								</li>
								<li>
									<a id="btn_add" onclick="show()"><i class="far fa-paper-plane"></i>?????????</a>
									<script type="text/javascript">
									 //???????????????????????????
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
 			});
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
						alert("????????????");
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
							alert("???????????????????????????");
							}
							}	
 </script>
  <h4 class="modal-title" id="myModalLabel">????????????</h4>
  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
 </div>	
 <div class="modal-body">
<div class="form-group">
  <select onchange="sho()" name="txt_parentdepartment" class="form-control" id="txt_parentdepartment">
  <option value="">????????????????????????</option>
  <option value="1">??????</option>
  <option value="2">??????</option>
  </select>
  </div>
  
  
  <div class="form-group">
  <label for="txt_departmentname">???????????????</label>
  <input onchange="sho()" type="text"  name="txt_departmentname" class="form-control" id="txt_departmentname" placeholder="Email">
   <div id="hide1" style="display:none;color:red">
  		???????????????
  </div>
  </div>
  
  <div class="form-group">
  <label for="txt_departmentlevel">???????????????</label>
  <input onchange="sho()" type="text" name="txt_departmentlevel" class="form-control" id="txt_departmentlevel" placeholder="??????">
  
  </div>
   
  <div class="form-group">
  <label for="txt_statu">???????????????</label>
 <textarea onchange="sho();" rows="10" cols="10" name="txt_statu" class="form-control" id="txt_statu">
 </textarea>
   
  </div>
  
 </div>
 <div class="modal-footer">
  <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>??????</button>
  <button onclick="add()" type="button" id="btn_submit" class="btn btn-primary" data-dismiss="modal">
  <span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>??????</button>
 </div>
 </div>
 </div>
 </div>



									<script type="text/javascript">
									 //???????????????????????????
 									function show1(id){
 									$("#myModal1").modal();
 										var email='${qq.email}';
 										$.ajax({
										url:'seleEMaa',
										type:'get',
										data:{email:email,id:id},
										success:function(data){
										var aaa="";
											$(data).each(function(i,item){
											aaa+="<textarea  rows='10' cols='10' name='txt_statu' class='form-control'>"+item.text+"</textarea>";
											});
											$("#texta").html(aaa);
											
											}
										}); 
 									}
									</script>

<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
 <div class="modal-dialog modal-lg" role="document">
 
 <div class="modal-content">

 <div class="modal-header">
								
 <h4 class="modal-title" id="myModalLabel">????????????</h4>
  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
 </div>	
 <div class="modal-body">
 <div class="form-group">
  <label for="txt_statu">????????????</label>
  <div id="texta">
 <textarea  rows="10" cols="10" name="txt_statu" class="form-control" id="txt_statu">
 </textarea>
   </div>
  </div>
 </div>
 <div class="modal-footer">
 </div>
 </div>
 </div>
 </div>	
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
													<!-- div class="btn-group dropdown-action">
														<button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown">?????? <i class="fas fa-angle-down"></i></button>
														<div class="dropdown-menu">
															
														</div>
													</div> -->
													<div class="btn-group dropdown-action">
														<!-- <button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown">??????<i class="fas fa-angle-down"></i></button>
														<div class="dropdown-menu">
															
															<a class="dropdown-item" onclick="del();" href="#">??????</a>
														</div> -->
													</div>
													
													
													<!-- <div class="btn-group dropdown-action mail-search">
														<input type="text" placeholder="????????????" class="form-control search-message">
													</div> -->
												</div>
											</div>
											<div class="col-auto top-action-right">
												<div class="text-right">
													
													
													<!-- <div class="btn-group">
														<a class="btn btn-white"><i class="fas fa-angle-left"></i></a>
														<a class="btn btn-white"><i class="fas fa-angle-right"></i></a>
													</div> -->
												</div>
												
											</div>
										</div>
									</div>
									<div class="email-content">
										<div class="table-responsive">
										
											<table class="table table-inbox table-hover">
												<thead>
													<tr>
														<th>
															<input type="checkbox" onclick="quan()" id="selectAll">
															
														</th>
														<td>???????????????</td>
														<td>????????????</td>
														<td></td>
														<td>????????????</td>
														<td><a onclick="del();">??????</a></td>
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
