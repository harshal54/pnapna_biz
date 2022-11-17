<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
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
				<img src="<?=base_url()?>assets/signup/imgs/screen-2.png">
				<h4 class="mt-3">We drive persistence growth for field service companies</h4>
				<h5>with leads on autopilot 24/7</h5>
			</div>
		</div>
		<div class="form-right">
			<a href="<?=base_url(); ?>">
				<i class="fa fa-long-arrow-left mb-3"></i>
			</a>
			<?php echo form_open(base_url( 'signinrequest' ), array( 'id' => 'signInForm'));?>
			<h2>Sign In</h2>
			<div class="fValidations mt-4">
				<?=validation_errors();?>
			</div>
			<div class="row">
				<div class="form-row">
					<label for="your_email">Email</label>
					<input type="email" name="email" id="your_email" class="input-text"  placeholder="john@doe.com">
				</div>
				<div class="form-row show_hide_password login-pass">
					<label for="your_password">Password</label>
					<input type="password" name="password" id="your_password" class="input-text" placeholder="Password">
					<a href="javascript:;"><i class="fa fa-eye-slash" aria-hidden="true"></i></a>
				</div>
				<div class="form-group col-md-12 text-center">
					<button type="submit" class="btn btn-warning btn-submit mt-4 mb-3 w-100">Sign In</button>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<a href="<?php echo base_url('forget-password');?>">Forgot your password?</a>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<a href="<?=base_url('signup')?>" class="float-right">No account yet? Get started!</a>
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