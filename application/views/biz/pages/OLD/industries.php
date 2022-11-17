<link href="<?=base_url()?>/assets/dashboard/lib/fontawesome-free/css/all.min.css" rel="stylesheet">
<section id="trailing">
	<div class="container" data-aos="fade-up">
		<div data-aos="zoom-in" data-aos-delay="100">
			<h3 class="trailing-text">Industries</h3>
		</div>
	</div>
</section>

<section class="pagePadding mb-5 pb-5" id="varients">
	<div class="container-fluid" data-aos="fade-up">
		<div class="section-header">
			<div class="container">
				<div class="row">
					<?php if (!empty(get_industries())) { foreach (get_industries() as $industry) { ?>
						<div class="col-sm-4 col-sm-offset-4">
							<a href="https://<?=$industry->link;?>">
								<div class="card">
									<div class="card-content">
										<div class="card-body">
											<div class="media d-flex">
												<div class="align-self-center">
													<i class="<?=$industry->icon;?>" style="color:<?=$industry->color;?>"></i>
												</div>
												<div class="media-body">
													<h4 class="mb-0"><?=$industry->industry_name;?></h4>
													<span><?=$industry->description;?></span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</a>
						</div>
					<?php }} ?>

					<div class="col-sm-4 col-sm-offset-4">
							<a href="javascript:;">
								<div class="card">
									<div class="card-content">
										<div class="card-body">
											<div class="media d-flex">
												<div class="align-self-center">
													<i class="fa fa-wrench text-secondary"></i>
												</div>
												<div class="media-body">
													<h4 class="mb-0">Plumbing</h4>
													<span>Coming Soon...</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</a>
						</div>

						<div class="col-sm-4 col-sm-offset-4">
							<a href="javascript:;">
								<div class="card">
									<div class="card-content">
										<div class="card-body">
											<div class="media d-flex">
												<div class="align-self-center">
													<i class="fa fa-user text-secondary"></i>
												</div>
												<div class="media-body">
													<h4 class="mb-0">Freelancing</h4>
													<span>Coming Soon...</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</a>
						</div>
				</div>

				<div class="row mt-5">
					<div class="col-md-12 text-center">
						<?php
							if (isset($_GET['status'])) {
								echo "<p class='sent-message pb-3'>Your information has been submitted successfully. We will contact you shortly!</p>";
							}else{
								echo "<button class='btn btn-primary mb-5' onclick='$(this).hide();$(`#indForm`).slideToggle();'>Propose a new industry or a feature</button>";
							}
						?>
						
					</div>
					<div class="col-md-7 col-md-offset-3 mb-5" id="indForm" style="display: none;background: #f3f3f3;border-radius: 5px;margin: 0 auto;">

						<form method="post" action="<?=base_url('home/propose_new_industry');?>">
						<input type="hidden" name="<?=$this->security->get_csrf_token_name();?>" value="<?=$this->security->get_csrf_hash();?>">
							<h3 class="my-3">Propose a new industry or a feature</h3>
							<div class="form-group">
							    <label for="email">Email<small class="text-danger align-top">*</small> :</label>
							<input type="email" name="email" class="form-control" placeholder="Your Email" required>
							</div>

							<div class="form-group">
							    <label for="email">Industry/Feature Name<small class="text-danger align-top">*</small> :</label>
							<input type="text" name="proposed_industry" class="form-control" placeholder="Industry/Feature Name" required>
							</div>

							<div class="form-group">
							    <label for="email">Message<small class="text-danger align-top">*</small> :</label>
							<textarea name="message" rows="3" class="form-control" placeholder="Your message here..." required></textarea>
							</div>

							<div class="form-group text-center">
							<button type="submit" class="btn btn-success">Submit</button>
							</div>

						</form>
					</div>
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
	.card-body{border-top: solid 5px #0f4594;min-height:92px}
	.card:hover {
		box-shadow: 0 0 8px 4px rgb(21 21 21 / 15%);
		background-color: #f3f3f3;
	    transition: all 0.4s ease-in-out;
	}
	.card:hover::after {
		content: "\2192";
	    position: absolute;
	    right: 0;
	    font-size: 26px;
	    font-weight: 600;
	    background: #0f4594;
	    padding: 26.5px 10px;
	    top: 0px;
	    color: #fff;
	}
	/*.fa,.fab,.fas{font-size: 40px;}*/

	.media-body{
		width: 85%;
		margin-left: 0px;
	}
	.media-body h6, .media-body h4{
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
		font-weight: 300;
	}
	.align-self-center i{
		width: 40px;
	    vertical-align: bottom;
	    font-size: 35px;
	    margin-top: 3px;
	}
</style>