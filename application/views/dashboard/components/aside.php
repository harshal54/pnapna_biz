
<div class="az-sidebar az-sidebar-sticky az-sidebar-indigo-dark">
  <div class="az-sidebar-body pt-0">
    <ul class="nav">
      <li class="nav-item <?=(end($this->uri->segments)=='dashboard')?'active':NULL; ?>">
        <a href="<?=base_url('dashboard')?>" class="nav-link"><i class="typcn typcn-home-outline"></i>Dashboard</a>
      </li>

      <li class="nav-item <?=(end($this->uri->segments)=='myApps' || end($this->uri->segments)=='saasBizSite')?'active':NULL; ?>">
        <a href="<?=base_url('myApps')?>" class="nav-link" ><i class="typcn typcn-th-small"></i>My Applications</a>
      </li>

      <!-- <li class="nav-item <?=(end($this->uri->segments)=='saasBizSite')?'active':NULL; ?>">
        <a href="<?=base_url('saasBizSite')?>" class="nav-link" ><i class="typcn typcn-th-small"></i>SAAS-Client BIZ Website</a>
      </li> -->
      
      <li class="nav-item <?=(end($this->uri->segments)=='payments')?'active':NULL; ?>">
        <a href="<?=base_url('payments')?>" class="nav-link"><i class="typcn typcn-business-card"></i>Payments</a>
      </li>

      <li class="nav-item <?=(end($this->uri->segments)=='setupWorkManager')?'active':NULL; ?>">
        <a href="<?=base_url('setupWorkManager')?>" class="nav-link"><i class="fas fa-dollar-sign"></i>Plans</a>
      </li>

      <li class="nav-item <?=(end($this->uri->segments)=='myIntegrations')?'active':NULL; ?>">
        <a href="<?=base_url('myIntegrations')?>" class="nav-link"><i class="fas fa-box"></i>My Integrations</a>
      </li>

      <li class="nav-item <?=(end($this->uri->segments)=='checkoutPayment')?'active':NULL; ?>">
        <a href="<?=base_url('checkoutPayment')?>" class="nav-link"><i class="typcn typcn-shopping-cart"></i>Cart</a>
      </li>

      <li class="nav-item">
        <a href="<?=base_url('logout')?>" class="nav-link"><i class="typcn typcn-power-outline"></i>Sign Out</a>
      </li>
    </ul>
  </div>
</div>