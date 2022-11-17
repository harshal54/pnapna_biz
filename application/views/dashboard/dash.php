<div class="az-content-header">
  <div class="az-content-header-top">
    <div>
      <h2 class="az-content-title mg-b-5 mg-b-lg-8 text-white">Hi, Welcome!
      <small>This is your PnaPna control panel</small>
      </h2>
    </div>
  </div>
</div>
<div class="az-content-body">
  <div class="row row-sm">
    <?php if (!empty($this->session->userdata('life_time_from_enrollment'))) { ?>
      <div class="alert alert-solid-success mx-3" role="alert" style="width: 100%;">
        <strong>Note:</strong> You have already choosen <b>Life Time License</b>. <a href="<?=base_url('users/choosePlan/4')?>" class="text-white"><u>Click here</u></a> to make a payment for this plan.
      </div>
    <?php } ?>
<div class="col-xl-12">
  <div class="card">
    <div class="card-header">
        <table class="mt-3 table">
          <tbody>
            <tr>
              <th style="width:0%">Your Account Name:</th>
              <td  style="width:0%"><?=userData()->account_name;?></td>
            </tr>
            <tr>
              <th>Your Variant Name:</th>
              <td><?=getUserVariant()->variant_name?></td>
            </tr>
          </tbody>
      </table>
    </div>
  </div>
</div>
    <div class="col-xl-12 mt-4">
      <div class="card card-dashboard-audience-metrics">
        <div class="card-header">
          <p class="card-title">Work Manager</p>
          <?php if (!empty(checkPayment()) && getSubdomain()->status == 0) { ?>
            <p class="mg-b-15">Your work manager needs to be Activated. Click the button below to activate your work manager.</p>
          <?php }elseif (getSubdomain()->status == 1) {?>
            <p class="mg-b-15 mb-1 text-success tx-14">Your work manager is activated</p>
            <p class="mg-b-15">
              <a href="<?=base_url('myIntegrations')?>"><u>Click here</u></a>
              if you want to activate an integration.
            </p>
            <table class="mt-3 table">
              <tr>
                <th>Link:&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <td>
                  <?php if (getUserVariant()->slug=='core') { ?>
                  <a href="<?=subDomainUrl();?>/admin" target="_blank"><?=subDomainUrl();?>/admin</a>
                <?php }else{ ?>
                  <a href="<?=subDomainUrl();?>/admin" target="_blank"><?=subDomainUrl();?>/admin</a>
                <?php } ?>
                </td>
              </tr>
              <tr>
                <th>Email:&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <td><u><?=userData()->email;?></u></td>
              </tr>
              <tr>
                <th>Password:&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <td>Passwords for your both Business and Work Manager are same for now.</td>
              </tr>
            </table>
          <?php }else{ ?>
            <p class="mg-b-15">
            <?php if (getUserVariant()->slug=='core') { ?>
              You want a full service or you want a quick launch?
            <?php }else{ ?>
              Your work manager needs to be Set up. Click the button below to get started.
            <?php } ?>
            </p>
          <?php } ?>
        </div>
        <?php if (!empty(getCart()) && getSubdomain()->status != 1) { ?>
          <div class="alert alert-solid-danger mx-3" role="alert">
            <strong>Note:</strong> You have already choosen some Integrations. <a href="<?=base_url('checkoutPayment')?>" class="text-white"><u>Click here</u></a> to go to your cart or to choose more Integrations click the button 'Choose Integrations' given below.
          </div>
        <?php } ?>
        <div class="card-body">
          <?php if (!empty(checkPayment()) && getSubdomain()->status == 0) { ?>
            <button class="btn btn-warning btn-rounded" id="activateWorkManager">Activate Work Manager</button>
          <?php }elseif (getSubdomain()->status == 1) {?>
            <!-- Message when Work manager is activated -->
          <?php }else{ ?>
            <?php if (getUserVariant()->slug=='core') { ?>
                <a href="javascript:;" id="popoverBtn1" class="popover-toggle btn btn-warning mr-3" title="You will have to setup your sub-domain(Account) with a free plan to use the full featured core system.">Full Service</a>
                <div id="popoverContent1" style="display: none">
                  <a href="<?=base_url('setupWorkManager')?>" class="mr-3">
                    <button class="btn btn-warning btn-block">Go</button>
                  </a>
                </div>
                <a href="javascript:;" id="popoverBtn2" class="popover-toggle btn btn-info mr-3" title="Quickly create your invoices. You can download the created invoice but it won't save your data for the feature. Go to 'Full Service' to keep your data forever.">Quick Launch</a>
                <div id="popoverContent2" style="display: none">
                  <a href="https://demo.pnapnacore.com/admin/invoices" target="_blank" class="mr-3">
                    <button class="btn btn-warning btn-block">Go</button>
                  </a>
                </div>
                <script type="text/javascript">
                  $(document).ready(function(){
                    $('#popoverBtn1').popover({
                      html : true, 
                      content: function() {
                        return $('#popoverContent1').html();
                      } 
                    });  
                    $('#popoverBtn2').popover({
                      html : true, 
                      content: function() {
                        return $('#popoverContent2').html();
                      } 
                    });  
                  });
                </script>
              <style type="text/css">
                .popover-header {
                    text-transform: none;
                    letter-spacing: unset;
                    font-size: 14px!important;
                    background-color: #fff!important;
                }
              </style>
            <?php }else{ ?>
              <a href="<?=base_url('setupWorkManager')?>">
                <button class="btn btn-warning btn-block">Choose Plan/Integrations</button>
              </a>
            <?php } ?>
          <?php } ?>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="accActivationModal" tabindex="-1" role="dialog" aria-labelledby="loadMeLabel">
  <div class="modal-dialog modal-md" role="document">
    <div class="modal-content">
      <div class="modal-body text-center py-3">
        <div class="loader-txt">
          <h4 class="mb-3" style="font-weight:300">Your account is being created. Please enjoy our process for your prosperity.</h4>
          <div id="pbar_outerdiv" style="height: 20px; border: 1px solid #37973a; z-index: 1; position: relative; border-radius: 5px; -moz-border-radius: 5px;">
            <div id="pbar_innerdiv" style="background-color:#4caf50; z-index: 2; height: 100%; width: 0%;"></div>
            <div id="pbar_innertext" class="mt-2" style="z-index: 3; height: 100%; color: black; font-weight: bold; text-align: center;">0%</div>
          </div>
          <div class="embed-responsive embed-responsive-16by9" style="margin-top:32px">
            <iframe frameborder="0" scrolling="no" marginheight="0" marginwidth="0" width="788.54" height="443" type="text/html" src="https://www.youtube.com/embed/JJAU-jQuG1A?autoplay=0&fs=0&iv_load_policy=3&showinfo=0&rel=0&cc_load_policy=0&start=0&end=0&origin=https://youtubeembedcode.com"></iframe>
          </div>
          <div class="activating-msg mt-2">
            <p class="alert alert-warning">
              Depending upon your ISP, and internet speed, it may take more than 2+ minutes.
              If you wish us to send you the information by email, when the account is created.
              Please <span onclick="SendAccDtls()" class="text-primary" style="cursor:pointer">click here</span>.
            </p>
          </div>
          <p class="mb-1"><u>Please do not try to sign in again, until the account has been created.</u></p>
            <a href="<?=base_url('contact')?>" target="_blank">Click here</a> to contact us.
        </div>
      </div>
    </div>
  </div>
