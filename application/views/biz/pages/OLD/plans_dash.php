<link href="<?=base_url()?>/assets/dashboard/lib/fontawesome-free/css/all.min.css" rel="stylesheet">
<section class="pagePadding mb-5 pt-4" id="varients">
		<div class="section-header">
  <link rel="stylesheet" href="<?=base_url()?>assets/biz/css/range-slider.css">
<?php if (getUserVariant()->free==1) { ?>
  <div class="text-center">
    <p>Only "Free For Life" plan is available in your variant. Please select the button below:</p>
    <button type="button" class="btn btn-secondary mb-2" onclick="showPricingColumn(0);$('.mobile-slider button').css('background','#fff');$(this).css('background','#4cf62d')">Free for Life</button>
  </div>
  <style type="text/css">
    .c-1, .c-2, .c-3, .c-4{
      display: none !important;
    }
  </style>
<?php }else{ ?>
  <div id="slide-price-1" class="mt-3">
    <div id="range-1" class="range">
      <input id="input-range-1" type="range" min="1" max="5" steps="1" value="1">
    </div>
    <ul id="labels-range-1" class="range-labels">
      <li class="selected" onclick="showPricingColumn(4)" title="Covid Lifetime Subscription">Lifetime</li>
      <li onclick="showPricingColumn(1)" title="Pay Per Use">Pay Per Use</li>
      <li onclick="showPricingColumn(2)" title="Small Teams">Small Teams</li>
      <li onclick="showPricingColumn(3)" title="Medium Teams">Medium Teams</li>
      <li onclick="showPricingColumn(0)" title="Free for Life">Free for Life</li>
    </ul>
  </div>
<?php } ?>
  <div class="mobile-slider mt-5" style="display: none;">
    <button class="btn btn-default mb-2" type="button" onclick="showPricingColumn(4);$('.mobile-slider button').css('background','#fff');$(this).css('background','#4cf62d')" style="background:#4cf62d">Covid Lifetime</button>
    <button class="btn btn-default mb-2" type="button" onclick="showPricingColumn(1);$('.mobile-slider button').css('background','#fff');$(this).css('background','#4cf62d')">Pay Per Use</button>
    <button class="btn btn-default mb-2" type="button" onclick="showPricingColumn(2);$('.mobile-slider button').css('background','#fff');$(this).css('background','#4cf62d')">Small Teams</button>
    <button class="btn btn-default mb-2" type="button" onclick="showPricingColumn(3);$('.mobile-slider button').css('background','#fff');$(this).css('background','#4cf62d')">Medium Teams</button>
    <button class="btn btn-default mb-2" type="button" onclick="showPricingColumn(0);$('.mobile-slider button').css('background','#fff');$(this).css('background','#4cf62d')">Free for Life</button>
  </div>
<p class="text-center mb-0 mt-3">
  <a href="javascript:;" class="text-secondary" onclick="$('.table-bordered thead,.table-bordered tbody').slideToggle();">More Details</a>
