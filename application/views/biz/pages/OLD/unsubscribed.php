

<?php if (isset($_GET['status'])) { ?>

	<section  id="successful">
	<div class="container">
		<div class="row py-5 mt-3">
			<div class="col-md-12 text-center">
				<h1 style="font-size: 70px;color: green;">
					<i class="fa fa-check-circle"></i>
				</h1>
				<h1>You have successfully unsubscribed!</h1>
			</div>
		</div>
	</div>
</section>
<?php }else{ ?>

<section>
	<div class="container">
		<div class="row py-5 mt-3">
			<div class="col-md-6 offset-md-3 col-sm-12 text-center">
                <h4>Enter Your Email For Unsubscribe</h4>
            <form method="post" action="<?= base_url('unsubscribed?status=1')?>">
  <div class="form-group">
    <input type="email" required class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
	<input type="hidden" name="<?=$this->security->get_csrf_token_name();?>" value="<?=$this->security->get_csrf_hash();?>">
</div>
  
  <button type="submit" class="btn btn-primary btn-sm">Submit</button>
</form>
			</div>
		</div>
	</div>
</section>
<?php } ?>

