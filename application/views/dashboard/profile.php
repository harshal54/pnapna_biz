
<style>
    .container{
        display: block !important;
    }
.profile-img{
    text-align: center;
}
.profile-img img{
    width: 60%;
    height: 100%;
}

.profile-edit-btn{
    border: none;
    border-radius: 1.5rem;
    padding: 3%;
    font-weight: 600;
    color: #6c757d;
    cursor: pointer;
}
.proile-rating span{
    color: #495057;
    font-size: 15px;
    font-weight: 600;
}
.profile-head .nav-tabs{
    margin-bottom:5%;
}
.profile-head .nav-tabs .nav-link{
    font-weight:600;
    font-size: 19px;
    border: none;
}
.profile-head .nav-tabs .nav-link.active{
    border: none;
    border-bottom:2px solid #0062cc;
}
.profile-tab label{
    font-weight: 600;
    font-size: 17px;
}
.profile-tab p{
    
    color: #0062cc;
    font-size: 17px;
}

</style>
<div class="container mt-5">
            <form method="post">
                <div class="row">
                    <div class="col-md-3">
                        <div class="profile-img">
                            <?php if(empty(userdata()->image)) { ?>
                            <img src="<?php echo base_url('assets/biz/img/img_avatar.png') ?>" alt=""/>
                        <?php } else { ?>
                            <img src="<?php echo base_url('uploads/user-profile/'.userdata()->image) ?>" alt=""/>
                             <?php } ?>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="profile-head">
                                    <h4>
                               <?= userdata()->name.' '. userdata()->l_name ?>
                                    </h4>
                                    <h6>
                                     <?= userdata()->account_name ?>
                                    </h6>
                                    <p class="proile-rating"><span>Role : 
                                        <?php if(userdata()->marketplace_status =='1') { echo 'Employer/Home Owner Posting'; } else if(userdata()->marketplace_status =='2') { echo 'Service Provider'; } else{ echo 'Both';} ?> </span></p>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Address</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4">
                     <a href="edit-profile"> <button type="button" class="profile-edit-btn"  >Edit Profile</button></a> 
                     <a href="change-password"> <button type="button" class="profile-edit-btn"  >Change Password</button></a> 
                    </div>
                </div>
                <div class="row">
                  
                    <div class="col-md-8 offset-md-3">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                       
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label>Name</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p> <?= userdata()->name.' '. userdata()->l_name ?></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><?= userdata()->email ?></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label>Phone</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><?php if(empty(userdata()->phone)) {echo '-';} else { echo userdata()->phone; }?></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label>Account</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><?= userdata()->account_name ?></p>
                                            </div>
                                        </div>
                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label>Street</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><?php if(empty(userdata()->street)) {echo '-';} else { echo userdata()->street; }?></p>
                                            </div>
                                        </div>
                                 
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label>City</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><?php if(empty(userdata()->city)) {echo '-';} else { echo userdata()->city; }?></p>
                                            </div>
                                        </div>
                                  
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label>State</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><?php if(empty(userdata()->state)) {echo '-';} else { echo userdata()->state; }?></p>
                                            </div>
                                        </div>
                                      
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label>Country</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><?php if(empty(userdata()->country)) {echo '-';} else { echo userdata()->country; }?></p>
                                            </div>
                                        </div>
                                       
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label>Zip</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><?php if(empty(userdata()->zip)) {echo '-';} else { echo userdata()->zip; }?></p>
                                            </div>
                                        </div>
                               
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label>Address</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><?php if(empty(userdata()->billing_address)) {echo '-';} else { echo userdata()->billing_address; }?></p>
                                            </div>
                                        </div>
                           
                            </div>
                        </div>
                    </div>
                </div>
            </form>           
        </div>