</div>

<style type="text/css">
  #accActivationModal .modal-content {
    border-radius: 0px;
    box-shadow: 0 0 20px 8px rgba(0, 0, 0, 0.7);
  }
  .dis-none{display: none}
  #accActivationModal .modal-content{
    overflow: auto;
  }
  #accActivationModal .modal-content::-webkit-scrollbar {
    width: 10px;
  }
  #accActivationModal .modal-content::-webkit-scrollbar-track {
    background: #f1f1f1;
  }
  #accActivationModal .modal-content::-webkit-scrollbar-thumb {
    background: #03a9f4;
  }
  #accActivationModal .modal-content::-webkit-scrollbar-thumb:hover {
    background: #0083bf;
  }
</style>

<script type="text/javascript">
  $("#activateWorkManager").click(function(e){
    $("#azSidebarToggle").trigger("click");
    $("#accActivationModal").modal({
      backdrop: "static",
      keyboard: false,
      show: true
    });
    $.ajax({
      type: "GET",
      url: "activateFieldService",

      success: function(result){
        window.location.reload('<?= base_url('dashboard');?>');
      }
    });
  });
</script>

<script>
  var timer = 0,
  timeTotal = 60000,
  timeCount = 20,
  timeStart = 0,
  cFlag;

  function updateProgress(percentage) {
      var x = (percentage/timeTotal)*100,
          y = x.toFixed(3);
      $('#pbar_innerdiv').css("width", x + "%");
      $('#pbar_innertext').text(x.toFixed(2) + '%');
  }
  function animateUpdate() {
      var perc = new Date().getTime() - timeStart;
      if(perc < timeTotal) {
          updateProgress(perc);
          timer = setTimeout(animateUpdate, timeCount);
      } else {
          updateProgress(timeTotal);
      }
  }
  $(document).ready(function() {
      $('#activateWorkManager').click(function() {
          if (cFlag == undefined) {
              clearTimeout(timer);
              cFlag = true;
              timeStart = new Date().getTime();
              animateUpdate();
          }
      });
  });
</script>

<script>
  function SendAccDtls(){
    $('.activating-msg .alert').text('Please wait...');
    setTimeout(AccDtlsSent, 5000)
  }
  function AccDtlsSent(){
    $('.activating-msg .alert').removeClass('alert-warning');
    $('.activating-msg .alert').addClass('alert-success');
    $('.activating-msg .alert').text('We will send you the account activation email with in 24 hours');
  }
  </script>