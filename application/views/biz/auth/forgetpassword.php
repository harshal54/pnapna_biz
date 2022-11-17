<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<link rel="stylesheet" href="<?=base_url()?>assets/biz/auth/css/style.css"/>
<section>
	<div class="container" >
		<div class="row" >
			<div class="col-lg-4 form-div">
				<div class="form-block">
					<a href="<?=base_url(); ?>">
						<i class="fa fa-long-arrow-left mb-3"></i>
					</a>
					<div class="text-center" style="margin:20px 0">
						<img src="<?=base_url()?>assets/biz/img/Pnapna.png" class="mt-3 mb-4">
					</div>
					<h4 style="margin-bottom:15px">Forgot Password</h4>
					<div class="fValidations">
						<?=validation_errors();?>
					</div>
					<?php echo form_open(base_url( 'forgetpass' ));?>
					<div class="form-group mb-4">
						<label class="mb-2">Email</label>
						<input name="email" type="text" required class="input-text" placeholder="john@doe.com">
					</div>
					<div class="form-group text-center" style="margin-bottom:15px">
						<button type="submit" class="btn btn-medium btn--dark btn-hover-shadow">Submit</button>
					</div>
					<div class="form-group">
						<a href="<?=base_url()?>signin" class="font-14">Already a member?</a>
					</div> 
					<?php echo form_close();?>
				</div>

			</div>
		</div>
	</div>
</section>

<style type="text/css">
body{background: #ededed;}
	.fValidations p{
		margin-bottom: 0px;
		color: red;
	}
	.main-header, #siteVariant, .mainfooter{display: none;}
	.form-div{
		background: #fff;
		margin: 60px auto;
	}
	.form-block{
		padding: 20px 10px;
	}
	.fa-long-arrow-left {
	    padding: 4px;
	    border-radius: 20px;
	    box-shadow: 0px 1px 4px 0px rgb(28 39 60 / 39%);
	    cursor: pointer;
	}
	.fa-long-arrow-left:hover {
	    background: #f7f7f7;
	    box-shadow: 0px 1px 4px 0px rgb(28 39 60 / 68%);
	    transition: all 0.3s;
	}
</style>