</p>
  <script type="text/javascript" src="<?=base_url()?>assets/biz/js/range-slider.js"></script>
  <div style="text-align: center; margin-top:13px!important;color: #03056b; overflow-x:auto;" class="row mt-4">
    <table class="table table-bordered">
      <thead style="display: none;">
        <tr>
          <th colspan="2" class="pnapna">PnaPna Features</th>
          <th class="ftr c-1" style="display: none">
            <div class="price-was">Pay Per Use</div>
            <hr style="margin:0;background-color: rgba(247, 246, 246, 0.4);"> 
            <div class="price-now">99 cent/Lead<br>"Deposite $50"</div>
          </th>
          <th class="ftr c-2" style="display: none">
            <div class="price-was">Small Teams</div>
            <hr style="margin:0;background-color: rgba(247, 246, 246, 0.4);"> 
            <div class="price-now">$79/YR</div>
          </th>
          <th class="ftr c-3" style="display: none">
            <div class="price-was">Medium Teams</div>
            <hr style="margin:0;background-color: rgba(247, 246, 246, 0.4);"> 
            <div class="price-now">$129/YR</div>
          </th>
          <th class="ftr c-4" style="display: table-cell;width: 100px">
            <div class="price-was">Covid Lifetime</div>
            <hr style="margin:0;background-color: rgba(247, 246, 246, 0.4);"> 
            <div class="price-now"><del style="text-decoration:line-through;color: red;">$2,999.00</del> $99/LT</div>
          </th>
          <th class="ftr c-0" style="display: none">
            <div class="price-was">Free for Life</div>
          </th>
        </tr>
    </thead>
    <tbody style="display: none;">
      <tr>
        <td colspan="2" class="trtext">CRM: Leads, Sales, Invoices, PAYPAL Payments Gateway</td>
        <td class="tdtext c-1" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
        <td class="tdtext c-2" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
        <td class="tdtext c-3" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>  
        <td class="tdtext c-4" style="display: table-cell;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
        <td class="tdtext c-0" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
      </tr>
      <tr>
        <td colspan="2" class="trtext">Projects Manager: Tasks, Calendar, KANBAN, GANTT, To Do, Notes</td>
        <td class="tdtext c-1" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
        <td class="tdtext c-2" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
        <td class="tdtext c-3" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>  
        <td class="tdtext c-4" style="display: table-cell;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
        <td class="tdtext c-0" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
      </tr>
      <tr>
        <td colspan="2" class="trtext">Folders Vault</td>
        <td class="tdtext c-1" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
        <td class="tdtext c-2" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
        <td class="tdtext c-3" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>  
        <td class="tdtext c-4" style="display: table-cell;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
        <td class="tdtext c-0" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
      </tr>
      <tr>
        <td colspan="2" class="trtext">Unlimited Clients, Projects, Tasks, Folders</td>
        <td class="tdtext c-1" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
        <td class="tdtext c-2" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
        <td class="tdtext c-3" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>  
        <td class="tdtext c-4" style="display: table-cell;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
        <td class="tdtext c-0" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
      </tr>
      <tr>
        <td colspan="2" class="trtext">Number Of Operator Accounts</td>
        <td class="c-1" style="display: none;"><span>1</span></td>
        <td class="c-2" style="display: none;">5</td>
        <td class="c-3" style="display: none;">10</td>  
        <td class="c-4" style="display: table-cell;">3</td>
        <td class="c-0" style="display: none;">1</td>
      </tr>
      <tr>
        <td colspan="2" class="trtext">Disk Storage In GB. Additional $20 Per Calendar Month Per 5 GB </td>
        <td class="c-1" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
        <td class="c-2" style="display: none;">5</td>
        <td class="c-3" style="display: none;">10</td>  
        <td class="c-4" style="display: table-cell;">5</td>
        <td class="c-0" style="display: none;">1</td>
      </tr>
      <tr>
        <td colspan="2" class="trtext">Data Usage In GB Per Calendar Month. Additional $ 20 Per Month Per 5 GB</td>
        <td class="c-1" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
        <td class="c-2" style="display: none;">5</td>
        <td class="c-3" style="display: none;">10</td>  
        <td class="c-4" style="display: table-cell;">30</td>
        <td class="c-0" style="display: none;">1</td>
      </tr>
      <tr>
        <td colspan="2" class="trtext">Forum Support</td>
        <td class="c-1" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
        <td class="c-2" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
        <td class="c-3" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>  
        <td class="c-4" style="display: table-cell;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
        <td class="c-0" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
      </tr>  
      <tr>
        <td colspan="2" class="trtext">Email Support</td>
        <td class="c-1" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
        <td class="c-2" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
        <td class="c-3" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>  
        <td class="c-4" style="display: table-cell;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
        <td class="c-0" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
      </tr>
      <tr>
        <td colspan="2" class="trtext">Phone Support</td>
        <td class="c-1" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
        <td class="c-2" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
        <td class="c-3" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>  
        <td class="c-4" style="display: table-cell;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
        <td class="c-0" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
      </tr>
      <tr>
        <td colspan="2" class="trtext">Communication: Private Email, Chat, Skype Phone (Additional Modules)</td>
        <td class="c-1" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
        <td class="c-2" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
        <td class="c-3" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>  
        <td class="c-4" style="display: table-cell;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
        <td class="c-0" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
      </tr>
      <tr>
        <td colspan="2" class="trtext">Appointments (Additional Modules) </td>
        <td class="c-1" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
        <td class="c-2" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
        <td class="c-3" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>  
        <td class="c-4" style="display: table-cell;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
        <td class="c-0" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
      </tr>
      <tr>
        <td colspan="2" class="trtext">Desktop Integration Syncing (Additional Modules)</td>
        <td class="c-1" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
        <td class="c-2" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
        <td class="c-3" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>  
        <td class="c-4" style="display: table-cell;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
        <td class="c-0" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
      </tr>
      <tr>
        <td colspan="2" class="trtext">Private Disk (Additional Modules) </td>
        <td class="c-1" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
        <td class="c-2" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
        <td class="c-3" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>  
        <td class="c-4" style="display: table-cell;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
        <td class="c-0" style="display: none;"><span class="uncheck"><i class="fa fa-circle"></i></span></td>
      </tr>
    </tbody>
    <tfoot>
      <tr>
        <td colspan="3" class="c-1" style="border-color:#ffffff;display:none;">
          <a href="<?=base_url('users/choosePlan/1')?>" class="btn btn-primary">Choose Plan</a>
        </td>
        <td colspan="3" class="c-2" style="border-color:#ffffff;display:none;">
          <a href="<?=base_url('users/choosePlan/2')?>" class="btn btn-primary">Choose Plan</a>
        </td>
        <td colspan="3" class="c-3" style="border-color:#ffffff;display:none;">
          <a href="<?=base_url('users/choosePlan/3')?>" class="btn btn-primary">Choose Plan</a>
        </td>
        <td colspan="3" class="c-4" style="border-color:#cdd4e0;">
          <a href="<?=base_url('users/choosePlan/4')?>" class="btn btn-primary">Choose Plan</a>
        </td>
        <td colspan="3" class="c-0" style="border-color:#ffffff;display:none;">
          <a href="<?=base_url('users/choosePlan/0')?>" class="btn btn-primary">Choose Plan</a>
        </td>
      </tr>
    </tfoot>
  </table>
</div>
		</div>
</section>

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