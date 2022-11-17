<div class="az-header az-header-dashboard-nine">
  <div class="container-fluid">
    <div class="az-header-left">
      <a href="" id="azSidebarToggle" class="az-header-menu-icon"><span></span></a>


  <div class="az-sidebar-header">
    <a href="<?=base_url()?>" class="az-logo">
      <img src="https://pnapna.com/assets/biz/img/logos/Pnapna-Central-logo.png" width="130">
    </a>
    <a href="<?=base_url()?>" class="az-logo-text ml-5">
      PnaPna Central
    </a>
  </div>


    </div>
    <div class="az-header-right">
      <div class="dropdown az-profile-menu">
        <a href="" class="az-img-user"><img src="<?=(empty(userData()->image)?base_url().'assets/dashboard/img/user.png':base_url().'uploads/user-profile/'.userData()->image)?>"></a>
        <div class="dropdown-menu">
          <div class="az-dropdown-header d-sm-none">
            <a href="" class="az-header-arrow"><i class="icon ion-md-arrow-back"></i></a>
          </div>
          <a href="profile" class="dropdown-item" data-container="body" data-popover-color="default" data-placement="left" >
            My Profile
          </a>
          <a href="edit-profile" class="dropdown-item" data-container="body" data-popover-color="default" data-placement="left" >
            Edit Profile
          </a>
          <a href="<?=base_url('logout')?>" class="dropdown-item"></i> Sign Out</a>
        </div>
      </div>
    </div>
  </div>
</div>