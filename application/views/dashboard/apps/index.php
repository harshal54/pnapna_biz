<div class="az-content-body">
  <div class="row row-sm">

    <!-- <div class="col-sm-3 col-xl-3 mb-4">
      <div class="card card-dashboard-twentytwo" id="pnapnaSites">
        <div class="media">
          <div class="media-body">
            <h6>PnaPnaSites</h6>

            <?php
              if (empty(checkPayment())) {
                echo '<p class="mb-1 text-danger">You do not have any active plan. Click the button below to choose a plan.</p><a href="'.base_url().'setupWorkManager" class="btn btn-xs btn-danger">Choose a plan</a>';
              }else{

             if (userData()->wpsite==0) {
              echo '<span>Not yet integrated</span> <button type="button" class="btn btn-warning btn-xs btn-rounded mt-2" id="wpSite">Integrate</button>';
            }else{
              echo '<a href="https://'.userData()->account_name.'.pnapnasites.com/" class="btn btn-xs btn-info" target="_blank">Go to your integrated site</a>';
            }
          }?>

          </div>
          <?php if (userData()->wpsite==1) {
            echo '<i class="fa fa-check appChecked" title="PnaPnaSites is created!"></i>';
            echo '<a href="'.base_url('saasBizSite').'" class="wantHelpTxt"><i class="fa fa-info" title="Click here for help"></i></a>';
          }?>
        </div>
      </div>
    </div> -->
    
    <div class="col-sm-3 col-xl-3 mb-4">
      <div class="card card-dashboard-twentytwo" id="pnapnaScope">
        <div class="media">
          <div class="media-body">
            <h6>PnaPnaScope</h6>
            <?php
              if (empty(checkPayment())) {
                echo '<p class="mb-1 text-danger">You do not have any active plan. Click the button below to choose a plan.</p><a href="'.base_url().'setupWorkManager" class="btn btn-xs btn-danger">Choose a plan</a>';
              }else{

             if (userData()->pnapna_scope==0) {
              echo '<span>Not yet created</span> <button class="btn btn-warning btn-xs btn-rounded mt-2" onclick="createPnaPnaApps(`pnapnaScope`)">Create</button>';
            }else{
              echo '<a href="https://'.userData()->account_name.'.pnapna.in/scope" class="btn btn-xs btn-info" target="_blank">Go to PnaPnaScope</a>';
            }}
            ?>
          </div>
          <?php if (userData()->pnapna_scope==1) {
            echo '<i class="fa fa-check appChecked" title="PnaPnaScope is created!"></i>';
          }?>
        </div>
      </div>
    </div>
    
  
      <div class="col-sm-3 col-xl-3 mb-4">
        <div class="card card-dashboard-twentytwo" id="pnapnaCal">
          <div class="media">
            <div class="media-body">
              <h6>PnaPnaCal</h6>
              <?php
               if (empty(checkPayment())) {
                echo '<p class="mb-1 text-danger">You do not have any active plan. Click the button below to choose a plan.</p><a href="'.base_url().'setupWorkManager" class="btn btn-xs btn-danger">Choose a plan</a>';
              }else{
               if (userData()->pnapna_cal==0) {
                echo '<span>Not yet created</span> <button class="btn btn-warning btn-xs btn-rounded mt-2" onclick="createPnaPnaApps(`pnapnaCal`)">Create</button>';
              }else{
                echo '<a href="https://'.userData()->account_name.'.pnapna.in/cal" class="btn btn-xs btn-info mb-2" target="_blank">Go to PnaPnaCal</a>';
                echo '</br><a href="'.base_url().'downloads/pnapna-cal" class="text-primary" target="_blank"><b><u>How to use booking form on your website?</u></b></a>';
              } }
              ?>
            </div>
            <?php if (userData()->pnapna_cal==1) {
              echo '<i class="fa fa-check appChecked" title="PnaPnaCal is created!"></i>';
            }?>
          </div>
        </div>
      </div>


    <div class="col-sm-3 col-xl-3 mb-4 mg-t-20 mg-sm-t-0">
      <div class="card card-dashboard-twentytwo" id="pnapnaPodium">
        <div class="media">
          <div class="media-body">
            <h6>PnaPnaPodium</h6>
          <?php
              if (empty(checkPayment())) {
                echo '<p class="mb-1 text-danger">You do not have any active plan. Click the button below to choose a plan.</p><a href="'.base_url().'setupWorkManager" class="btn btn-xs btn-danger">Choose a plan</a>';
              }else{

             if (userData()->pnapna_podium==0) {
              echo '<span>Not yet created</span> <button class="btn btn-warning btn-xs btn-rounded mt-2" onclick="createPnaPnaApps(`pnapnaPodium`)">Create</button>';
            }else{
              echo '<a href="https://'.userData()->account_name.'.pnapna.in/podium" class="btn btn-xs btn-info" target="_blank">Go to PnaPnaPodium</a>';
            }}
            ?>
          </div>
        </div>
      </div>
    </div>

  </div>
</div>


<!-- SCOPE START -->

