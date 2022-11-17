<div class="az-content-body">
  <?php if (empty($saasReqData)) {?>
    <form method="POST" class="mt-3">
      <div class="custom-control custom-radio">
        <input type="radio" id="item1" name="item_id" class="custom-control-input item" value="1" checked>
        <label class="custom-control-label" for="item1">I have a business website of my own that I shall use and will integrate the plugins myself</label>
      </div>
      <div class="custom-control custom-radio">
        <input type="radio" id="item2" name="item_id" class="custom-control-input item" value="2">
        <label class="custom-control-label" for="item2">I have a business website of my own but I want you to integrate the plugins for me</label>
      </div>
      <div class="custom-control custom-radio">
        <input type="radio" id="item3" name="item_id" class="custom-control-input item" value="3">
        <label class="custom-control-label" for="item3">I shall create my website myself and will integrate the plugins my self</label>
      </div>
      <div class="custom-control custom-radio">
        <input type="radio" id="item4" name="item_id" class="custom-control-input item" value="4">
        <label class="custom-control-label" for="item4">I shall create my website myself and ask you to integrate the plugins for me</label>
      </div>
      <div class="custom-control custom-radio">
        <input type="radio" id="item5" name="item_id" class="custom-control-input item" value="5">
        <label class="custom-control-label" for="item5">I want you to create a website for me with the plugins</label>
      </div>
      <div class="custom-control custom-radio">
        <input type="radio" id="item6" name="item_id" class="custom-control-input item" value="6">
        <label class="custom-control-label" for="item6">I do not need any website and I shall continue with your integrated site only</label>
      </div>
      <div class="col-md-12 mt-5" id="item2_box">
        <div class="form-group item-box mb-2 item1box item2box" style="display: block;">
          <label class="form-control-label mb-0">My Website URL is:</label>
          <input type="text" id="websitename" name="websitename" placeholder="Website URL" class="form-control" required>
        </div>

        <div class="form-group item-box mb-2 item2box item4box">
          <label class="form-control-label mb-0">Email:</label>
          <input type="email" id="email" name="email" placeholder="Email" value="<?=$userData->email;?>" class="form-control">
        </div>
        <div class="form-group item-box mb-2 item4box">
          <label class="form-control-label mb-0">Phone:</label>
          <input type="number" id="phone" name="phone" placeholder="Phone" value="<?=$userData->phone;?>" class="form-control">
        </div>
        <div class="form-group item-box mb-2 item3box item4box">
          <p class="tx-18-f"><strong>Note:</strong> Do you need any assistance here, please contact us</p>
          <a href="<?=base_url('contact')?>#contact" target="_blank"><u><strong>Contact Us</strong></u></a>
        </div>
        <div class="form-group item-box mb-2 item2box">
          <label class="form-control-label mb-0">CPanel URL:</label>
          <input type="text" id="cpanel_url" name="cpanel_url" placeholder="CPanel URL" class="form-control">
        </div>
        <div class="form-group item-box mb-2 item2box">
          <label class="form-control-label mb-0">CPanel Username:</label>
          <input type="text" id="username" name="username" placeholder="Username" value="<?=$userData->account_name;?>" class="form-control">
        </div>
        <div class="form-group item-box mb-2 item2box">
          <label class="form-control-label mb-0">Password:</label>
          <input type="password" id="password" name="password" placeholder="Password" class="form-control">
        </div>
        <div class="form-group item-box mb-2 item5box">
          <p class="tx-18-f">This service is provided by our channel partner. Please visit address below and when you have created come back to this portal again </p>
          <a href="https://pnapnasites.com/" target="_blank"><u><strong>Our Channel Partner</strong></u></a>
        </div>
      </div>
      <div class="custom-control text-center mt-5">
        <button type="submit" class="btn btn-warning rounded-0">Submit</button>
      </div>
    </form>

    <script type="text/javascript">
      $(document).ready(function(){
        $('.item').change(function(){
          var itemId = '#'+$(this).attr('id');
          var itemBox = '.'+$(this).attr('id')+'box';

          $('.item-box .form-control').removeAttr('required');
          $(itemBox+' .form-control').attr('required','required');

          $('.item-box').hide(100);
          $(itemBox).slideToggle();
        });
      });
    </script>
  <?php }else{ ?>
    <div class="justify-content-center text-center">
      <div class="justify-content-center">
        <div class=""> <img src="<?=base_url().'assets/dashboard/img/saas-site-success.gif'?>" width="200"> </div>
      </div>
      <p class="mb-2 tx-18-f">Thank You! Your request has been submitted successfully!</p>
      <p class="mb-4 tx-18-f">We will contact you soon.</p>

      <p class="text-center">
        <a href="<?=base_url('dashboard')?>" class="btn btn-primary">Go to Central Dashboard</a>
        <a href="https://<?=userData()->account_name?>.pnapnasites.com" target="_blank" class="btn btn-primary">Go to Integrated Website</a>
      </p>
    </div>
  <?php } ?>
</div>

<style type="text/css">
  .item-box{display: none;}
  .form-control{width: 50%;display: inline-block;}
  .form-control-label{min-width: 150px}
  .custom-control{ position: relative;display: block; min-height: 1.3125rem;padding-left: 2.5rem; padding-top: 6px;font-size: 16px;}
</style>