<section class="py-5">
	<div class="container">
		<div class="row">
			<div class="offset-lg-3 col-lg-6">
				<div class="auth-form">
					<div id="quick-In">
						<h3>Please enter your email to use quick service</h3>
						<?php echo form_open(base_url('quickEmailRequest'), array( 'id' => 'quickEmailForm'));?>				

						<div class="row">
							<div class="form-group col-md-12">
								<label>Email</label>
								<input name="email" type="text" class="form-control" placeholder="john@doe.com" required>
							</div>
							<div class="form-group col-md-6 ">
								<a href="<?php echo base_url('signup');?>" class="font-14">Click here to use full service</a>
							</div>
							<div class="form-group col-md-12 text-center">
								<button type="submit" class="btn btn-warning btn-submit">Quick Go</button>
							</div>
						</div>

						<?php echo form_close();?>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>