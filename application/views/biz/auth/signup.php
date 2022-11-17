<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/signup/fonts/line-awesome/css/line-awesome.min.css">
<link rel="stylesheet" href="<?=base_url()?>assets/biz/auth/css/style.css"/>

<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>

<div class="page-content sign-up-content">
	<div class="form-v4-content">
		<div class="form-left">
			<div class="auth-logo">
				<a href="<?=base_url(); ?>">
					<img src="<?=base_url()?>assets/biz/img/Pnapna.png" alt="PnaPna Central">
				</a>
			</div>
			<div class="div-content text-center">
				<img src="<?=base_url()?>assets/biz/auth/imgs/screen-2.png">
				<h4 class="mt-3">You can access your business from any where on any device</h4>
				<h5>with leads on autopilot 24/7</h5>
			</div>
		</div>

		<div class="form-right">
			<a href="<?=base_url(); ?>">
				<i class="fa fa-long-arrow-left mb-3 bg-white"></i>
			</a>
			<span class="have-acc text-white">Have an account?
				<a href="<?=base_url('signin'); ?>" class="text-white"><ins>Sign in.</ins></a>
			</span>

			<?php echo form_open(base_url( 'signup' ), array( 'id' => 'signUpForm'));?>
				<h6 class="text-center text-white my-4">No Credit Card is needed.</h6>

				<div class="fValidations">
					<?=validation_errors();?>
				</div>

				<div class="form-row mb-3">
				  <label>Email</label>
				  <input type="email" name="email" class="input-text" placeholder="Email" aria-describedby="email-addon1" required>
				</div>
				<div class="form-row mb-3">
				  <label>ZIP</label>
				  <input type="text" class="input-text" placeholder="Principal Zip Code of your Service Business" aria-describedby="zip-addon1">
				</div>
				<div class="form-row mb-3">
				  <label>Trade served</label>
				  <input type="text" class="input-text" placeholder="Trade served" aria-describedby="trade-addon1">
				</div>

				<button type="submit" class="btn btn-medium btn--dark btn-hover-shadow" style="margin-bottom: 15px;">Sign Up</button>

				<div class=" mt-4">
					<medium class="text-white warning-text">This site is protected by reCAPTCHA and the Google <span class="text-danger"> <a href="<?=base_url()?>privacy-policy" class="text-info">Privacy Policy</a> </span> and <span class="text-danger"> </span></medium>
					<a href="<?=base_url()?>terms-conditions" class="text-info">Terms of Conditions</a> 
					apply.
				</div>
			<?php echo form_close();?>
		</div>
	</div>
</div>