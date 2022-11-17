<section class="py-5 text-center">
	<?php
		if (!empty(userData())) { ?>
	<embed src="<?=base_url('assets/docs/82SchoolStPicatawayNJ.pdf')?>" width="80%" height="1800px" />
	<?php }else{ ?>
		<div class="py-5 my-5">
			<h3>Please Sign In to access this page or Sign Up if you don't have an account.</h3>
			<a href="<?=base_url('signin')?>" class="btn btn-primary" style="margin-right: 10px;">Sign In</a>
			<a href="<?=base_url('signup')?>" class="btn btn-primary">Sign Up</a>
		</div>
	<?php } ?>
</section>