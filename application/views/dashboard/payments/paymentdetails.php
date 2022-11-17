<div class="az-content-body">
	<div class="row row-sm">
		<div class="col-xl-12">
			<div class="card card-dashboard-twentyone">
				<div class="card-body">
					<?php if (!empty($paymentDetails)) { ?>
						<p class="card-title tx-18-f">Payment Details
							<span class="float-right">Total Amount: $<span id="totalPrice"><?=number_format($paymentDetails->payment_gross, 2);?></span></span>
						</p>
						<?php if (getSubdomain()->status == 0) { ?>
				          <div class="alert alert-solid-success mx-3" role="alert">
				            <strong>Note:</strong> Your payment is successfully captured. <a href="<?=base_url('dashboard')?>" class="text-white"><u>Click here</u></a> to go to your "Work Manager" activation page.
				          </div>
				        <?php } ?>
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
											<label class="tx-gray-600">Payment Information</label>
											<p class="invoice-info-row">
												<span>Transection ID:</span>
												<span><?=$paymentDetails->txn_id;?></span>
											</p>
											<p class="invoice-info-row">
												<span>Payer ID:</span>
												<span><?=$paymentDetails->payer_id;?></span>
											</p>
											<p class="invoice-info-row">
												<span>Receiver ID:</span>
												<span><?=$paymentDetails->receiver_id;?></span>
											</p>
											<p class="invoice-info-row">
												<span>Payer Email:</span>
												<span><?=$paymentDetails->payer_email;?></span>
											</p>
											<p class="invoice-info-row">
												<span>Payment Date:</span>
												<span><?=date('F d, Y', strtotime($paymentDetails->created_at));?></span>
											</p>
											<p class="invoice-info-row">
												<span>Payment Status:</span>
												<span class="badge badge-pill <?=($paymentDetails->payment_status=='Completed')?'badge-success':'badge-secondary';?> text-white">
													<?=$paymentDetails->payment_status;?>
												</span>
											</p>
										</div>
									</div>

									<div class="table-responsive mg-t-40">
										<table class="table table-invoice mb-0">
											<thead>
												<tr>
													<th colspan="2" class="w-100">Item</th>
													<th class="tx-right">Amount</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td colspan="2"><?=$paymentDetails->plan_name?></td>
													<td class="tx-right">$<?=number_format($paymentDetails->plan_amount); ?></td>
												</tr>
												

												<?php $moduleData = '';
												if (!empty($userModules->modules)) {
													$moduleData = json_decode($userModules->modules, TRUE);
												}

												if (!empty($moduleData)) { foreach ($moduleData as $modules) { ?>
													<tr>
														<td colspan="2"><?=$modules['name']; ?></td>
														<td class="tx-right">$<?=number_format($modules['price'], 2); ?></td>
													</tr>
												<?php }} ?>

												<tr>
													<td class="tx-right">Sub-Total</td>
													<td colspan="2" class="tx-right">$<?=number_format($paymentDetails->total_amount, 2);?></td>
												</tr>

												<tr>
													<td class="tx-right border-none">Tax (0%)</td>
													<td colspan="2" class="tx-right">$00.00</td>
												</tr>
												<tr>
													<td class="tx-right border-none tx-uppercase tx-bold tx-inverse">Total Amount</td>
													<td colspan="2" class="tx-right">
														<h4 class="tx-primary tx-bold mb-0">$<?=number_format($paymentDetails->total_amount, 2);?></h4>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<hr class="mg-b-40 mt-0">
								</div>
							</div>
						</div>
					<?php }else{ ?>
						<strong class="text-danger">Payment not found!</strong>
					<?php } ?>
				</div>
			</div>
		</div>
	</div>
</div>