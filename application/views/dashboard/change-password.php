
<style>
    .container{
        display: block !important;
    }
    </style>
           <div class="container my-5">

              <?php echo form_open(base_url( 'update-password'))?>
              <div class="row mb-2 ">

              <?php if(empty(userdata()->image)) { ?>
                            <img src="<?php echo base_url('assets/biz/img/img_avatar.png') ?>" alt="" height="20%" width="20%" class="rounded-circle"/>
                        <?php } else { ?>
                            <img src="<?php echo base_url('uploads/user-profile/'.userdata()->image) ?>" alt="" height="20%" width="20%" class="rounded-circle"/>
                             <?php } ?>
  
               </div>
              
                   <?php if($this->session->flashdata('errors')){ ?>
                    <div class="alert alert-danger alert-dismissible col-md-6">
                         <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
               <?= $this->session->flashdata('errors');?>
                </div>
					<?php } ?>		
					
          <div class="row">
             <div class="col-md-6 offset-md-1">
              <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" value="<?= userdata()->email;?>" readonly class="form-control" >
               
              </div>
            
              <div class="form-group">
                <label>Current Password</label>
                 <input type="password" name="password" class="form-control" value="" required>
               
              </div>

                 <div class="form-group">
                 <label>New Password</label>
                <input type="password" value="" name="new_password" class="form-control" required>
                   
            </div>

               <div class="form-group">
                 <label>Confirm Password</label>
                <input type="password" name="confirm_password" value="" class="form-control" required>
                   
            </div>

        <div class="mt-3 float-right">
          <button type="submit" class="btn btn-primary">Submit</button>
        </div>
                        </div>
                      </div>
                    </form>
    
        </div>



