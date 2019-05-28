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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
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
								height="20px" width="20px" src="/resources/uploads/10.jpg"
								class="img-circle" alt="User Image"> <span
								class="hidden-xs">${sessionEmail}</span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header"><img
									src="/resources/uploads/10.jpg" class="img-circle"
									alt="User Image">

									<p>${UserName}</p></li>

								<li class="user-footer">
									<div class="pull-left">
										<a href="edit" class="btn btn-default btn-flat">Edit
											Profile</a>
									</div>
									<div class="pull-right">
										<a href="login" class="login">Sign out</a>
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
						<img src="/resources/uploads/10.jpg" class="img-circle"
							alt="User Image" style="height: 40px; width: 40px">
					</div>
					<div class="pull-left info">
						<p>${UserName}</p>
					</div>
				</div>
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu tree" data-widget="tree">
					<li class="active"><a href="adminHome"><i
							class="fa fa-circle-o"></i><span>Home</span> </a></li>

					<li class=""><a href="addLocation"> <i
							class="fa fa-user"></i> <span>Add new place</span>
					</a></li>

					<li class=""><a href="studentGraph"> <i class="fa fa-user"></i>
							<span>Places</span>
					</a></li>
					
					<li class=""><a href="bar1"> <i class="fa fa-user"></i> <span>Add category</span>
					</a></li>
					
					<li class="fa fa-globe"><a href="map"> <i
							class="fa fa-user"></i> <span>View Feedback</span>
					</a></li>
					<li class=""><a href="bar1"> <i class="fa fa-user"></i> <span>Contact
								us</span>
					</a></li>
					<li class="fa fa-globe"><a href="map"> <i
							class="fa fa-user"></i> <span>About us</span>
					</a></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>


		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 668px;">
			<section class="inner_section common_section">
				<div class="container">
					<div class="max-WT-600 center-box">
						<div class="global_box">
							<div class="row justify-content-center">
								<div class="col-12">
									<div class="form-box center-box max-WT-500">
										<div style="background-color: #d7e5f6">
											<form style="padding: 60px" style="background-color:#d7e5f6"
												class="common-form" method="post" action="/edit"
												enctype="multipart/form-data" id="sign-form">
												<div style="">
													<h3>
														<u><b>Edit profile</b></u>
													</h3>
												</div>
												<div class="form-group" Style="width: 75%">
													<label>Name</label><br> <input type="text" name="name"
														maxlength=46 id="name" class="form-control" value=""
														placeholder="Enter First name" required />
													<p id="p_name"></p>
												</div>
												<br>


												<div class="form-group" Style="width: 75%">
													<label>Change Password</label><br> <input
														type="password" id="password" value="" name="password"
														class="form-control" maxlength=20
														placeholder="Enter your password" minlength=8 required />
													<p id="p_password"></p>
												</div>
												<br>
												<div class="form-group" Style="width: 75%">
													<label>Confirm Password</label><br> <input
														type="password" value="" id="confirmpassword"
														name="confirmpassword" class="form-control" maxlength=20
														placeholder="Confirm your password" minlength=8 required />
													<p id="p_con_password"></p>
												</div>
											
												<br>
												<div class="form-group">
													<label>Gender</label><br> <label
														class="d-block pdlft20" for="radio1"> <input
														type="radio" class="form-check-input" id="radio1"
														name="gender" value="Male" checked>Male
													</label> <label class=" -block pdlft20" for="radio1"> <input
														type="radio" value="Female" class="form-check-input"
														id="radio2" name="gender">Female
													</label> <label class="d-block pdlft20" for="radio1"> <input
														type="radio" value="Other" class="form-check-input"
														id="radio3" name="gender">Other
													</label>
												</div>
												<br>










												<!-- country select -->
												<div class="control-group">
													<label class="control-label">Country :</label>
													<div class="form-group" Style="width: 75%">
														<select id="country" name="country" class="form-control">
															<option value="" selected="selected">(please
																select a country)</option>
															<option value="AF">Afghanistan</option>
															<option value="AL">Albania</option>
															<option value="DZ">Algeria</option>
															<option value="AS">American Samoa</option>
															<option value="AD">Andorra</option>
															<option value="AO">Angola</option>
															<option value="AI">Anguilla</option>
															<option value="AQ">Antarctica</option>
															<option value="AG">Antigua and Barbuda</option>
															<option value="AR">Argentina</option>
															<option value="AM">Armenia</option>
															<option value="AW">Aruba</option>
															<option value="AU">Australia</option>
															<option value="AT">Austria</option>
															<option value="AZ">Azerbaijan</option>
															<option value="BS">Bahamas</option>
															<option value="BH">Bahrain</option>
															<option value="BD">Bangladesh</option>
															<option value="BB">Barbados</option>
															<option value="BY">Belarus</option>
															<option value="BE">Belgium</option>
															<option value="BZ">Belize</option>
															<option value="BJ">Benin</option>
															<option value="BM">Bermuda</option>
															<option value="BT">Bhutan</option>
															<option value="BO">Bolivia</option>
															<option value="BA">Bosnia and Herzegowina</option>
															<option value="BW">Botswana</option>
															<option value="BV">Bouvet Island</option>
															<option value="BR">Brazil</option>
															<option value="IO">British Indian Ocean
																Territory</option>
															<option value="BN">Brunei Darussalam</option>
															<option value="BG">Bulgaria</option>
															<option value="BF">Burkina Faso</option>
															<option value="BI">Burundi</option>
															<option value="KH">Cambodia</option>
															<option value="CM">Cameroon</option>
															<option value="CA">Canada</option>
															<option value="CV">Cape Verde</option>
															<option value="KY">Cayman Islands</option>
															<option value="CF">Central African Republic</option>
															<option value="TD">Chad</option>
															<option value="CL">Chile</option>
															<option value="CN">China</option>
															<option value="CX">Christmas Island</option>
															<option value="CC">Cocos (Keeling) Islands</option>
															<option value="CO">Colombia</option>
															<option value="KM">Comoros</option>
															<option value="CG">Congo</option>
															<option value="CD">Congo, the Democratic
																Republic of the</option>
															<option value="CK">Cook Islands</option>
															<option value="CR">Costa Rica</option>
															<option value="CI">Cote d'Ivoire</option>
															<option value="HR">Croatia (Hrvatska)</option>
															<option value="CU">Cuba</option>
															<option value="CY">Cyprus</option>
															<option value="CZ">Czech Republic</option>
															<option value="DK">Denmark</option>
															<option value="DJ">Djibouti</option>
															<option value="DM">Dominica</option>
															<option value="DO">Dominican Republic</option>
															<option value="TP">East Timor</option>
															<option value="EC">Ecuador</option>
															<option value="EG">Egypt</option>
															<option value="SV">El Salvador</option>
															<option value="GQ">Equatorial Guinea</option>
															<option value="ER">Eritrea</option>
															<option value="EE">Estonia</option>
															<option value="ET">Ethiopia</option>
															<option value="FK">Falkland Islands (Malvinas)</option>
															<option value="FO">Faroe Islands</option>
															<option value="FJ">Fiji</option>
															<option value="FI">Finland</option>
															<option value="FR">France</option>
															<option value="FX">France, Metropolitan</option>
															<option value="GF">French Guiana</option>
															<option value="PF">French Polynesia</option>
															<option value="TF">French Southern Territories</option>
															<option value="GA">Gabon</option>
															<option value="GM">Gambia</option>
															<option value="GE">Georgia</option>
															<option value="DE">Germany</option>
															<option value="GH">Ghana</option>
															<option value="GI">Gibraltar</option>
															<option value="GR">Greece</option>
															<option value="GL">Greenland</option>
															<option value="GD">Grenada</option>
															<option value="GP">Guadeloupe</option>
															<option value="GU">Guam</option>
															<option value="GT">Guatemala</option>
															<option value="GN">Guinea</option>
															<option value="GW">Guinea-Bissau</option>
															<option value="GY">Guyana</option>
															<option value="HT">Haiti</option>
															<option value="HM">Heard and Mc Donald Islands</option>
															<option value="VA">Holy See (Vatican City State)</option>
															<option value="HN">Honduras</option>
															<option value="HK">Hong Kong</option>
															<option value="HU">Hungary</option>
															<option value="IS">Iceland</option>
															<option value="IN">India</option>
															<option value="ID">Indonesia</option>
															<option value="IR">Iran (Islamic Republic of)</option>
															<option value="IQ">Iraq</option>
															<option value="IE">Ireland</option>
															<option value="IL">Israel</option>
															<option value="IT">Italy</option>
															<option value="JM">Jamaica</option>
															<option value="JP">Japan</option>
															<option value="JO">Jordan</option>
															<option value="KZ">Kazakhstan</option>
															<option value="KE">Kenya</option>
															<option value="KI">Kiribati</option>
															<option value="KP">Korea, Democratic People's
																Republic of</option>
															<option value="KR">Korea, Republic of</option>
															<option value="KW">Kuwait</option>
															<option value="KG">Kyrgyzstan</option>
															<option value="LA">Lao People's Democratic
																Republic</option>
															<option value="LV">Latvia</option>
															<option value="LB">Lebanon</option>
															<option value="LS">Lesotho</option>
															<option value="LR">Liberia</option>
															<option value="LY">Libyan Arab Jamahiriya</option>
															<option value="LI">Liechtenstein</option>
															<option value="LT">Lithuania</option>
															<option value="LU">Luxembourg</option>
															<option value="MO">Macau</option>
															<option value="MK">Macedonia, The Former
																Yugoslav Republic of</option>
															<option value="MG">Madagascar</option>
															<option value="MW">Malawi</option>
															<option value="MY">Malaysia</option>
															<option value="MV">Maldives</option>
															<option value="ML">Mali</option>
															<option value="MT">Malta</option>
															<option value="MH">Marshall Islands</option>
															<option value="MQ">Martinique</option>
															<option value="MR">Mauritania</option>
															<option value="MU">Mauritius</option>
															<option value="YT">Mayotte</option>
															<option value="MX">Mexico</option>
															<option value="FM">Micronesia, Federated States
																of</option>
															<option value="MD">Moldova, Republic of</option>
															<option value="MC">Monaco</option>
															<option value="MN">Mongolia</option>
															<option value="MS">Montserrat</option>
															<option value="MA">Morocco</option>
															<option value="MZ">Mozambique</option>
															<option value="MM">Myanmar</option>
															<option value="NA">Namibia</option>
															<option value="NR">Nauru</option>
															<option value="NP">Nepal</option>
															<option value="NL">Netherlands</option>
															<option value="AN">Netherlands Antilles</option>
															<option value="NC">New Caledonia</option>
															<option value="NZ">New Zealand</option>
															<option value="NI">Nicaragua</option>
															<option value="NE">Niger</option>
															<option value="NG">Nigeria</option>
															<option value="NU">Niue</option>
															<option value="NF">Norfolk Island</option>
															<option value="MP">Northern Mariana Islands</option>
															<option value="NO">Norway</option>
															<option value="OM">Oman</option>
															<option value="PK">Pakistan</option>
															<option value="PW">Palau</option>
															<option value="PA">Panama</option>
															<option value="PG">Papua New Guinea</option>
															<option value="PY">Paraguay</option>
															<option value="PE">Peru</option>
															<option value="PH">Philippines</option>
															<option value="PN">Pitcairn</option>
															<option value="PL">Poland</option>
															<option value="PT">Portugal</option>
															<option value="PR">Puerto Rico</option>
															<option value="QA">Qatar</option>
															<option value="RE">Reunion</option>
															<option value="RO">Romania</option>
															<option value="RU">Russian Federation</option>
															<option value="RW">Rwanda</option>
															<option value="KN">Saint Kitts and Nevis</option>
															<option value="LC">Saint LUCIA</option>
															<option value="VC">Saint Vincent and the
																Grenadines</option>
															<option value="WS">Samoa</option>
															<option value="SM">San Marino</option>
															<option value="ST">Sao Tome and Principe</option>
															<option value="SA">Saudi Arabia</option>
															<option value="SN">Senegal</option>
															<option value="SC">Seychelles</option>
															<option value="SL">Sierra Leone</option>
															<option value="SG">Singapore</option>
															<option value="SK">Slovakia (Slovak Republic)</option>
															<option value="SI">Slovenia</option>
															<option value="SB">Solomon Islands</option>
															<option value="SO">Somalia</option>
															<option value="ZA">South Africa</option>
															<option value="GS">South Georgia and the South
																Sandwich Islands</option>
															<option value="ES">Spain</option>
															<option value="LK">Sri Lanka</option>
															<option value="SH">St. Helena</option>
															<option value="PM">St. Pierre and Miquelon</option>
															<option value="SD">Sudan</option>
															<option value="SR">Suriname</option>
															<option value="SJ">Svalbard and Jan Mayen
																Islands</option>
															<option value="SZ">Swaziland</option>
															<option value="SE">Sweden</option>
															<option value="CH">Switzerland</option>
															<option value="SY">Syrian Arab Republic</option>
															<option value="TW">Taiwan, Province of China</option>
															<option value="TJ">Tajikistan</option>
															<option value="TZ">Tanzania, United Republic of</option>
															<option value="TH">Thailand</option>
															<option value="TG">Togo</option>
															<option value="TK">Tokelau</option>
															<option value="TO">Tonga</option>
															<option value="TT">Trinidad and Tobago</option>
															<option value="TN">Tunisia</option>
															<option value="TR">Turkey</option>
															<option value="TM">Turkmenistan</option>
															<option value="TC">Turks and Caicos Islands</option>
															<option value="TV">Tuvalu</option>
															<option value="UG">Uganda</option>
															<option value="UA">Ukraine</option>
															<option value="AE">United Arab Emirates</option>
															<option value="GB">United Kingdom</option>
															<option value="US">United States</option>
															<option value="UM">United States Minor Outlying
																Islands</option>
															<option value="UY">Uruguay</option>
															<option value="UZ">Uzbekistan</option>
															<option value="VU">Vanuatu</option>
															<option value="VE">Venezuela</option>
															<option value="VN">Viet Nam</option>
															<option value="VG">Virgin Islands (British)</option>
															<option value="VI">Virgin Islands (U.S.)</option>
															<option value="WF">Wallis and Futuna Islands</option>
															<option value="EH">Western Sahara</option>
															<option value="YE">Yemen</option>
															<option value="YU">Yugoslavia</option>
															<option value="ZM">Zambia</option>
															<option value="ZW">Zimbabwe</option>
														</select>
													</div>
													<br>

													<!-- region input-->
													<div class="form-group" Style="width: 75%">
														<label>State :</label>
														<div class="controls">
															<input id="region" name="state" type="text"
																placeholder="state / province / region"
																class="form-control">
															<p class="help-block"></p>
														</div>
													</div>
													<br>
													<!-- city input-->
													<div class="control-group" Style="width: 75%">
														<label class="control-label">City</label>
														<div class="controls">
															<input id="city" name="city" type="text"
																placeholder="city" class="form-control">
															<p class="help-block"></p>
														</div>
													</div>
													<br>

													<!-- address-line1 input-->
													<div class="form-group" Style="width: 75%">
														<label>Address :</label>
														<div class="controls">
															<input id="address-line2" name="locality" type="text"
																placeholder="address " class="form-control">
														</div>
													</div>
												</div>
												<br> <br>
												<div style="color: maroon;">${updateStatus}</div>
												<div id="save">
													<a href="home"><button id="button" type="submit"
															class="btn btn-primary">Update</button></a>
												</div>
											</form>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>

			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<strong>Copyright � 2018-2019 <a href="#">Elevate</a>.
			</strong> All rights reserved.
		</footer>
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
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
<script src="/resources/js/sign-up.js"></script>
<script src="//code.jquery.com/jquery.min.js"></script>
<script>
	
		$("#name").keyup(function() {
			nameValidate();
		});
		$("#email").keyup(function() {
			emailValidate();
		});
		$("#password").keyup(function() {
			matchPassword();
			passVallidate();
		});
		$("#confirmpassword").keyup(function() {
			matchPassword();
		});
		
		
		
			
		

		function matchPassword() {
			isMatchedPassword = false;
			let con_pass = $("#confirmpassword").val();
			let pass = $("#password").val();
			if (con_pass != '' || pass != '') {
				if (con_pass === pass) {
					isMatchedPassword = true;
					
					$('#p_con_password').text("").css("color", "green");
				} else {
					
					$('#p_con_password').text("Password not matched.").css(
							"color", "red");
					isMatchedPassword = false;
					$('#p_password').show();
					$('#p_con_password').show();
				}
			} else {
				$('#p_password').text("Can't be Empty Password.").css("color",
						"red");
				$('#p_con_password').text("Can't be Empty Confirm Password.")
						.css("color", "red");
			}

		}

		function passVallidate() {
			let pass = $("#password").val();
			let lowerCaseFilter = /[a-z]/g;
			let upperCaseFilter = /[A-Z]/g;
			let digitsFilter = /[0-9]/g;
			let specialFilter =  /^(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,}$/;
			let isLower = false;
			let isUpper = false;
			let isDigit = false;
			let isSpecial = false;
			let isEight = false;
			if (lowerCaseFilter.test(pass)) {
				isLower = true;
			} else {
				isLower = false;
			}

			if (upperCaseFilter.test(pass)) {
				isUpper = true;
			} else {
				isUpper = false;
			}

			if (digitsFilter.test(pass)) {
				isDigit = true;
			} else {
				isDigit = false;
			}

			if (specialFilter.test(pass)) {
				isSpecial = true;
			} else {
				isSpecial = false;
			}

			if (isLower == false) {
				$('#p_password').text("Must contain a Lower letter.").css(
						"color", "red");
			} else if (isUpper == false) {
				$('#p_password').text("Must contain a Capital letter.").css(
						"color", "red");
			} else if (isDigit == false) {
				$('#p_password').text("Must contain a Digits.").css("color",
						"red");
			} else if (isSpecial == false) {
				$('#p_password').text("No space please and use special characters.").css(
						"color", "red");
			}

			if (isLower == true && isUpper == true && isDigit == true
					&& isSpecial == true) {
				if (pass.length >= 8) {
					isEight = true;
				} else {
					$('#p_password').text("Password should be 8 letter.").css(
							"color", "red");
					isEight = false;
				}
			}
			if (isEight == true) {
				$('#p_password').text("").css("color", "green");
			}
		}

		function emailValidate() {
			isEmailValidate = false;
			let email = $("#email").val();
			let emailFilter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

			if (!emailFilter.test(email)) {
				$("#p_email").text("Invalid Email id.").css("color", "red");
				isEmailValidate = false;
				return isEmailValidate;

			} else {
				isEmailValidate = true;
				$("#p_email").text("").css("color", "green");
				return isEmailValidate;
			}
		}
		function nameValidate() {
			let name = $("#name").val();
			isNameValidate = false;
			let nameFilter = /^[a-zA-Z-]+$/;
			
			if (!nameFilter.test(name)) {
				$('#p_name').text("Name Should be String.").css("color", "red");
				isNameValidate = false;
				return isNameValidate;
			} else {
				$('#p_name').text("").css("color", "green");

				isNameValidate = true;
				return isNameValidate;
			}
		}

		
	</script>
</body>
<script src="/resources/js/popper.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/marquee.js"></script>
<script src="/resources/js/slick.min.js"></script>
<script src="/resources/js/common.js"></script>
</html>