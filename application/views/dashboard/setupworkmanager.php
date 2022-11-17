<div class="az-content-body">
  <div class="row row-sm">
    <div class="col-xl-12">
      <div class="card card-dashboard-twentyone">
        <?php if (!empty(checkPayment()) || getSubdomain()->status == 1) { ?>
          <div class="alert alert-warning mx-3 mt-2" role="alert">
            <strong>Note:</strong> You already have an activated plan. <a href="<?=base_url('dashboard')?>"><u>Click here</u></a> to go to "Work Manager" details or choose your Integrations again.
          </div>
        <?php } ?>

        <div class="card-body">
          <span class="badge badge-light" target="_blank">Your Variant name is: <strong><?=getUserVariant()->variant_name;?></strong></span>


           <?php echo form_open(base_url( 'setupWorkManager' ), array( 'id' => 'appsForm','class'=>'mt-1'));?>

          <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
            <div class="panel panel-default">
              <div class="panel-heading" role="tab" id="headingOne">
                <h4 class="panel-title">
                  <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                    Your Plan
                    <?php
                      //pr($this->session->userdata());
                    ?>
                    <small class="text-success">
                      <?php
                      if (!empty($this->session->userdata('planCartData'))) {
                        echo "(".$this->session->userdata('planCartData')['planCartName'].")";
                      }else{
                        echo "(Please choose a plan)";
                      }
                      ?>
                    </small>

                  </a>
                </h4>
              </div>
              <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                <div class="panel-body">
                  <?php
                    $this->load->view('biz/pages/en/plans_dash');
                  ?>
                </div>
              </div>
            </div>



            <div class="panel panel-default">
              <div class="panel-heading" role="tab" id="headingTwo">
                <h4 class="panel-title">
                  <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    Your Integrations
                    <small>($<span id="totalPrice">00</span>)</small>
                  </a>
                </h4>
              </div>
              <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                <div class="panel-body">
                  <?php if (!empty($this->session->userdata('planCartData'))) {
                    if ($this->session->userdata('planCartData')['planCartId']==2 || $this->session->userdata('planCartData')['planCartId']==3) { ?>

                        <div class="row app-select">
                          <?php if (!empty($getModules)) { foreach ($getModules as $module) { if ($module->status==1) { ?>
                            <div class="col-md-4 col-sm-6 text-left">
                              <label for="<?=$module->slug; ?>">
                                <div class="app-rating">
                                  <?php for($r=1; $r<=5; $r++){ ?>
                                    <i class="fas fa-star d-inline-block mr-0 <?=($module->rating>=$r)?'checked':NULL;?>"></i>
                                  <?php } ?>
                                </div>

                                <i class="<?=$module->icon; ?> fa-icon" style="color:<?=$module->color; ?>"></i>
                                <p class="app-title mb-0" title="<?=$module->name; ?>">
                                  <span class="title"><strong><?=$module->name; ?></strong></span>
                                  <span title="$<?=round($module->price,2); ?> per month billed annually">$<?=round($module->price,2); ?> per month billed annually</span>
                                </p>
                                <input type="checkbox" name="<?=$module->slug; ?>" id="<?=$module->slug; ?>" onchange="setPrice(this)" value="<?=round($module->price,2)?>">
                              </label>
                            </div>
                          <?php }} foreach ($getModules as $module) { if ($module->status==0) { ?>
                            <div class="col-md-4 col-sm-6 text-left">
                              <label for="<?=$module->slug; ?>" style="pointer-events: none;background: #d7d7d7;opacity: 0.6;">
                                <div class="app-rating">
                                  <i class="fas fa-star d-inline-block mr-0"></i>
                                  <i class="fas fa-star d-inline-block mr-0"></i>
                                  <i class="fas fa-star d-inline-block mr-0"></i>
                                  <i class="fas fa-star d-inline-block mr-0"></i>
                                  <i class="fas fa-star d-inline-block mr-0"></i>
                                </div>

                                <i class="<?=$module->icon; ?> fa-icon" style="color:<?=$module->color; ?>"></i>
                                <p class="app-title mb-0" title="<?=$module->name; ?>">
                                  <span><?=$module->name; ?></span>
                                  <span>Coming Soon...</span>
                                </p>
                              </label>
                            </div>
                          <?php }}}else{ ?>
                            <div class="col-md-12">
                              <p class="my-3 text-center tx-18">There is no Application available in "<?=getUserVariant()->variant_name;?>" variant. Please submit for core application</p>
                            </div>
                          <?php }?>
                        </div>

                        <?php if (!empty(getCart())) { ?>
                          <div class="alert alert-solid-danger mg-b-0" role="alert">
                            <strong>Note:</strong> You have already choosen some Integrations. <a href="<?=base_url('checkoutPayment')?>" class="text-white"><u>Click here</u></a> to go to your cart or to update your cart click the button 'Submit' given below.
                          </div>
                        <?php } ?>
                      <?php }else{echo "<span class='text-danger ml-3'>Integrations are not available in this plan.</span>";}}else{echo "<span class='text-danger ml-3'>Please choose a plan before integrations.</span>";} ?>

                  </div>
                </div>
              </div>

          </div>

