<!DOCTYPE html>
<html lang="en">
<head>
<title>Sign-up</title>
<link href="/resources/css/tab.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Datepicker - Default functionality</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>
</head>
<body class="logged">
	<section class="inner_section common_section">
		<div class="container">
			<div class="max-WT-600 center-box">
				<div class="global_box">
					<div class="row justify-content-center">
						<div class="col-12">
							<div class="form-box center-box max-WT-500">
								<div style="background-color: #d7e5f6">
									<div style="text-align: right;">
										or already a user? Click <a href="login"><button
												class="btn btn-primary">Login</button></a>
									</div>
									<form style="padding: 60px" id="form"
										style="background-color:#d7e5f6" class="common-form"
										method="post" action="/sign-up" enctype="multipart/form-data"
										id="sign-up">
										<div style="">
											<h3>
												<u><b>Register here</b></u>
											</h3>
										</div>
										<br>
										<div style="color: red; text-align: center;">${error}${sessionInvalid}${existedEmail}</div>
										<div class="form-group" Style="width: 75%">
											<label>Name</label><br> <input type="text" name="name"
												id="name" maxlength=30 class="form-control" value=""
												placeholder="Enter name" required />
											<p id="p_name"></p>
										</div>
										<br>
										<div class="form-group mb20" Style="width: 75%">
											<label>Email</label><br> <input type="email" id="email"
												value="" name="email" class="form-control"
												placeholder="Enter your email" required />
											<p id="p_email"></p>
										</div>
										<br>
										<div class="form-group" Style="width: 75%">
											<label>Password</label><br> <input type="password"
												id="password" value="" name="password" class="form-control"
												maxlength=20 placeholder="Enter your password" minlength=8
												required />
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
										<div class="form-group" Style="width: 75%">
											<label>Date of birth : </label><br> <input type="date"
												name="dob" id="datepicker" class="form-control"
												min=1995-03-12 max=2019-03-12>

										</div>
										<br>
										<div class="form-group" Style="width: 75%">
											<label>Role</label><br> <select class="form-control"
												name="role" required>
												<option value="">Role</option>
												<option value="1">Student</option>
												<option value="2">Teacher</option>
											</select>
										</div>
										<br>
										<div class="form-group">
											<label>Gender</label><br> <label class="d-block pdlft20"
												for="radio1"> <input type="radio"
												class="form-check-input" id="radio1" name="gender"
												value="Male" checked>Male
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
													<option value="IO">British Indian Ocean Territory</option>
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
													<option value="CD">Congo, the Democratic Republic
														of the</option>
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
													<option value="MK">Macedonia, The Former Yugoslav
														Republic of</option>
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
													<option value="FM">Micronesia, Federated States of</option>
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
													<option value="SJ">Svalbard and Jan Mayen Islands</option>
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
													<input id="city" name="city" type="text" placeholder="city"
														class="form-control">
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
										<br>
										<div>
											<a href="login"><button type="submit" id="submit"
													class="btn btn-primary" onclick="recaptcha();">Submit</button></a>
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
	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
	<script src="//code.jquery.com/jquery.min.js"></script>
	<script src='https://www.google.com/recaptcha/api.js'></script>
	<script>
		$(document).ready(function() {
			$("#submit").click(function() {
				alert("You are redirecting to login page");
			});
		});
	</script>
	<script type="text/javascript">
		function recaptchaCallback() {
			var response = grecaptcha.getResponse(), $button = jQuery("#submit");
			jQuery("#hidden-grecaptcha").val(response);
			console.log(jQuery("#ff").valid());
			if (jQuery("#ff").valid()) {
				$("#submit").$button.attr("disabled", false);
			} else {
				$button.attr("disabled", "disabled");
			}
		}
		function expiredRecaptchaCallback() {
			var $button = jQuery("#submit");
			jQuery("#hidden-grecaptcha").val("");
			var $button = jQuery("#submit");
			if (jQuery("#ff").valid()) {
				$("#submit").$button.attr("disabled", false);
			} else {
				$button.attr("disabled", "disabled");
			}
		};
	</script>
	<script>
	$("#form").validate({
		  rules: {
		    email: {
		      required: true,
		      // Using the normalizer to trim the value of the element
		      // before validating it.
		      normalizer: function(email.val()) {
		        // Note: the value of `this` inside the `normalizer` is the corresponding
		        // DOMElement. In this example, `this` reference the `username` element.
		        // Trim the value of the input
		        return $.trim(email.val());
	message:{
		email:{
			normalizer: not
		}
	}
		      }
		    }
		  }
		});
	
	</script>
	<script>
	$(document).ready(function(){
var value=email.val();
		  jQuery.validator.addMethod("noSpace", function(value, element) { 
		  return value.indexOf(" ") < 0 && value != ""; 
		}, "No space please and don't leave it empty");


		$("#form").validate({
		   rules: {
		      name: {
		          noSpace: true
		      }
		      email: {
	              noSpace: true
	      }
		   }
		  });
	
	</script>

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
			let specialFilter =/^(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,}$/;
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
			let emailFilter = /^([a-zA-Z0-9_\-\.]+)@([a-zA-Z_\-\.]+)\.([a-zA-Z]{2,5})$/

			if (!emailFilter.test(email)) {
				$("#p_email").text("Invalid Email id.").css("color", "red");
				isEmailValidate = false;
				return isEmailValidate;

			} else  if (email == "" || email == undefined || email == null) {
		        return { status: false, error: '* Please enter email.' };
		    }else {
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
	<script>
		function fileValidation() {
			var fileInput = document.getElementById('profile');
			var filePath = fileInput.value;
			var allowedExtensions = /(\.jpg|\.jpeg|\.png|\.gif)$/i;
			if (!allowedExtensions.exec(filePath)) {
				alert('Please upload file having extensions .jpeg/.jpg/.png/.gif only.');
				fileInput.value = '';
				return false;
			} else {
				//Image preview
				if (fileInput.files && fileInput.files[0]) {
					var reader = new FileReader();
					reader.onload = function(e) {
						document.getElementById('imagePreview').innerHTML;
					};
					reader.readAsDataURL(fileInput.files[0]);
				}
			}
		}
	</script>
</body>
</html>