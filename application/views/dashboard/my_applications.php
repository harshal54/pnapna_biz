<div class="az-content-body">
  <div class="row row-sm">
    <div class="col-xl-12 mg-t-10">
      <div class="card card-dashboard-audience-metrics"><?php
      if (!empty(getSubdomain()->status)) { ?>


        <div class="card-header">
          <h6 class="card-title mb-3">My Integrations</h6>
        </div>

        <div class="card-body">
          <table class="table">
            <thead>
              <tr>
                <th>S/N</th>
                <th>App Name</th>
                <th>Status</th>
              </tr>
            </thead>
          <tbody>
            <?php if (!empty($getUserModules)) {$sn=1; foreach ($getUserModules as $userModules) { ?>
              <tr>
                <td><?=$sn?></td>
                <td><?=$userModules->name; ?></td>
                <td>
                  <?php
                  if ($userModules->status==0) { ?>
                    <a href="javascript:;" id="checkSt<?=$userModules->id?>" title="Click to activate" onclick="activeModule('<?=$userModules->slug; ?>', 1, '<?=$userModules->id;?>')">
                      <i class="fa fa-check-circle"></i>
                    </a>
                  <?php }else{ ?>
                    <a href="javascript:;" id="checkSt<?=$userModules->id?>" title="Click to deactivate" onclick="activeModule('<?=$userModules->slug; ?>', 0, '<?=$userModules->id;?>')">
                      <i class="fa fa-check-circle active"></i>
                    </a>
                  <?php } ?>
                </td>
              </tr>
              <?php $sn++;}} ?>
            </tbody>
          </table>
        </div>
          <p class="text-center">
            <a href="<?=base_url('dashboard')?>" class="btn btn-primary">Go to Central Dashboard</a>
            <a href="<?=subDomainUrl();?>/admin/features" target="_blank" class="btn btn-primary"> Go to Work Manager</a>
          </p>
          <style type="text/css">
            .fa-check-circle{
              color: #d5d5d5;
              font-size: 22px;
            }
            .fa-check-circle.active{
              color: #43ca00;
            }
          </style>

        <?php }else{ ?>

          <div class="card-header">
            <h6 class="card-title">Your work manager needs to be Activated. <a href="<?=base_url('dashboard')?>">Click here</a> the button below to go to your work manager activation page.</h6>
          </div>

        <?php } ?>

      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
  function activeModule(slug, status, id){
     $.ajax({
        url: "<?=base_url()?>activeModules",
        type: "post",
        data: {'slug':slug, 'status':status},
        success: function (response) {
          if (response==1) {
            $('#checkSt'+id+' .fa').addClass('active');
          }else{
            $('#checkSt'+id+' .fa').removeClass('active');
          }
        }
    });
  }
</script>