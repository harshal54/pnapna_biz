
<div class="header-spacer"></div>

<!-- ... End Header -->

<div class="content-wrapper">

	<!-- Stunning header -->

	<div class="stunning-header stunning-header-bg-blue">
		<div class="stunning-header-content">
			<h1 class="stunning-header-title" style="color: white">Contact Information</h1>
			<ul class="breadcrumbs">
				<li class="breadcrumbs-item">
					<a href="<?=base_url()?>"style="color: white">Homepage</a>
					<i class="seoicon-right-arrow"style="color: white"></i>
				</li>
				<li class="breadcrumbs-item active">
					<span href="#"style="color: white">Contact Information</span>
					<i class="seoicon-right-arrow"></i>
				</li>
			</ul>
		</div>
	</div>

	<!-- End Stunning header -->

	<!-- Overlay Search -->


	<div class="overlay_search">
		<div class="container">
			<div class="row">
				<div class="form_search-wrap">
					<form>
						<input class="overlay_search-input" placeholder="Type and hit Enter..." type="text">
						<a href="#" class="overlay_search-close">
							<span></span>
							<span></span>
						</a>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- End Overlay Search -->


	

	<!-- Contacts -->


	<div class="container-fluid">
		<div class="row medium-padding80 bg-border-color contacts-shadow">
			<div class="container">
				<div class="row">
					<div class="contacts">
						<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
							<div class="contacts-item">
								<img src="<?=base_url()?>assets/biz/img/contact7.png" alt="phone">
								<div class="content">
									<a href="#" class="title" style="font-size: 20px">NEW JERSEY, 08854 USA</a>
									<p class="sub-title">82 School St., Piscataway</p>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
							<div class="contacts-item">
								<img src="<?=base_url()?>assets/biz/img/contact8.png" alt="phone">
								<div class="content">
									<a href="#" class="title">info@pnapna.com</a>
									<p class="sub-title">online support</p>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
							<div class="contacts-item">
								<img src="<?=base_url()?>assets/biz/img/contact9.png" alt="phone">
								<div class="content">
									<a href="#" class="title">1 (908) 801-6225</a>
									<p class="sub-title">Mon-Fri 9am-6pm</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- End Contacts -->

	<!-- Google map -->


	<!-- <div class="section">
		<div id="map"></div> -->
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d48504.707026518845!2d-74.49911182909999!3d40.55165838012616!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c3b883547b41d5%3A0xb69acf5061471d78!2sPiscataway%2C%20NJ%2008854%2C%20USA!5e0!3m2!1sen!2sin!4v1668170291453!5m2!1sen!2sin" width="100%" height="620" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
	</div>

	<!-- End Google map -->

	<!-- Contact form -->


	<div class="container">
		<div class="contact-form medium-padding120">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="heading">
						<h4 class="heading-title">Have You Any Questions?</h4>
						<div class="heading-line">
							<span class="short-line"></span>
							<span class="long-line"></span>
						</div>
						<p class="heading-text">Please contact us using the form and we’ll get back to you as soon as possible.</p>
					</div>
				</div>
			</div>

			<form class="contact-form" method="post" action="send_mail.php">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
						<input name="permalink" class="email input-standard-grey" placeholder="Website URL" type="text">
					</div>

					<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
						<input name="name" class="email input-standard-grey" placeholder="Your Name" type="text" required>
					</div>

				</div>

				<div class="row">

					<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
						<input name="email" class="email input-standard-grey" placeholder="Email Address" type="email" required>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
						<input name="phone" class="email input-standard-grey" placeholder="Phone" type="text">
					</div>

				</div>

				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<textarea name="message" class="email input-standard-grey" placeholder="Details"></textarea>
					</div>
				</div>

				<div class="row">
					<div class="submit-block table">
						<div class="col-lg-3 table-cell">
							<button class="btn btn-small btn--primary">
								<span class="text">Submit Now</span>
							</button>
						</div>

						<div class="col-lg-5 table-cell">
							<div class="submit-block-text">
								Please, let us know any particular things to check and the best time
								to contact you by phone (if provided).
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

	<!-- End Contact form -->

	
</div>