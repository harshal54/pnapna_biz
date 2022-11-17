<style>
    .container{
        display: block !important;
    }
    </style>
    <section> 
           <div class="container my-5">
              <?php echo form_open(base_url( 'submit-profile' ), array( 'enctype' => 'multipart/form-data'));?>
              <div class="row mb-2 d-flex justify-content-center">

              <?php if(empty(userdata()->image)) { ?>
                            <img src="<?php echo base_url('assets/biz/img/img_avatar.png') ?>" alt="" height="20%" width="20%" class="rounded-circle"/>
                        <?php } else { ?>
                            <img src="<?php echo base_url('uploads/user-profile/'.userdata()->image) ?>" alt="" height="20%" width="20%" class="rounded-circle"/>
                             <?php } ?>
  
               </div>

               <?php if($this->session->flashdata('errors')){ ?>
                    <div class="alert alert-danger alert-dismissible col-md-12">
                         <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
               <?= $this->session->flashdata('errors');?>
                </div>
					<?php } ?>	
          <div class="row">
             <div class="col-md-6 offset-md-1">
              <div class="form-group">
                <label>First Name</label>
                <input type="text" name="name" value="<?= userdata()->name;?>" class="form-control" required>
               
              </div>
            
              <div class="form-group">
                <label>Street</label>
                 <input type="text" name="street" class="form-control" value="<?= userdata()->street;?>">
               
              </div>

                 <div class="form-group">
                 <label>State</label>
                <input type="text" value="<?= userdata()->state;?>" name="state" class="form-control">
                   
            </div>

               <div class="form-group">
                 <label>Country</label>
                <input type="text" name="country" value="<?= userdata()->country;?>" class="form-control">
                   
            </div>

            </div>

            <div class="col-md-6 offset-md-1">
                <div class="form-group">
                <label>Last Name</label>
                 <input type="text" name="l_name" class="form-control" value="<?= userdata()->l_name;?>" required>
                
              </div>
             
              <div class="form-group">
                <label>City</label>
                 <input type="text" name="city" class="form-control" value="<?= userdata()->city;?>">
                
              </div>

              <div class="form-group">
                <label>Zip Code</label>
                 <input type="text" name="zip" class="form-control" value="<?= userdata()->zip;?>">  
              </div>

              <div class="form-group">
                <label>Profile Image</label>
                <input type="file" name="image" class="d-none" id="inputImage"> <br>
                <button type="button" class="btn border-5 py-2 px-3 btn-secondary border-0 zoomIn animated btn-sm" onclick="$('#inputImage').click();"><i class="fa fa-paperclip"></i> Upload Profile Image</button>
            <span id="imageName"></span>
               
              </div>
            </div>
          <div class="col-md-11 offset-md-1">
                <label>Address</label> <br>
                <textarea name="billing_address" id=""  class="form-control"><?= userdata()->billing_address;?></textarea>
              
              </div>
          </div>
        <div class="mt-3 float-right">
          <button type="submit" class="btn btn-primary">Submit</button>
        </div>
        <?php echo form_close();?>
        </div>
        

    </section>

    <script type="text/javascript">
  $(document).ready(function(){
    $('#inputImage').change(function(){
      var fileName = $('#inputImage').val().split('\\').pop();
      $('#imageName').text(fileName);
    })
  });
</script>
