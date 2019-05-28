<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="icon"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/dist/img/appicon.png"
	type="image/gif" sizes="16x16">
<title>Picture world</title>
<!-- Tell the browser to be responsive to screen width -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 http://52.221.54.107/PROJECTS/Elevate/public/assets/css/bootstrap.min.css-->
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/Ionicons/css/ionicons.min.css">

<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">

<!-- Theme style -->
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/dist/css/AdminLTE.min.css">
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/dist/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/dist/css/bootstrap-datetimepicker.css">
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/dist/css/custom.css">
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/js/select2/select2.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/dist/css/skins/_all-skins.min.css">
<!-- Morris chart -->
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/morris.js/morris.css">
<!-- jvectormap -->
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/jvectormap/jquery-jvectormap.css">
<!-- Date Picker -->
<!-- <link rel="stylesheet" href="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css"> -->
<!-- Daterange picker -->
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/bootstrap-daterangepicker/daterangepicker.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<!-- <link rel="stylesheet" href="http://cdn.bootcss.com/toastr.js/latest/css/toastr.min.css"> -->
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/css/toastr.min.css">
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/css/jquery-ui.css">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<style>
.view-block-s {
	max-width: 500px;
	margin: 0 auto;
	text-align: center;
}
</style>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
<style>
.cke {
	visibility: hidden;
}
</style>
<style type="text/css">
.jqstooltip {
	position: absolute;
	left: 0px;
	top: 0px;
	visibility: hidden;
	background: rgb(0, 0, 0) transparent;
	background-color: rgba(0, 0, 0, 0.6);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,
		endColorstr=#99000000);
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
	color: white;
	font: 10px arial, san serif;
	text-align: left;
	white-space: nowrap;
	padding: 5px;
	border: 1px solid white;
	box-sizing: content-box;
	z-index: 10000;
}

.jqsfield {
	color: white;
	font: 10px arial, san serif;
	text-align: left;
}
</style>
</head>


