<script type="text/javascript">
  function createPnaPnaApps(id){
    var html = "<p style='background: #fffac9;padding: 0 10px;border: solid 1px #e1d987;'><b>Your application is being Setup. Please do not close your browser or refresh the page.</b></p><p class='text-center'><img src='https://pnapna.com/assets/biz/img/loader/apploader.gif' width='55'></p>";
    $('#'+id+' .media-body').html(html);

    if (id=='pnapnaScope') {
      var appUrl      = "<?=base_url('activateScope')?>";
      var accPassword = "<?=userData()->password_md5?>";
    }else if (id=='pnapnaCal') {
      var appUrl      = "<?=base_url('activateCal')?>";
      var accPassword = "<?=userData()->password?>";
    } else if (id=='pnapnaPodium') {
      var appUrl      = "<?=base_url('activatePodium')?>";
      var accPassword = "<?=userData()->password_md5?>";
    } else{
      var appUrl      = "NULL";
    }
    var accEmail      = "<?=userData()->email?>";
    var accName       = "<?=userData()->account_name?>";

      $.ajax({
        type: "POST",
        url: appUrl,
        data: {email:accEmail, password:accPassword, accountName:accName},

        success: function(result){
        
          var res = JSON.parse(result);
          if (res['status'] == 1) {
            $.ajax({
                type: "post",
                url: "<?=base_url('setAppStatus');?>",
                data: {'status':1, 'appName':id},
                success: function (resData) {
                  window.location.reload('<?= base_url('myApps');?>');
                }
            });
          }else{
            $('#'+id+' .media-body').html('<p class="mb-0"><b class="text-danger">Error: Something went wrong!</b></p><button class="btn btn-xs btn-danger mt-2" onclick="createPnaPnaApps(`pnapnaScope`)">Try Again</button>');
          }

        }
      });
  }
</script>

<style type="text/css">
  .card .appChecked{
    position: absolute;
    top: 5px;
    right: 5px;
    font-size: 22px;
    color: green;
    padding: 5px;
    background: #ffffff;
    border: solid 1px #cccccc;
    border-radius: 20px;
  }
  .wantHelpTxt{
    position: absolute;
    bottom: 6px;
    right: 11px;
    color: #002272;
    padding: 0px 8px;
    background: #ffffff;
    border: solid 1px #cccccc;
    border-radius: 20px;
  }
  .wantHelpTxt:hover{
    background: #f4ff8a;
    border: solid 1px #ddef35;
  }
  .az-content-dashboard-nine .card{margin: 0 10px;border-radius: 10px;}
</style>

<!-- SCOPE END -->

<!-- WP WEBSITE START -->

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="loadMeLabel">
  <div class="modal-dialog modal-md" role="document">
    <div class="modal-content">
      <div class="modal-body text-center">
        <div class="loader"></div>
        <div class="loader-txt">
          <h4 class="accountText mb-0" style="font-weight:300">Your website is being Integrated</h4>
          <small class="tx-14 text-secondary">Please do not close your browser or refresh the page.</small>
          <p class="tx-14 text-secondary" style="font-weight:300">This might take 10 minutes or depends on your internet speed.</p>
        </div>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
  $(document).ready(function(){
    $('#wpSite').click(function(){
      $("#azSidebarToggle").trigger("click");
      $("#exampleModal").modal({
        backdrop: "static",
        keyboard: false,
        show: true
      });
      var value = 1;
      var email = "<?=userData()->email?>";
      var account_name = "<?=userData()->account_name?>";
      $.ajax({
        url: "https://api.pnapnasites.com/",
        type: 'post',
        dataType: 'json',
        data:{
          email:email,
          account_name:account_name,
        },
        success: function (data) {
          if(data.status == 1){
            var html = '<i class="fa fa-check"></i><div class="loader-txt"><p>You are all set</p><progress value="0" max="10" id="redirectPro"></progress><br><small>You will be redirected to the dashbord in <strong id="timeCount">10</strong> seconds where you will find your account details.</small></div><a href="<?= base_url() ?>dashboard">';

            $('#exampleModal .modal-body').html(html);
            var timeleft = 10;
            var downloadTimer = setInterval(function(){
              if(timeleft <= 0){
                clearInterval(downloadTimer);
              }
              $('#redirectPro').val(11 - timeleft);
              timeleft -= 1;
              $('#timeCount').text(timeleft);
            }, 1000);
            window.location = ('<?= base_url('Wp/UpdateWP') ?>');
          }
        }
      });
    });
  });
</script>

<style type="text/css">
  .item-box{display: none;}
  .form-control{width: 50%;display: inline-block;}
  .form-control-label{min-width: 150px}
  .custom-control{ position: relative;display: block; min-height: 1.3125rem;padding-left: 2.5rem; padding-top: 6px;font-size: 16px;}
  .az-body-dashboard-nine{
    background:white !important;
  }
  .modal-content{
    font-size: 21px !important;
    font-weight: 900 !important;
  }
  .loader {
    position: relative;
    text-align: center;
    margin: 15px auto 35px auto;
    z-index: 9999;
    display: block;
    width: 80px;
    height: 80px;
    border: 10px solid rgba(0, 0, 0, .3);
    border-radius: 50%;
    border-top-color: #000;
    animation: spin 1s ease-in-out infinite;
    -webkit-animation: spin 1s ease-in-out infinite;
  }
  @keyframes spin {
    to {
      -webkit-transform: rotate(360deg);
    }
  }
  @-webkit-keyframes spin {
    to {
      -webkit-transform: rotate(360deg);
    }
  }
</style>

<!-- WP WEBSITE END -->