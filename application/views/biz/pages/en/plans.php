<link href="<?=base_url()?>/assets/dashboard/lib/fontawesome-free/css/all.min.css" rel="stylesheet">

<div class="header-spacer"></div>


<div class="content-wrapper">

  <!-- Stunning-header -->

  <div class="stunning-header stunning-header-bg-breez22">
    <div class="stunning-header-content">
      <h1 class="stunning-header-title" style="color: #003580!important;">Pricing Plans</h1>
      <ul class="breadcrumbs" >
        <li class="breadcrumbs-item">
          <a href="<?=base_url()?>" class="text-body"style="color: #003580!important;">Home</a>
          <i class="seoicon-right-arrow"style="color: #003580!important;"></i>
        </li>
        <li class="breadcrumbs-item active">
          <span href="#" style="color: #003580!important;">Field-Service Magic</span>
          <i class="seoicon-right-arrow"></i>
        </li>
      </ul>
    </div>
  </div>

  <!-- End Stunning-header -->

<section class="pagePadding plans-section mb-5" id="varients" style="padding: 50px 0;">
  <div class="container-fluid" data-aos="fade-up">
    <div class="section-header">
      <div class="container">

        <link rel="stylesheet" href="<?=base_url()?>assets/biz/css/range-slider.css">

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

        <div class="mobile-slider mt-5" style="display: none;">
          <button class="btn btn-default mb-2" onclick="showPricingColumn(4);$('.mobile-slider button').css('background','#fff');$(this).css('background','#4cf62d')" style="background:#4cf62d">Covid Lifetime</button>
          <button class="btn btn-default mb-2" onclick="showPricingColumn(1);$('.mobile-slider button').css('background','#fff');$(this).css('background','#4cf62d')">Pay Per Use</button>
          <button class="btn btn-default mb-2" onclick="showPricingColumn(2);$('.mobile-slider button').css('background','#fff');$(this).css('background','#4cf62d')">Small Teams</button>
          <button class="btn btn-default mb-2" onclick="showPricingColumn(3);$('.mobile-slider button').css('background','#fff');$(this).css('background','#4cf62d')">Medium Teams</button>
          <button class="btn btn-default mb-2" onclick="showPricingColumn(0);$('.mobile-slider button').css('background','#fff');$(this).css('background','#4cf62d')">Free for Life</button>
        </div>

        <script type="text/javascript" src="<?=base_url()?>assets/biz/js/range-slider.js"></script>

        <div style="text-align: center; padding-top: 20px;color: #03056b; overflow-x:auto;" class="row mt-4">
          <table class="table table-bordered">
            <thead>
              <tr>
                <tr style="background-color: #E2EFDA;display: table-row;" class="c-4">
                  <td style="color:#70AD47;font-weight:500!important;font-size:30px;border-right: 1px solid #e2efda;">Life Time</td>
                  <td colspan="2" style="color:#70AD47;font-weight:500!important;font-size:30px;"><del style="text-decoration:line-through;color: red;">$2,999.00</del> $99.00/Life</td>
                </tr>
                <tr style="background-color: #DAE3F3;display: none" class="c-1">
                  <td style="color:#4472C4;font-weight:500!important;font-size:30px;border-right: 1px solid #dae3f3;">Pay Per Use</td>
                  <td colspan="2" style="color: #4472C4;font-weight:500!important;font-size:30px;">$0.99/Lead  &nbsp;&nbsp;$50/Deposit</td>
                </tr>
                <tr style="background-color:#FEF2CC;display: none" class="c-2">
                  <td  style="color: #463f29;font-weight:500!important;font-size:30px;border-right: 1px solid #fef2cc;">Small Teams</td>
                  <td  colspan="2" style="color: #463f29;font-weight:500!important;font-size:30px;">$29.99/MO &nbsp;&nbsp; $79/YR</td>
                </tr>
                <tr style="background-color:rgb(255 226 195);display: none" class="c-3">
                  <td style="color:#ff640a;font-weight:500!important;font-size:30px;border-right: 1px solid rgb(255 226 195);">Medium Teams</td>
                  <td  colspan="2" style="color:#ff640a;font-weight:500!important;font-size:30px;">$59.99/MO &nbsp;&nbsp;$129/YR</td>
                </tr>
                <tr style="background-color: #F4B083;display: none" class="c-0">
                  <td style="color:#002060;font-weight:500!important;font-size:30px;border-right: 1px solid #f4b083;">Free For Life </td>
                  <td colspan="2" style="color:#002060;font-weight:500!important;font-size:30px;">$00.00</td>
                </tr>
                <td colspan="3" class="pnapna" style="color: #002060;font-weight:400!important;">PnaPna Features</td>
                <!-- <td  class="ftr c-1" style="display: none;width: 100px">
                  <hr style="margin:0;background-color: rgba(247, 246, 246, 0.4);"> 
                </td>
                <td class="ftr c-2" style="display: none;width: 100px">
                  <hr style="margin:0;background-color: rgba(247, 246, 246, 0.4);"> 
                </td>
                <td class="ftr c-3" style="display: none;width: 100px">
                  <hr style="margin:0;background-color: rgba(247, 246, 246, 0.4);"> 
                </td>
                <td class="ftr c-4" style="display: table-cell;width: 100px">
                  <hr style="margin:0;background-color: rgba(247, 246, 246, 0.4);"> 
                </td>
                <td class="ftr c-0" style="display: none;width: 100px">

                </td> -->
              </tr>
            </thead>
            <tbody>
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
                <td class="c-4" style="display: table-cell;">10</td>
                <td class="c-0" style="display: none;">1</td>
              </tr>
              <tr>
                <td colspan="2" class="trtext">Disk Storage In GB. Additional $10 Per Calendar Month Per GB </td>
                <td class="c-1" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
                <td class="c-2" style="display: none;">5</td>
                <td class="c-3" style="display: none;">10</td>  
                <td class="c-4" style="display: table-cell;">10</td>
                <td class="c-0" style="display: none;">1</td>
              </tr>
              <tr>
                <td colspan="2" class="trtext">Data Usage In GB Per Calendar Month. Additional $20 Per Month Per GB</td>
                <td class="c-1" style="display: none;"><span class="tickblue"><i class="fa fa-check"></i></span></td>
                <td class="c-2" style="display: none;">5</td>
                <td class="c-3" style="display: none;">10</td>  
                <td class="c-4" style="display: table-cell;">10</td>
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
              <tr>
                <td colspan="3"><div><a class="price-btn btn">Buy <span class="hide-mobile text-white">Now</span></a></div></td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>

</div>

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

<style>
  .trtext{
    color: #002060;
  font-weight:400!important;
  }

</style>

<style type="text/css">
  .range input{
    background: #76666600;
  }
  .range-labels{
    margin: 5px -29px 0;
  }
  .plans-section input{
    padding: 0px 40px;
  }
  .range-labels li::before{
    left: 0px;
  }
</style>