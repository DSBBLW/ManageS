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
        <title>Preskool - Form Validation</title>
		
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
								<span>Main Menu</span>
							</li>
							<li> 
								<a href="index.jsp"><i class="fas fa-th-large"></i> <span>Dashboard</span></a>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-user-graduate"></i> <span> Students</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="students.jsp">Student List</a></li>
									<li><a href="student-details.jsp">Student View</a></li>
									<li><a href="add-student.jsp">Student Add</a></li>
									<li><a href="edit-student.jsp">Student Edit</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-chalkboard-teacher"></i> <span> Teachers</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="teachers.jsp">Teacher List</a></li>
									<li><a href="teacher-details.jsp">Teacher View</a></li>
									<li><a href="add-teacher.jsp">Teacher Add</a></li>
									<li><a href="edit-teacher.jsp">Teacher Edit</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-building"></i> <span> Departments</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="departments.jsp">Department List</a></li>
									<li><a href="add-department.jsp">Department Add</a></li>
									<li><a href="edit-department.jsp">Department Edit</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-book-reader"></i> <span> Subjects</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="subjects.jsp">Subject List</a></li>
									<li><a href="add-subject.jsp">Subject Add</a></li>
									<li><a href="edit-subject.jsp">Subject Edit</a></li>
								</ul>
							</li>

							<li class="menu-title"> 
								<span>Management</span>
							</li>

							<li class="submenu">
								<a href="#"><i class="fas fa-file-invoice-dollar"></i> <span> Accounts</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="fees-collections.jsp">Fees Collection</a></li>
									<li><a href="expenses.jsp">Expenses</a></li>
									<li><a href="salary.jsp">Salary</a></li>
									<li><a href="add-fees-collection.jsp">Add Fees</a></li>
									<li><a href="add-expenses.jsp">Add Expenses</a></li>
									<li><a href="add-salary.jsp">Add Salary</a></li>
								</ul>
							</li>
							<li> 
								<a href="index.jsp"><i class="fas fa-holly-berry"></i> <span>Holiday</span></a>
							</li>
							<li> 
								<a href="index.jsp"><i class="fas fa-comment-dollar"></i> <span>Fees</span></a>
							</li>
							<li> 
								<a href="index.jsp"><i class="fas fa-clipboard-list"></i> <span>Exam list</span></a>
							</li>
							<li> 
								<a href="index.jsp"><i class="fas fa-calendar-day"></i> <span>Events</span></a>
							</li>
							<li> 
								<a href="index.jsp"><i class="fas fa-table"></i> <span>Time Table</span></a>
							</li>
							<li> 
								<a href="index.jsp"><i class="fas fa-book"></i> <span>Library</span></a>
							</li>

							<li class="menu-title"> 
								<span>Pages</span>
							</li>

							<li class="submenu">
								<a href="#"><i class="fas fa-shield-alt"></i> <span> Authentication </span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="login.jsp">Login</a></li>
									<li><a href="register.jsp">Register</a></li>
									<li><a href="forgot-password.jsp">Forgot Password</a></li>
									<li><a href="error-404.jsp">Error Page</a></li>
								</ul>
							</li>
							<li> 
								<a href="blank-page.jsp"><i class="fas fa-file"></i> <span>Blank Page</span></a>
							</li>

							<li class="menu-title"> 
								<span>Others</span>
							</li>

							<li> 
								<a href="sports.jsp"><i class="fas fa-baseball-ball"></i> <span>Sports</span></a>
							</li>
							<li> 
								<a href="hostel.jsp"><i class="fas fa-hotel"></i> <span>Hostel</span></a>
							</li>
							<li> 
								<a href="transport.jsp"><i class="fas fa-bus"></i> <span>Transport</span></a>
							</li>
							<li class="menu-title"> 
								<span>UI Interface</span>
							</li>
							<li> 
								<a href="components.jsp"><i class="fas fa-vector-square"></i> <span>Components</span></a>
							</li>
							<li class="submenu active">
								<a href="#"><i class="fas fa-columns"></i> <span> Forms </span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="form-basic-inputs.jsp">Basic Inputs </a></li>
									<li><a href="form-input-groups.jsp">Input Groups </a></li>
									<li><a href="form-horizontal.jsp">Horizontal Form </a></li>
									<li><a href="form-vertical.jsp"> Vertical Form </a></li>
									<li><a href="form-mask.jsp"> Form Mask </a></li>
									<li><a href="form-validation.jsp" class="active"> Form Validation </a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-table"></i> <span> Tables </span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="tables-basic.jsp">Basic Tables </a></li>
									<li><a href="data-tables.jsp">Data Table </a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="javascript:void(0);"><i class="fas fa-code"></i> <span>Multi Level</span> <span class="menu-arrow"></span></a>
								<ul>
									<li class="submenu">
										<a href="javascript:void(0);"> <span>Level 1</span> <span class="menu-arrow"></span></a>
										<ul>
											<li><a href="javascript:void(0);"><span>Level 2</span></a></li>
											<li class="submenu">
												<a href="javascript:void(0);"> <span> Level 2</span> <span class="menu-arrow"></span></a>
												<ul>
													<li><a href="javascript:void(0);">Level 3</a></li>
													<li><a href="javascript:void(0);">Level 3</a></li>
												</ul>
											</li>
											<li><a href="javascript:void(0);"> <span>Level 2</span></a></li>
										</ul>
									</li>
									<li>
										<a href="javascript:void(0);"> <span>Level 1</span></a>
									</li>
								</ul>
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
							<div class="col-sm-12">
								<h3 class="page-title">Form Validation</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
									<li class="breadcrumb-item active">Form Validation</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
					<!-- Row -->
					<div class="row">
						<div class="col-sm-12">
						
							<!-- Custom Boostrap Validation -->
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-2">Custom Bootstrap Form Validation</h5>
									<p class="card-text">For custom Bootstrap form validation messages, you’ll need to add the <code>novalidate</code> boolean attribute to your form. For server side validation <a href="https://getbootstrap.com/docs/4.1/components/forms/#server-side" target="_blank">read full documentation</a>.</p>
								</div>
								<div class="card-body">
									<div class="row">
										<div class="col-sm">
											<form class="needs-validation" novalidate>
												<div class="form-row">
													<div class="col-md-4 mb-3">
														<label for="validationCustom01">First name</label>
														<input type="text" class="form-control" id="validationCustom01" placeholder="First name" value="Mark" required>
														<div class="valid-feedback">
															Looks good!
														</div>
													</div>
													<div class="col-md-4 mb-3">
														<label for="validationCustom02">Last name</label>
														<input type="text" class="form-control" id="validationCustom02" placeholder="Last name" value="Otto" required>
														<div class="valid-feedback">
															Looks good!
														</div>
													</div>
													<div class="col-md-4 mb-3">
														<label for="validationCustomUsername">Username</label>
														<div class="input-group">
															<div class="input-group-prepend">
																<span class="input-group-text" id="inputGroupPrepend">@</span>
															</div>
															<input type="text" class="form-control" id="validationCustomUsername" placeholder="Username" aria-describedby="inputGroupPrepend" required>
															<div class="invalid-feedback">
																Please choose a username.
															</div>
														</div>
													</div>
												</div>
												<div class="form-row">
													<div class="col-md-6 mb-3">
														<label for="validationCustom03">City</label>
														<input type="text" class="form-control" id="validationCustom03" placeholder="City" required>
														<div class="invalid-feedback">
															Please provide a valid city.
														</div>
													</div>
													<div class="col-md-3 mb-3">
														<label for="validationCustom04">State</label>
														<input type="text" class="form-control" id="validationCustom04" placeholder="State" required>
														<div class="invalid-feedback">
															Please provide a valid state.
														</div>
													</div>
													<div class="col-md-3 mb-3">
														<label for="validationCustom05">Zip</label>
														<input type="text" class="form-control" id="validationCustom05" placeholder="Zip" required>
														<div class="invalid-feedback">
															Please provide a valid zip.
														</div>
													</div>
												</div>
												<div class="form-group">
													<div class="form-check">
														<input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
														<label class="form-check-label" for="invalidCheck">
															Agree to terms and conditions
														</label>
														<div class="invalid-feedback">
															You must agree before submitting.
														</div>
													</div>
												</div>
												<button class="btn btn-primary" type="submit">Submit form</button>
											</form>
										</div>
									</div>
								</div>
							</div>
							<!-- /Custom Boostrap Validation -->
							
							<!-- Default Browser Validation -->
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-2">Browser defaults</h5>
									<p class="card-text">Not interested in custom validation feedback messages or writing JavaScript to change form behaviors? All good, you can use the browser defaults. Try submitting the form below.</p>
								</div>
								<div class="card-body">
									<div class="row">
										<div class="col-sm">
											<form>
												<div class="form-row">
													<div class="col-md-4 mb-3">
														<label for="validationDefault01">First name</label>
														<input type="text" class="form-control" id="validationDefault01" placeholder="First name" value="Mark" required>
													</div>
													<div class="col-md-4 mb-3">
														<label for="validationDefault02">Last name</label>
														<input type="text" class="form-control" id="validationDefault02" placeholder="Last name" value="Otto" required>
													</div>
													<div class="col-md-4 mb-3">
														<label for="validationDefaultUsername">Username</label>
														<div class="input-group">
															<div class="input-group-prepend">
																<span class="input-group-text" id="inputGroupPrepend2">@</span>
															</div>
															<input type="text" class="form-control" id="validationDefaultUsername" placeholder="Username" aria-describedby="inputGroupPrepend2" required>
														</div>
													</div>
												</div>
												<div class="form-row">
													<div class="col-md-6 mb-3">
														<label for="validationDefault03">City</label>
														<input type="text" class="form-control" id="validationDefault03" placeholder="City" required>
													</div>
													<div class="col-md-3 mb-3">
														<label for="validationDefault04">State</label>
														<input type="text" class="form-control" id="validationDefault04" placeholder="State" required>
													</div>
													<div class="col-md-3 mb-3">
														<label for="validationDefault05">Zip</label>
														<input type="text" class="form-control" id="validationDefault05" placeholder="Zip" required>
													</div>
												</div>
												<div class="form-group">
													<div class="form-check">
														<input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
														<label class="form-check-label" for="invalidCheck2">
															Agree to terms and conditions
														</label>
													</div>
												</div>
												<button class="btn btn-primary" type="submit">Submit form</button>
											</form>
										</div>
									</div>
								</div>
							</div>
							<!-- /Default Browser Validation -->

							<!-- Server Side Validation -->
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-2">Server side</h5>
									<p class="card-text">We recommend using client side validation, but in case you require server side, you can indicate invalid and valid form fields with <code>.is-invalid</code> and <code>.is-valid</code>. Note that <code>.invalid-feedback</code> is also supported with these classes.</p>
								</div>
								<div class="card-body">
									<form>
										<div class="form-row">
											<div class="col-md-4 mb-3">
												<label for="validationServer01">First name</label>
												<input type="text" class="form-control is-valid" id="validationServer01" placeholder="First name" value="Mark" required>
												<div class="valid-feedback">
													Looks good!
												</div>
											</div>
											<div class="col-md-4 mb-3">
												<label for="validationServer02">Last name</label>
												<input type="text" class="form-control is-valid" id="validationServer02" placeholder="Last name" value="Otto" required>
												<div class="valid-feedback">
													Looks good!
												</div>
											</div>
											<div class="col-md-4 mb-3">
												<label for="validationServerUsername">Username</label>
												<div class="input-group">
													<div class="input-group-prepend">
														<span class="input-group-text" id="inputGroupPrepend3">@</span>
													</div>
													<input type="text" class="form-control is-invalid" id="validationServerUsername" placeholder="Username" aria-describedby="inputGroupPrepend3" required>
													<div class="invalid-feedback">
														Please choose a username.
													</div>
												</div>
											</div>
										</div>
										<div class="form-row">
											<div class="col-md-6 mb-3">
												<label for="validationServer03">City</label>
												<input type="text" class="form-control is-invalid" id="validationServer03" placeholder="City" required>
												<div class="invalid-feedback">
													Please provide a valid city.
												</div>
											</div>
											<div class="col-md-3 mb-3">
												<label for="validationServer04">State</label>
												<input type="text" class="form-control is-invalid" id="validationServer04" placeholder="State" required>
												<div class="invalid-feedback">
													Please provide a valid state.
												</div>
											</div>
											<div class="col-md-3 mb-3">
												<label for="validationServer05">Zip</label>
												<input type="text" class="form-control is-invalid" id="validationServer05" placeholder="Zip" required>
												<div class="invalid-feedback">
													Please provide a valid zip.
												</div>
											</div>
										</div>
										<div class="form-group">
											<div class="form-check">
												<input class="form-check-input is-invalid" type="checkbox" value="" id="invalidCheck3" required>
												<label class="form-check-label" for="invalidCheck3">
													Agree to terms and conditions
												</label>
												<div class="invalid-feedback">
													You must agree before submitting.
												</div>
											</div>
										</div>
										<button class="btn btn-primary" type="submit">Submit form</button>
									</form>
								</div>
							</div>
							<!-- /Server Side Validation -->
							
							<!-- Supported Elements -->
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-2">Supported elements</h5>
									<p class="card-text">Form validation styles are also available for bootstrap custom form controls.</p>
								</div>
								<div class="card-body">
									<div class="row">
										<div class="col-sm">
											<form class="was-validated">
												<div class="custom-control custom-checkbox mb-3">
													<input type="checkbox" class="custom-control-input" id="customControlValidation1" required>
													<label class="custom-control-label" for="customControlValidation1">Check this custom checkbox</label>
													<div class="invalid-feedback">Example invalid feedback text</div>
												</div>
												<div class="custom-control custom-radio">
													<input type="radio" class="custom-control-input" id="customControlValidation2" name="radio-stacked" required>
													<label class="custom-control-label" for="customControlValidation2">Toggle this custom radio</label>
												</div>
												<div class="custom-control custom-radio mb-3">
													<input type="radio" class="custom-control-input" id="customControlValidation3" name="radio-stacked" required>
													<label class="custom-control-label" for="customControlValidation3">Or toggle this other custom radio</label>
													<div class="invalid-feedback">More example invalid feedback text</div>
												</div>
												<div class="form-group">
													<select class="custom-select" required>
														<option value="">Open this select menu</option>
														<option value="1">One</option>
														<option value="2">Two</option>
														<option value="3">Three</option>
													</select>
													<div class="invalid-feedback">Example invalid custom select feedback</div>
												</div>

												<div class="custom-file">
													<input type="file" class="custom-file-input" id="validatedCustomFile" required>
													<label class="custom-file-label" for="validatedCustomFile">Choose file...</label>
													<div class="invalid-feedback">Example invalid custom file feedback</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
							<!-- /Supported Elements -->
							
							<!-- Validation Tooltips -->
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-2">Tooltips</h5>
									<p class="card-text">You can swap the <code>.{valid|invalid}-feedback</code> classes for <code>.{valid|invalid}-tooltip</code> classes to display validation feedback in a styled tooltip.</p>
								</div>
								<div class="card-body">
									<form class="needs-validation" novalidate>
										<div class="form-row">
											<div class="col-md-4 mb-3">
												<label for="validationTooltip01">First name</label>
												<input type="text" class="form-control" id="validationTooltip01" placeholder="First name" value="Mark" required>
												<div class="valid-tooltip">
													Looks good!
												</div>
											</div>
											<div class="col-md-4 mb-3">
												<label for="validationTooltip02">Last name</label>
												<input type="text" class="form-control" id="validationTooltip02" placeholder="Last name" value="Otto" required>
												<div class="valid-tooltip">
													Looks good!
												</div>
											</div>
											<div class="col-md-4 mb-3">
												<label for="validationTooltipUsername">Username</label>
												<input type="text" class="form-control" id="validationTooltipUsername" placeholder="Username" required>
												<div class="invalid-tooltip">
													Please choose a unique and valid username.
												</div>
											</div>
										</div>
										<div class="form-row">
											<div class="col-md-6 mb-3">
												<label for="validationTooltip03">City</label>
												<input type="text" class="form-control" id="validationTooltip03" placeholder="City" required>
												<div class="invalid-tooltip">
													Please provide a valid city.
												</div>
											</div>
											<div class="col-md-3 mb-3">
												<label for="validationTooltip04">State</label>
												<input type="text" class="form-control" id="validationTooltip04" placeholder="State" required>
												<div class="invalid-tooltip">
													Please provide a valid state.
												</div>
											</div>
											<div class="col-md-3 mb-3">
												<label for="validationTooltip05">Zip</label>
												<input type="text" class="form-control" id="validationTooltip05" placeholder="Zip" required>
												<div class="invalid-tooltip">
													Please provide a valid zip.
												</div>
											</div>
										</div>
										<button class="btn btn-primary" type="submit">Submit form</button>
									</form>
								</div>
							</div>
							<!-- /Validation Tooltips -->
							
						</div>
					</div>
					<!-- /Row -->
				
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
		
		<!-- Form Validation JS -->
        <script src="assets/js/form-validation.js"></script>
		
		<!-- Custom JS -->
		<script  src="assets/js/script.js"></script>
		
    </body>
</html>