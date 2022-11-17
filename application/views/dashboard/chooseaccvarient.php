<?php
  if (!empty($this->session->userdata('account_name_from_enrollment'))) {
    $randAccName = $this->session->userdata('account_name_from_enrollment');
  }else{
    $randAccName = substr(str_shuffle('abcdefghijklmnopqrstuvwxyz'),1,4).rand(10000000,1);
  }
?>

<div class="az-content-body">
  <div class="row row-sm">
    <div class="col-xl-12 mg-t-20">
      <div class="card card-dashboard-twentyone">
        <div class="card-body">
          <p class="tx-18-f">
            <?=(empty(userData()->account_name)?'Please choose your Account Name':'Please choose your Variant') ?>
          </p>
          <?=(empty(userData()->account_name)?'<p class="valid-info mb-0">Your Choice: Between 11 to 15 Characters. It can’t be changed later. Or System Generated: <b>'.$randAccName.'</b></p>':NULL) ?>
          <?php if (empty(userData()->account_name)) { ?>
            <div class="center" style="text-align: center;">
              <div id="register" style="width: 100%;">
                <div id="inputContainer">
                  <div class="d-inline-block mt-2">
                    <div class="submitBox">
                      <h4 class="text-center" style="font-weight: 300;margin-bottom: 16px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Submit to create an account&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4>
                      <div class="input-group mb-3" style="margin: 0 auto;">
                        <input type="text" class="form-control accountNameInput" id="account_name" name="account_name" required="" value="<?=$randAccName?>" onkeyup="(checkAccountName())" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="basic-addon2" autofocus="">
                        <div class="input-group-append">
                          <button id="btnSubmit" class="btn btn-xs btn-outline-secondary next position-absolute" type="button" style="border-radius: 20px;right: 5px;z-index: 99;top: 5px;border: none;background: rgb(255, 235, 59);color: rgb(47, 47, 47);">Submit</button>
                        </div>
                      </div>
                      <span id="responseMsg" class="mt-1">This account name is available</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
      <?php }else{ ?>
        <?php echo form_open(base_url( 'saveVariantName'))?>
          <div class="col-lg-8 mt-3">
            <select class="form-control mb-2" name="variant_id" required style="width:80%;display:inline-block;">
              <option label="Choose your Variant"></option>
              <optgroup label="Available Variants">
                <?php if (!empty(get_variants())) { foreach (get_variants() as $variants) {
                  if ($variants->status==1) { ?>
                    <option value="<?=$variants->id;?>" class="tx-gray-800"><?=$variants->variant_name;?></option>
                <?php }}} ?>
              </optgroup>
              <optgroup label="Variants coming soon...">
                <?php if (!empty(get_variants())) { foreach (get_variants() as $variants) {
                  if ($variants->status!=1) { ?>
                    <option label="<?=$variants->variant_name;?>" class="tx-gray-600" disabled></option>
                <?php }}} ?>
              </optgroup>
            </select>
            <button class="btn btn-primary">Submit</button>
          </div>
        <?php echo form_close();?>
      <?php } ?>

          <script type="text/javascript">
            function checkAccountName()
            {
              var account_name = $('#account_name').val();
              $('#btnSubmit').hide();
              if (account_name.length >= 11 && account_name.length <= 15){
                $('#btnSubmit').show();
                $.ajax({
                  type: "POST",
                  url: "<?=base_url('checkAccName')?>",
                  data: {'account_name':account_name},
                  success: function (result) {
                    var res = JSON.parse(result);

                    $('#responseMsg').css('color', res['color']);
                    $('#account_name').val(res['accname']);
                    $('#responseMsg').text(res['msg']);
                  }
                });
              }else{
                $('#responseMsg').text('Please choose your account name between 11 to 15 Characters');
                $('#responseMsg').css('color','red');
              }
            }

            $(document).ready(function(){
              $('#btnSubmit').click(function(){
                var account_name = $('#account_name').val();
                $.ajax({
                  type: "POST",
                  url: "<?=base_url('saveAccName')?>",
                  data: {'account_name':account_name},
                  success: function (result) {
                    var res = JSON.parse(result);
                    if (res['msg'] == 'success') {
                      window.location.href = "<?=base_url('chooseAccVarient')?>";
                    }else{
                      $('#responseMsg').css('color', res['color']);
                      $('#account_name').val(res['accname']);
                      $('#responseMsg').text(res['msg']);
                    }
                  }
                });
              });
            });
          </script>

        </div>
      </div>
    </div>
  </div>
</div>

<style type="text/css">
  .center {
    justify-content: center;
    align-items: center;
    padding: 30px 0;
  }
  #register {
    position: relative;
    width: 80%;
    transition: transform .1s ease-in-out;
    transform: translate(0px, 0px)
  }
  @media only screen and (max-width: 720px) {
    #register {
      width: 100%;
    }
    .card-body h3{
      font-size: 18px
    }
  }
  #register.close {
    width: 0;
    padding: 0;
    overflow: hidden;
    transition: .8s ease-in-out;
    box-shadow: 0 16px 24px 2px rgba(0,0,0,0);
  }
  #inputContainer input {
    font-size: 20px;
    background: transparent;
    vertical-align: middle;
  }
  .valid-info{
    background: #fff7b8;
    padding: 10px;
    border-radius: 3px;
    border: solid 1px #e9e09c;
  }
  .gotom{ border-radius: 100%;height: 286px;width: 288px;position: relative;}
  .clickMarketplace{ position: absolute;top: 43%;width: 200px;left: 15%;font-weight: 300;}
  .submitBox{
    background: #e1e1e1;
    padding: 30px;
    border-radius: 4px;
  }
  .accountNameInput{border: none; background: white !important ; border-radius: 20px;padding: 2px 10px;}
  #responseMsg{color: rgb(0 158 12);background: #f7f7f7;padding: 4px 5px;border-radius: 4px;}
</style>