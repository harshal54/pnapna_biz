<section id="trailing">
	<div class="container" data-aos="fade-up">
		<div data-aos="zoom-in" data-aos-delay="100">
			<h3 class="trailing-text">Contact</h3>
		</div>
	</div>
</section>

<section id="contact" class="pagePadding py-5">
	<div class="container-fluid mb-5" data-aos="fade-up">
		<div class="row">
			<div class="col-lg-6" style="margin: 0 auto;">
				<div class="row">
					<div class="col-md-6 info">
						<i class="bi bi-geo-alt"></i>
						<p>82 School St., Piscataway,<br>NJ 08854, United States</p>
					</div>
					<div class="col-md-6 info">
						<div class="row">
							<div class="col-md-12">
								<i class="bi bi-envelope"></i>
								<p class="mb-0">info@pnapna.com</p>
							</div>
							<div class="col-md-12">
								<i class="bi bi-phone"></i>
								<p class="mb-0">+1 (908) 801-6225</p>
							</div>
						</div>
					</div>
				</div>
				<?php if (isset($_GET['status'])) {
						echo "<p class='sent-message mt-5'>Your message has been sent successfully. We will contact you shortly!</p>";
				}else{ ?>
					<div class="form">
						<form action="<?=base_url('home/contactUs')?>" method="post" role="form" class="php-email-form">
						<input type="hidden" name="<?=$this->security->get_csrf_token_name();?>" value="<?=$this->security->get_csrf_hash();?>">
							<div class="row">
								<div class="form-group col-lg-6">
									<input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
								</div>
								<div class="form-group col-lg-6 mt-3 mt-lg-0">
									<input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
								</div>
							</div>
							<div class="form-group mt-3">
								<input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
							</div>
							<div class="form-group mt-3">
								<textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
							</div>
							<div class="text-center"><button type="submit" title="Send Message">Send Message</button></div>
						</form>
					</div>
				<?php } ?>
			</div>
		</div>
	</div>
</section>