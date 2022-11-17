<?php
	$moduleData = '';
	if (!empty($cartDetails->modules)) {
		$moduleData = json_decode($cartDetails->modules, TRUE);
	}
?>
<div class="az-content-body">
	<div class="row row-sm">
		<div class="col-xl-12">
			<div class="card card-dashboard-twentyone">
				<?php if (!empty(checkPayment()) || getSubdomain()->status == 1) { ?>
					<div class="alert alert-warning mx-3 mt-2" role="alert">
						<strong>Note:</strong> You already have an activated plan. <a href="<?=base_url('dashboard')?>"><u>Click here</u></a> to go to "Work Manager" details or click the button below to proceed.
					</div>
				<?php } ?>
				<?php if (!empty($cartDetails)) { ?>
					<div class="card-body">
						<h5 class="card-title">Cart
							<span class="badge badge-light" target="_blank">Your cart values updated on:
								<strong><?=date('F d, Y', strtotime($cartDetails->created_at));?></strong>
							</span>
							<span class="float-right">Total Amount: $<span id="totalPrice"><?=number_format($cartDetails->total_price, 2);?></span></span>
						</h5>
						<div class="az-content-body">
							<div class="card card-invoice">
								<div class="card-body">

									<div class="row mg-t-20">
										<div class="col-md">
											<label class="tx-gray-600">Billed To</label>
											<div class="billed-to">
												<p><?=userData()->name?></p>
												<p>
													<?=userData()->street.', '.userData()->city.', '.userData()->state.', '.userData()->zip; ?><br>
													Tel No: <?=userData()->phone; ?><br>
													<?=userData()->billing_address; ?><br>
													Email: <?=userData()->email; ?>
												</p>
											</div>
										</div>
										<div class="col-md">
											<label class="tx-gray-600">Invoice Information</label>
											<p class="invoice-info-row">
												<span>Invoice No</span>
												<span>PNP-<?=str_pad($cartDetails->id, 4, '0', STR_PAD_LEFT); ?></span>
											</p>
											<p class="invoice-info-row">
												<span>Issue Date:</span>
												<span><?=date('F d, Y', strtotime($cartDetails->created_at));?></span>
											</p>
										</div>
									</div>
									<div class="table-responsive mg-t-40">
										<table class="table table-invoice">
											<thead>
												<tr>
													<th class="wd-20p" colspan="2" style="width: 500px">Item</th>
													<th class="tx-right" style="width: 200px">Unit Price</th>
													<th class="tx-right" style="width: 200px">Amount</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td colspan="2">

														<?php if (!empty($this->session->userdata('planCartData'))) {
															echo $this->session->userdata('planCartData')['planCartName'];
														}?>
													</td>
													<td class="tx-right">$<?=number_format(getCartPlan()['planCartPrice'], 2); ?></td>
													<td class="tx-right">$<?=number_format(getCartPlan()['planCartPrice'], 2); ?></td>
												</tr>
												<?php if (!empty($moduleData)) { foreach ($moduleData as $modules) { ?>
													<tr>
														<td colspan="2"><?=$modules['name']; ?></td>
														<td class="tx-right">$<?=number_format($modules['price'], 2); ?></td>
														<td class="tx-right">$<?=number_format($modules['price'], 2); ?></td>
													</tr>
												<?php }} ?>
												<tr>
													<td colspan="2" rowspan="4" class="valign-middle">
														<div class="cc-div mt-5">
															<span>Do you have coupon code?</span>

															<div class="input-group">
																<div class="input-group-prepend">
																</div>
																<input type="text" class="form-control" aria-label="Amount (to the nearest dollar)" id="coupon_code">
																<div class="input-group-append">
																	<span class="input-group-text" onclick="checkCouponCode();">Apply</span>
																</div>
															</div>
															<p id="coupanMsg" class="text-center"></p>
														</div>
													</td>
													<td class="tx-right">Sub-Total</td>
													<td colspan="2" class="tx-right">$<?=number_format($cartDetails->total_price, 2);?></td>
												</tr>
												<script type="text/javascript">
													function checkCouponCode()
													{
														var coupanCode = $('#coupon_code').val();
														var totalAmnt  = '$'+$('#totalPrice').text();
														if (coupanCode=='free') {
															$('#coupanMsg').text('Coupon code applied!');
															$('#coupanMsg').css('color','green');
															$('#totalAmount h4').text('$00.00');
															$('#normalPay').hide();
															$('#freePay').show();
														}else{
															$('#coupanMsg').text('Coupon code invalid!');
															$('#coupanMsg').css('color','red');
															$('#totalAmount h4').text(totalAmnt);
															$('#normalPay').show();
															$('#freePay').hide();
														}
													}
												</script>
												<tr>
													<td class="tx-right border-none">Tax (0%)</td>
													<td colspan="2" class="tx-right">$00.00</td>
												</tr>
												<tr>
													<td class="tx-right border-none">Discount</td>
													<td colspan="2" class="tx-right">-$00.00</td>
												</tr>
												<tr>
													<td class="tx-right tx-uppercase tx-bold tx-inverse border-none">Total Amount</td>
													<td colspan="2" id="totalAmount" class="tx-right"><h4 class="tx-primary tx-bold">$<?=number_format($cartDetails->total_price, 2);?></h4></td>
												</tr>
											</tbody>
										</table>
									</div>
									<hr class="mg-b-40">
									<?php if (getCartPlan()['planCartPrice']==0) { ?>
										<a href="<?=base_url('buyFreeCouponProduct');?>" class="btn btn-primary btn-block">Pay Now</a>
									<?php }else{ ?>
										<a href="<?=(getUserVariant()->free==1)?base_url('buyFreeProduct'):base_url('buyProduct');?>" class="btn btn-primary btn-block" id="normalPay">Pay Now</a>

										<a href="<?=base_url('buyFreeCouponProduct');?>" class="btn btn-primary btn-block" style="display:none;" id="freePay">Pay Now</a>
									<?php } ?>
								</div>
							</div>
						</div>
					</div>
				<?php }else{ ?>
					<div class="card-body">
						<p class="mb-0 tx-16">
							Your cart is empty. Please choose your applications:
							<a href="<?=base_url('setupWorkManager')?>">
								<button class="btn btn-xs btn-warning">Go to APPs</button>
							</a>
						</p>
					</div>
				<?php } ?>
			</div>
		</div>
	</div>
</div>
<style type="text/css">
	.input-group-append .input-group-text{
		cursor: pointer;
	}
	.input-group-append .input-group-text:hover{
		background: #ffc107;
		border: solid 1px #eaaf00;
		color: #fff;
	}
</style>