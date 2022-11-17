<section id="trailing">
	<div class="container">
		<h3 class="trailing-text">Free Consultation</h3>
	</div>
</section>

<section id="contact" class="pagePadding py-5">
	<div class="container-fluid mb-5" data-aos="fade-up">
		<div class="row">
			<div class="col-lg-6" style="margin: 0 auto;">
				<?php if (isset($_GET['status'])) {
						echo "<p class='sent-message mt-5'>Your request has been sent successfully. We will contact you shortly!</p>";
				}else{ ?>
					<div class="form">
						<form action="<?=base_url('home/freeConsultation')?>" method="post" role="form" class="php-email-form">
						<input type="hidden" name="<?=$this->security->get_csrf_token_name();?>" value="<?=$this->security->get_csrf_hash();?>">
							<div class="row">
								<div class="form-group col-lg-6">
									<label>Name<sup class="text-danger">*</sup></label>
									<input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
								</div>
								<div class="form-group col-lg-6 mt-3 mt-lg-0">
									<label>Email<sup class="text-danger">*</sup></label>
									<input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
								</div>
							</div>
							<div class="form-group mt-3">
									<label>Subject<sup class="text-danger">*</sup></label>
								<input type="text" class="form-control" name="title" id="title" placeholder="Subject" required>
							</div>
							<div class="form-group mt-3">
									<label>Message<sup class="text-danger">*</sup></label>
								<textarea class="form-control" name="message" rows="5" placeholder="Your message here..." required></textarea>
							</div>
							<div class="text-center"><button type="submit" title="Send Message">Send Message</button></div>
						</form>
					</div>
				<?php } ?>
			</div>
		</div>
	</div>
</section>