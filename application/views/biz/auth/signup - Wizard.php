<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/signup/css/opensans-font.css">
<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/signup/fonts/line-awesome/css/line-awesome.min.css">
<link rel="stylesheet" href="https://jqueryvalidation.org/files/demo/site-demos.css">
<link rel="stylesheet" href="<?=base_url()?>assets/signup/css/style.css"/>
<div class="page-content">
	<div class="form-v4-content">
		<div class="form-left">
			<div class="auth-logo">
				<a href="<?=base_url(); ?>">
					<img src="<?=base_url()?>assets/biz/img/logos/Pnapna.png" alt="PnaPna Central">
				</a>
			</div>
			<div class="div-content text-center">
				<img src="<?=base_url()?>assets/signup/imgs/screen-1.png" width="60%">
				<h4 class="mt-3">Start And Grow Any Business with PnaPna Free Leads And Management Software</h4>
				<h5>No credit card needed</h5>
			</div>
		</div>
		<div class="form-right">
			<a href="<?=base_url(); ?>">
				<i class="fa fa-long-arrow-left mb-3"></i>
			</a>
			<span class="have-acc">Have an account?
				<a href="<?=base_url('signin'); ?>"><ins>Sign in.</ins></a>
			</span>
			<?php echo form_open(base_url( 'signup' ), array( 'id' => 'signUpForm'));?>
				<h2 id="register">Sign up for Free</h2>
				<div class="all-steps" id="all-steps">
					<span class="step"></span><span class="step"></span><span class="step"></span>
				</div>
					<div class="fValidations">
							<?=validation_errors();?>
						</div>
				<div class="tab">
					<div class="form-group">
						<div class="form-row form-row-1">
							<label for="first_name">First Name<sup>*</sup></label>
							<input type="text" oninput="this.className = ''" name="fname" id="first_name" class="input-text">
						</div>
						<div class="form-row form-row-1">
							<label for="last_name">Last Name<sup>*</sup></label>
							<input type="text" oninput="this.className = ''" name="lname" id="last_name" class="input-text">
						</div>
					</div>
					<div class="form-row">
						<label for="your_email">Your Email<sup>*</sup></label>
						<input type="email" name="email" id="your_email" class="input-text" pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}">
					</div>
				</div>
				<div class="tab">
					<h6>Choose Your Role:</h6>
					<label class="container">Service Provider
						<input type="radio" checked="checked" name="marketplaceStatus" value="2">
						<span class="checkmark"></span>
					</label>
					<label class="container">Employer/Home Owner Posting
						<input type="radio" name="marketplaceStatus" value="1">
						<span class="checkmark"></span>
					</label>
					<label class="container mb-4">Both
						<input type="radio" name="marketplaceStatus" value="3">
						<span class="checkmark"></span>
					</label>
				</div>
				<div class="tab">
					<div class="form-row show_hide_password">
						<label for="your_password">Password<sup>*</sup></label>
						<input type="password" name="password" oninput="this.className = ''" id="your_password" class="input-text" pattern=".{8,}" placeholder="minimum 8 characters">
						<a href="javascript:;"><i class="fa fa-eye-slash" aria-hidden="true"></i></a>
					</div>
				</div>
				<div class="thanks-message text-center" id="text-message"> <img src="<?=base_url()?>assets/biz/img/loader/apploader2.gif" width="100" class="mt-4">
					<h3>Please wait...</h3>
				</div>
				<div id="nextprevious">
					<div>
						<button type="button" id="prevBtn" class="step-button" onclick="nextPrev(-1)">Previous</button>
						<button type="button" id="nextBtn" class="step-button" onclick="nextPrev(1)">Next</button>
					</div>
				</div>
			<?php echo form_close();?>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function() {
			$(".show_hide_password a").on('click', function(event) {
				event.preventDefault();
				if($('.show_hide_password input').attr("type") == "text"){
					$('.show_hide_password input').attr('type', 'password');
					$('.show_hide_password i').addClass( "fa-eye-slash" );
					$('.show_hide_password i').removeClass( "fa-eye" );
				}else if($('.show_hide_password input').attr("type") == "password"){
					$('.show_hide_password input').attr('type', 'text');
					$('.show_hide_password i').removeClass( "fa-eye-slash" );
					$('.show_hide_password i').addClass( "fa-eye" );
				}
			});
		});
</script>
<script type="text/javascript">
	var currentTab = 0;
	document.addEventListener("DOMContentLoaded", function(event) {
	    showTab(currentTab);
	});

	function showTab(n) {
	    var x = document.getElementsByClassName("tab");
	    x[n].style.display = "block";
	    if (n == 0) {
	        document.getElementById("prevBtn").style.display = "none";
	    } else {
	        document.getElementById("prevBtn").style.display = "inline";
	    }
	    if (n == (x.length - 1)) {
	        document.getElementById("nextBtn").innerHTML = "Submit";
	    } else {
	        document.getElementById("nextBtn").innerHTML = "Next";
	    }
	    fixStepIndicator(n)
	}

	function nextPrev(n) {
	    var x = document.getElementsByClassName("tab");
	    if (n == 1 && !validateForm()) return false;
	    x[currentTab].style.display = "none";
	    currentTab = currentTab + n;
	    if (currentTab >= x.length) {
	        document.getElementById("nextprevious").style.display = "none";
	        document.getElementById("all-steps").style.display = "none";
	        document.getElementById("register").style.display = "none";
	        document.getElementById("text-message").style.display = "block";
	    }
	    showTab(currentTab);
	}

	function validateForm() {
	    var x, y, i, valid = true;
	    x = document.getElementsByClassName("tab");
	    y = x[currentTab].getElementsByTagName("input");
	    for (i = 0; i < y.length; i++) {
	        if (y[i].value == "") {
	            y[i].className += " invalid";
	            valid = false;
	        }
	    	if (y[i].type == "email") {
	    		// console.log(y[i].value);
	    		if( !validateEmail(y[i].value)) {
	    			y[i].className += " invalid";
	          		valid = false;
	    		}
	    	}
	    	if ((y[i].type == "password")) {
	    		if (y[i].value.length <= 7) {
	    			y[i].className += " invalid";
	          		valid = false;
	    		}else{
	    			$('#signUpForm').submit();
	    			$('#nextBtn').hide();
	    		}
	    	}
	    }
	    if (valid) { document.getElementsByClassName("step")[currentTab].className += " finish"; }
	    return valid;
	}

	function validateEmail($email) {
	  var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
	  return emailReg.test( $email );
	}

	function fixStepIndicator(n) {
	    var i, x = document.getElementsByClassName("step");
	    for (i = 0; i < x.length; i++) { x[i].className = x[i].className.replace(" active", ""); }
	    x[n].className += " active";
	}
</script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>