<?php if (!empty($this->session->userdata('planCartData'))) {?>
                        <p class="text-center">
                          <input type="submit" class="btn btn-warning mt-3" id="submitApps" name="submit" value="Submit">
                        </p>
                      <?php } ?>
                      <?php echo form_close();?>
        </div>
      </div>
    </div>
  </div>
</div>

<style type="text/css">
  .app-select label{
    cursor: pointer;
    background: #f9f9f9;
    width: max-content;
    padding: 0px 10px;
    border-radius: 5px;
    width: 100%;
    position: relative;
    box-shadow:0px 2px 4px 0 rgb(0 0 0 / 50%);
  }
  .app-select .app-title{
    width: 70%;
    display: inline-block;
  }
  .app-select label:hover{
    box-shadow: 0px 1px 7px 0 rgb(0 0 0 / 68%);
    background: whitesmoke;
    transition-duration: .3s;
  }
  .app-select label span{
    margin-right: 15px;
    font-size: 13px;
    display: block;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }

  .app-select img{
    max-width: 50px;
  }
  .app-select label input{
    width: 20px;
    height: 20px;
    vertical-align: top;
    cursor: pointer;
    position: absolute;
    right: 5px;
    top: 5px;
  }
  .fa-icon{
    font-size: 30px;
    width: 40px;
    vertical-align: top;
  }
  input[type="checkbox"] {
    background-color: white;
    border-radius: 50%;
    vertical-align: middle;
    border: 1px solid #ddd;
    -webkit-appearance: none;
    outline: none;
  }
  input[type="checkbox"]:checked {
    background-color: #00ab07;
    border: 1px solid #00a007;
  }
  .panel-default>.panel-heading {
    color: #333;
    background-color: #fff;
    border-color: #e4e5e7;
    padding: 0;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
  }

  .panel-default>.panel-heading a {
    display: block;
    padding: 10px 15px;
    border: solid 1px #e8e8e8;
    background: #f7f7f7;
    color: #4d4d52;
    font-weight: 300
  }

  .panel-default>.panel-heading a:hover {
    background: #e8e8e8;
  }

  .panel-default>.panel-heading a:after {
    content: "";
    position: relative;
    top: 1px;
    display: inline-block;
    font-family: 'Glyphicons Halflings';
    font-style: normal;
    font-weight: 400;
    line-height: 1;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    float: right;
    transition: transform .25s linear;
    -webkit-transition: -webkit-transform .25s linear;
  }

  .panel-default>.panel-heading a[aria-expanded="true"] {
    background-color: #eee;
  }

  .panel-default>.panel-heading a[aria-expanded="true"]:after {
    content: "\2212";
    -webkit-transform: rotate(180deg);
    transform: rotate(180deg);
  }

  .panel-default>.panel-heading a[aria-expanded="false"]:after {
    content: "\002b";
    -webkit-transform: rotate(90deg);
    transform: rotate(90deg);
  }
</style>

<script type="text/javascript">
  function setPrice(e)
  {
    var moduleId    = $(e).attr('id');
    var modulePrice = $(e).attr('value');
    var totalPrice  = $('#totalPrice').text();
    var priceSum    = 0;

    if ($('#'+moduleId).is(':checked')) {
      priceSum = Number(totalPrice)+Number(modulePrice);
    }else{
      priceSum = totalPrice - modulePrice;
    }
    $('#totalPrice').text(priceSum);
  }
</script>