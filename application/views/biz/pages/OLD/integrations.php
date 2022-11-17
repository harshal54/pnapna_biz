<link href="<?=base_url()?>/assets/dashboard/lib/fontawesome-free/css/all.min.css" rel="stylesheet">

<section id="trailing">
	<div class="container" data-aos="fade-up">
		<div data-aos="zoom-in" data-aos-delay="100">
			<h3 class="trailing-text text-white">Integrations</h3>
		</div>
	</div>
</section>

<section class="pt-5">
	<div class="container" data-aos="fade-up">
		<div class="col-md-12 my-5">
			<div class="row about-extra">
				<div class="col-lg-6 aos-init aos-animate" data-aos="fade-right">
					<img src="<?=base_url()?>assets/biz/img/IntuitQuickbooks.png" class="img-fluid" style="width: 50%" alt="PnaPna-Automatically sync between PnaPna and QuickBooks online">
				</div>
				<div class="col-lg-6 pt-5 pt-lg-0 aos-init aos-animate" data-aos="fade-left">
					<h3 class="mb-4">Quick Books</h3>
					<p>Automatically sync customers, invoices and payment data between PnaPna and QuickBooks online.</p>
				</div>
			</div>
		</div>
		<div class="col-md-12 my-5">
			<div class="row about-extra">
				<div class="col-lg-6 aos-init aos-animate" data-aos="fade-right">
					<img src="<?=base_url()?>assets/biz/img/zoomeeting.png" class="img-fluid" style="width: 50%" alt="PnaPna has introduced its clients to a new way of run business">
				</div>
				<div class="col-lg-6 pt-5 pt-lg-0 aos-init aos-animate" data-aos="fade-left">
					<h3 class="mb-4">Zoom Meeting</h3>
					<p>PnaPna has introduced its clients to a new way of run business: Video Meetings. Now communicate your clients and employees by Zoom Meeting.</p>
				</div>
			</div>
		</div>
		<div class="col-md-12 my-5">
			<div class="row about-extra">
				<div class="col-lg-6 aos-init aos-animate" data-aos="fade-right">
					<img src="<?=base_url()?>assets/biz/img/whatsapp.png" class="img-fluid" style="width: 50%" alt="PnaPna alllows you to communicate your employees and clients by WhatsApp">
				</div>
				<div class="col-lg-6 pt-5 pt-lg-0 aos-init aos-animate" data-aos="fade-left">
					<h3 class="mb-4">WhatsApp</h3>
					<p>PnaPna alllows you to communicate your employees and clients by WhatsApp.</p>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="pagePadding pt-0 mb-5 pb-5" id="applications">
	<div class="container-fluid" data-aos="fade-up">
		<div class="section-header">

			<p class="text-center">
				<button class="btn btn-primary btn-integration" onclick="$('#applications .btn-integration, #moreIntegrations').slideToggle()">More integrations...</button>
			</p>
			<div class="container" id="moreIntegrations" style="display: none;">
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
												<div class="media-body">

											<div class="app-rating">
												<?php for($r=1; $r<=5; $r++){ ?>
													<i class="fa fa-star d-inline-block mr-0 <?=($application->rating>=$r)?'checked':NULL;?>"></i>
												<?php } ?>
											</div>
													<h5 class="mb-0"><?=$application->name;?></h5>
													<small class="text-secondary">$<?=$application->price;?> per month billed annually</small>
												</div>
											</div>
										</div>
									</div>
								</div>
							</a>
						</div>
					<?php } ?>
						<div class="col-md-12 mt-5">
							<p class="text-center">
								<button class="price-btn btn btn-primary">Buy Now</button>
							</p>
						</div>
					<?php } ?>
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

<script type="text/javascript">
    $('.price-btn').on('click',function(){
        if(confirm("Please sign In/Up your account to buy this plan.")){
            window.location.assign("<?php echo base_url('signin')?>");
        }
        else{
            return false;
        }
    });
</script>