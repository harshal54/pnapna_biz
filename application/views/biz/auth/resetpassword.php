<section>
	<div class="container" >
		<div class="row" >
			<div class="col-lg-4 form-div">
				<div class="form-block">
					<a href="<?=base_url(); ?>">
						<i class="fa fa-long-arrow-left mb-3"></i>
					</a>
					<div class="text-center">
						<img src="<?=base_url()?>assets/biz/img/logos/Pnapna.png" class="mt-3 mb-4">
					</div>
					<h4>Reset Password</h4>
					<div class="fValidations">
						<?=validation_errors();?>
					</div>
					<?php echo form_open(base_url( 'resetpassword' ));?>
					<div class="form-group">
						<label>Enter New Password</label>
						<input name="password" type="password" class="form-control" placeholder="******">
						<input name="token" type="hidden" class="form-control" value="<?= $token; ?>">
					</div>
					<div class="form-group">
						<label>Confirm Password</label>
						<input name="confirm_password" type="password" class="form-control" placeholder="******">
					</div>

					<div class="form-group">
						<button type="submit" class="btn btn-warning btn-submit">Submit</button>
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