<link href="<?=base_url()?>/assets/dashboard/lib/fontawesome-free/css/all.min.css" rel="stylesheet">
<section id="hero" class="clearfix">
	<div class="container" data-aos="fade-up">
		<div class="hero-img" data-aos="zoom-out" data-aos-delay="200">
			<img src="<?=base_url()?>assets/biz/img/hero-img.svg" alt="" class="img-fluid">
		</div>
		<div class="hero-info" data-aos="zoom-in" data-aos-delay="100">
			<h2><span style="text-decoration: none;color: #ff5b4f">Easy</span><br><span>e-solutions</span><br>for your business!</h2>
			<div>
				<a href="#varients" class="btn-get-started scrollto">Get Started</a>
				<a href="#services" class="btn-services scrollto">Our Services</a>
			</div>
		</div>
	</div>
</section>

<section class="pagePadding" id="varients">
	<div class="container-fluid" data-aos="fade-up">
		<div class="section-header">
			<h3 class="mb-5">Variants</h3>
			<div class="container">
				<div class="row">
					<?php if (!empty(get_variants())) { foreach (get_variants() as $variant) { ?>
						<div class="col-xl-4 col-sm-6">
							<a href="https://<?=$variant->biz_link;?>" target="_blank">
								<div class="card">
									<div class="card-content">
										<div class="card-body">
											<div class="media d-flex">
												<div class="align-self-center">
													<i class="<?=$variant->icon;?>" style="color:<?=$variant->color;?>"></i>
												</div>
												<div class="media-body text-right">
													<h4 class="mb-0"><?=$variant->variant_name;?></h4>
													<span><?=$variant->description;?></span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</a>
						</div>
					<?php }} ?>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="pagePadding" id="applications">
	<div class="container-fluid" data-aos="fade-up">
		<div class="section-header">
			<h3 class="mb-5">Applications</h3>
			<div class="container">
				<div class="row">
					<?php if (!empty(get_applications())) { foreach (get_applications() as $application) { ?>
						<div class="col-xl-3 col-sm-6">
							<a href="javascript:;">
								<div class="card">
									<div class="card-content">
										<div class="card-body py-2">
											<div class="media d-flex">
												<div class="align-self-center">
													<i class="<?=$application->icon;?>" style="color:<?=$application->color;?>"></i>
												</div>
												<div class="media-body text-right">

											<div class="app-rating">
												<?php for($r=1; $r<=5; $r++){ ?>
													<i class="fa fa-star d-inline-block mr-0 <?=($application->rating>=$r)?'checked':NULL;?>"></i>
												<?php } ?>
											</div>
													<h6 class="mb-0"><?=$application->name;?></h6>
													<small class="text-secondary">$<?=$application->price;?> per month billed annually</small>
												</div>
											</div>
										</div>
									</div>
								</div>
							</a>
						</div>
					<?php }} ?>
				</div>
			</div>
		</div>
	</div>
</section>

<style type="text/css">
	.card {
		margin-bottom: 25px;
		border: none;
		border-radius: 0;
		box-shadow: 0 0 5px 3px rgb(28 39 60 / 10%);
	}
	.card:hover {
		box-shadow: 0 0 8px 4px rgb(21 21 21 / 15%);
		background-color: #fffbe5;
	}
	.fa,.fab,.fas{font-size: 26px;}
	.media-body{margin-left: 20px}

	.media-body{
		width: 85%;
		margin-left: 0px;
	}
	.media-body h6{
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
	}

	.app-rating .checked {
		color: orange !important;
	}
	.app-rating .fa {
		color: #b9b9b9;
		font-size: 10px;
		vertical-align: top;
	}
	.app-rating {
	    line-height: 10px;
	}
	.align-self-center i{
		width: 40px;
		vertical-align: middle;
	}
	#applications .card{
		border-radius: 35px !important;
		background: #f1f1f1;
		box-shadow: 0 0 1px 1px rgb(28 39 60 / 22%);
	}
	#applications .card:hover{
		box-shadow: 0 0 4px 1px rgb(28 39 60 / 39%);
	}
</style>