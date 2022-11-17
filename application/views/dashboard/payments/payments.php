<div class="az-content-body">
	<div class="row row-sm">
		<div class="col-xl-12">

			<div class="card card-dashboard-twentyone">
				<div class="card-body">
					<p class="az-content-title tx-18-f mg-b-20">All Payments</p>
					<div id="azInvoiceList" class="az-invoice-list ps ps--active-y">
						<table class="table">
							<thead>
								<thead>
									<tr>
										<th>S/N</th>
										<th>Name</th>
										<th>Date</th>
										<th>Amount</th>
										<th>TX ID</th>
									</tr>
								</thead>
								<tbody>
									<?php if (!empty($paymentDetails)) { $sn=1; foreach ($paymentDetails as $payment) { ?>
										<tr>
											<td><?=$sn?></td>
											<td>
												<a href="<?=base_url('paymentDetails/').$payment->txn_id;?>">
													PNP-<?=str_pad($payment->payment_id, 4, '0', STR_PAD_LEFT); ?>
												</a>
											</td>
											<td><?=date('F d, Y', strtotime($payment->created_at));?></td>
											<td>$<?=number_format($payment->payment_gross,2);?></td>
											<td><?=$payment->txn_id;?></td>
										</tr>
										<?php  $sn++; }}else{ ?>
											<tr>
												<td colspan="5">
													Your payment history is empty. Please choose your applications:
													<a href="<?=base_url('setupWorkManager')?>">
														<button class="btn btn-xs btn-warning">Go to APPs</button>
													</a>
												</td>
											</tr>
										<?php } ?>
									</tbody>
								</thead>	
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>