<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%;">
	<div class="wrapper" style="height: auto; min-height: 100%;">

		<header class="main-header">
			<!-- Logo -->


			<a
				href="http://52.221.54.107/PROJECTS/Elevate/public/admin/dashboard"
				class="logo"> <!-- mini logo for sidebar mini 50x50 pixels --> <span
				class="logo-mini"><b>P</b></span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>Picture world</b></span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="push-menu"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a> <input type="hidden" name="base_defined_url"
					value="http://52.221.54.107/PROJECTS/Elevate/public"
					id="base_defined_url">
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								height="20px" width="20px"
								src="/resources/uploads/10.jpg"
								class="img-circle" alt="User Image"> <span
								class="hidden-xs">${sessionEmail}</span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header"><img
									src="/resources/uploads/10.jpg"
									class="img-circle" alt="User Image">

									<p>${UserName}</p></li>

								<li class="user-footer">
									<div class="pull-left">
										<a
											href="edit"
											class="btn btn-default btn-flat">Edit Profile</a>
									</div>
									<div class="pull-right">
										<a href="login"
											class="login">Sign out</a>
									</div>
								</li>
							</ul></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar" style="height: auto;">
				<!-- Sidebar user panel -->
				<div class="user-panel">
					<div class="pull-left image">
						<img
							src="/resources/uploads/10.jpg"
							class="img-circle" alt="User Image"
							style="height: 40px; width: 40px">
					</div>
					<div class="pull-left info">
						<p>${UserName}</p>
					</div>
				</div>
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu tree" data-widget="tree">
					<li class="active"><a href="adminHome"><i
							class="fa fa-circle-o"></i><span>Home</span> </a></li>

					<li class=""><a href="adminAddLocation"> <i
							class="fa fa-user"></i> <span>Add new place</span>
					</a></li>

					<li class=""><a href="studentGraph"> <i class="fa fa-user"></i>
							<span>Places</span>
					</a></li>
					
					<li class=""><a href="bar1"> <i class="fa fa-user"></i> <span>Add category</span>
					</a></li>
					
					<li class="fa fa-globe"><a href=""> <i
							class="fa fa-user"></i> <span>View Feedback</span>
					</a></li>
					<li class=""><a href=""> <i class="fa fa-user"></i> <span>Contact
								us</span>
					</a></li>
					<li class="fa fa-globe"><a href=""> <i
							class="fa fa-user"></i> <span>About us</span>
					</a></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>


		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 668px;">		

			<!-- Main content -->
			<div class="container">
		<table id="example" class="table table-striped table-bordered">
			<thead style="background-color: #1265a2; color: white">
				<tr>
					<th>S.no</th>
					<th>Name</th>
					
				</tr>
			</thead>
			<tbody>
					<tr class="info">
						<td>1</td>
						<td>Nature</td>
					</tr>
					<tr class="info">
						<td>2</td>
						<td>Beach</td>
					</tr>
					<tr class="info">
						<td>3</td>
						<td>Hotel</td>
					</tr>
					<tr class="info">
						<td>4</td>
						<td>Launge</td>
					</tr>
					<tr class="info">
						<td>5</td>
						<td>Parks</td>
					</tr>
			</tbody>
		</table>
	</div>
	<div style="text-align:center">
		<a href="adminHome">
			<button type="submit" name="emailId" value=${sessionEmail}  class="btn">Back</button>
		</a>
	</div>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
	
		<!-- Delete Model -->
		<div class="example-modal">
			<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel">
				<div class="modal-dialog">
					<form method="post" id="modalFooter" action="">
						<input type="hidden" name="_token"
							value="vHOp4cdFfbBYGZCkWcLg5dQ4l8BDRsZ2VZv7a6kF">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">�</span>
								</button>
								<h4 id="modelTitle" class="modal-title"></h4>
								<input id="deleteData1" name="deleteData1" type="hidden"
									value=""> <input id="deleteData2" name="deleteData2"
									type="hidden" value=""> <input id="deleteData3"
									name="deleteData3" type="hidden" value=""> <input
									id="deleteData4" name="deleteData4" type="hidden" value="">
							</div>
							<div class="modal-body">
								<p>
									Are you sure <span id="modalTxt"></span> ?
								</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default pull-left"
									data-dismiss="modal">Cancel</button>
								<button id="confirmDelete" type="submit" class="btn btn-primary">Confirm</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- /. Delete Modal -->

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Create the tabs -->
			<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
				<li class="active"><a
					href="#control-sidebar-theme-demo-options-tab" data-toggle="tab"><i
						class="fa fa-wrench"></i></a></li>
				<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i
						class="fa fa-home"></i></a></li>
				<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
						class="fa fa-gears"></i></a></li>
			</ul>
		</aside>
		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<script type="text/javascript">
		var baseUrl = "http://52.221.54.107/PROJECTS/Elevate/public";
	</script>

	<!-- jQuery 3 -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<!-- <script src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/jquery-ui/jquery-ui.min.js"></script> -->
	<!-- DatePicker -->
	<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->

	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/js/jquery-ui.js"></script>
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/js/select2/select2.min.js"></script>
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/js/select2.multi-checkboxes.js"></script>
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/js/datepicker.js"></script>

	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<!-- Bootstrap 3.3.7 -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>

	<!-- Morris.js charts -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/raphael/raphael.min.js"></script>
	<!-- <script src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/morris.js/morris.min.js"></script> -->
	<!-- Sparkline -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
	<!-- jvectormap -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<!-- jQuery Knob Chart -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
	<!-- daterangepicker -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/moment/min/moment.min.js"></script>
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- datepicker -->
	<!-- <script src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script> -->
	<!-- Bootstrap WYSIHTML5 -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<!-- Slimscroll -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/fastclick/lib/fastclick.js"></script>

	<script src="http://52.221.54.107/PROJECTS/Elevate/public/js/block.js"></script>
	<!--  <script src="http://52.221.54.107/PROJECTS/Elevate/public/js/jquery.validate.min.js"></script> -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/additional-methods.js"></script>
	<!-- <script src="http://52.221.54.107/PROJECTS/Elevate/public/js/additional-methods.js"></script> -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/js/validation.js"></script>
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/js/bootstrap-datetimepicker.js"></script>
	<!-- AdminLTE App -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<!-- <script src="http://52.221.54.107/PROJECTS/Elevate/public/admin/dist/js/pages/dashboard.js"></script> -->





	<!-- AdminLTE for demo purposes -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/dist/js/demo.js"></script>
	<!-- ChartJS -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/chart.js/Chart.js"></script>
	<!-- Toastr -->
	<!-- <script src="http://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script> -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/js/toastr.min.js"></script>
	<script type="text/javascript"></script>
	<!-- <script src="/PROJECTS/Elevate/vendor/unisharp/laravel-ckeditor/ckeditor.js"></script> -->

	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/../vendor/unisharp/laravel-ckeditor/ckeditor.js"></script>

	

</body>
<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.3.1.js">
		
	</script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js">
		
	</script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js">
		
	</script>
	<script>
		$(document).ready(function() {
			$('#example').DataTable();
		});
	</script>
</body>
<script src="/resources/js/popper.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/marquee.js"></script>
<script src="/resources/js/slick.min.js"></script>
<script src="/resources/js/common.js"></script>
</html>