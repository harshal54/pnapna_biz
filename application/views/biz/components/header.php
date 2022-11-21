<header class="header" id="site-header " >
  <div class="container">
    <div class="header-content-wrapper">
      <a href="#" id="top-bar-js" class="top-bar-link">TOPBAR</a>
      <div class="logo">
        <a href="<?=base_url()?>" class="full-block-link"></a>
        <img src="<?=base_url()?>assets/biz/img/Pnapna.png" alt="Pnapna" width="50%" >
      </div>
      <nav id="primary-menu" class="primary-menu">
        <a href='javascript:void(0)' id="menu-icon-trigger" class="menu-icon-trigger showhide">
          <span class="mob-menu--title">Menu</span>
          <span id="menu-icon-wrapper" class="menu-icon-wrapper" style="visibility: hidden">
            <svg width="1000px" height="1000px">
              <path id="pathD" d="M 300 400 L 700 400 C 900 400 900 750 600 850 A 400 400 0 0 1 200 200 L 800 800"></path>
              <path id="pathE" d="M 300 500 L 700 500"></path>
              <path id="pathF" d="M 700 600 L 300 600 C 100 600 100 200 400 150 A 400 380 0 1 1 200 800 L 800 200"></path>
            </svg>
          </span>
        </a>
        <ul class="primary-menu-menu px-5">
          <li class="menu-item-has-children">
            <a href="<?=base_url()?>">Home</a>
          </li>
          <li class="has-megamenu menu-item-has-children">
            <a href="#">Products</a>
            <div class="megamenu " >
              <div class="megamenu-row">
                <div class="col3">
                  <ul style="padding-left: 16px" >
                    <li class="megamenu-item-info">
                      <h5 class="megamenu-item-info-title">Variants</h5>
                      <p class="megamenu-item-info-text">Variations by trade</p>
                    </li>
                    <!-- <li>
                      <a href="<?=base_url('en/page/business-startup')?>"><img src="<?=base_url()?>assets/biz/img/Business-Startup-icon.png">    &nbsp; &nbsp; Business Start up
                        <i class="seoicon-right-arrow"></i>
                      </a>
                    </li>
                    <li>
                      <a href="<?=base_url('en/page/constructiontrade')?>"> <img src="<?=base_url()?>assets/biz/img/Construction-Trades-icon.png">&nbsp; &nbsp;Construction Trades<i class="seoicon-right-arrow"></i>
                      </a>
                    </li>
                    <li>
                      <a href="<?=base_url('en/page/coreextension')?>"> <img src="<?=base_url()?>assets/biz/img/Core-icon.png">&nbsp; &nbsp;Core<i class="seoicon-right-arrow"></i>
                      </a>
                    </li>
                    <li>
                      <a href="<?=base_url('en/page/litebiz')?>"> <img src="<?=base_url()?>assets/biz/img/Litz-Biz-icon.png">&nbsp; &nbsp;Lite Biz<i class="seoicon-right-arrow"></i>
                      </a>
                    </li>
                    <li>
                      <a href="<?=base_url('en/page/mechanical')?>"> <img src="<?=base_url()?>assets/biz/img/Maid-Cleaning-icon.png">&nbsp; &nbsp;Mechanical Trades<i class="seoicon-right-arrow"></i>
                      </a>
                    </li>
                    <li>
                      <a href="<?=base_url('en/page/maintenance')?>"> <img src="<?=base_url()?>assets/biz/img/Maintenance-Trades-icon.png">&nbsp; &nbsp;Maintenance Trades <i class="seoicon-right-arrow"></i>
                      </a>
                    </li> -->
                    <li>
                      <a href="<?=base_url('en/page/maid-cleaning')?>"> <img src="<?=base_url()?>assets/biz/img/Mechanical-Trades.png">&nbsp; &nbsp;Maid Cleaning<i class="seoicon-right-arrow"></i>
                      </a>
                    </li>
                  </ul>
                </div>
                <div class="col3">
                  <ul style="padding-left: 16px" >
                    <li class="megamenu-item-info">
                      <h5 class="megamenu-item-info-title">Applications</h5>
                      <p class="megamenu-item-info-text">For Office Productivity</p>
                    </li>
                    <li>
                      <a href="<?=base_url('en/page/pnapna-monitoring')?>"> <img src="<?=base_url()?>assets/biz/img/Employee-Monitoring-icon.png">&nbsp; &nbsp;PnaPna Monitoring<i class="seoicon-right-arrow"></i></a>
                    </li>
                    <!-- <li>
                      <a href="<?=base_url('en/page/file')?>"> <img src="<?=base_url()?>assets/biz/img/Large-File-Transfer-icon.png">&nbsp; &nbsp;Large File Transfer<i class="seoicon-right-arrow"></i></a>
                    </li>
                    <li>
                      <a href="<?=base_url('en/page/marketing')?>">
                        <img src="<?=base_url()?>assets/biz/img/Marketing-Tools-icon.png">&nbsp; &nbsp;Marketing Tools<i class="seoicon-right-arrow"></i>
                      </a>
                    </li>
                    <li>
                      <a href="<?=base_url('en/page/schedulingcalendar')?>">
                        <img src="<?=base_url()?>assets/biz/img/Scheduling-Calendar-icon.png">&nbsp; &nbsp;Scheduling Calendar<i class="seoicon-right-arrow"></i>
                      </a>
                    </li> -->
                    <li>
                      <a href="<?=base_url('en/page/seo')?>">
                        <img src="<?=base_url()?>assets/biz/img/SEO-Tools-icon.png">&nbsp; &nbsp;SEO Tools<i class="seoicon-right-arrow"></i>
                      </a>
                    </li>
                    <!-- <li>
                      <a href="<?=base_url('en/page/website-builder')?>">
                        <img src="<?=base_url()?>assets/biz/img/Web-Sites-Builder-icon.png">&nbsp; &nbsp;Web Sites Builder<i class="seoicon-right-arrow"></i>
                      </a>
                    </li> -->
                  </ul>
                </div>
                <div class="col3">
                  <ul style="padding-left: 12px" >
                    <li class="megamenu-item-info">
                      <h5 class="megamenu-item-info-title">Others </h5>
                      <p class="megamenu-item-info-text">More Productivity</p>
                    </li>
                    <!-- <li>
                      <a href="<?=base_url('en/page/form-builder')?>">
                        <img src="<?=base_url()?>assets/biz/img/From-Builder-icon.png">&nbsp; &nbsp;Form Builder<i class="seoicon-right-arrow"></i>
                      </a>
                    </li>
                    <li>
                      <a href="<?=base_url('en/page/help-desk')?>">
                        <img src="<?=base_url()?>assets/biz/img/Help-Desk-App-icon.png">&nbsp; &nbsp;Help Desk App<i class="seoicon-right-arrow">
                        </i>
                      </a>
                    </li>
                    <li>
                      <a href="<?=base_url('en/page/image-editor')?>">
                        <img src="<?=base_url()?>assets/biz/img/Image-Editor-icon.png">&nbsp; &nbsp;Image Editor<i class="seoicon-right-arrow"></i>
                      </a>
                    </li> -->
                    <li>
                      <a href="<?=base_url('en/page/image-sharing')?>">
                        <img src="<?=base_url()?>assets/biz/img/Image-Sharing-icon.png">&nbsp; &nbsp;Image Sharing<i class="seoicon-right-arrow"></i>
                      </a>
                    </li>
                    <!-- <li>
                      <a href="<?=base_url('en/page/gps-optimization')?>">
                        <img src="<?=base_url()?>assets/biz/img/Route-Optimization-icon.png">&nbsp; &nbsp;Route Optimization<i class="seoicon-right-arrow"></i>
                      </a>
                    </li> -->
                  </ul>
                </div>
                <div class="col3">
                  <ul>
                    <li>
                      <div class="google-logo">
                        <img src="<?=base_url()?>assets/biz/img/Pnapna.png" alt="logo" width="70%">
                      </div>
                      <p class="google-text">In Hindi Pnapna means prosperity. Our digital tools are for prospering the businesses, big or small of all types, offices, field services, or construction trades. Pnapna to you!
                      </p>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </li>
          <li class="has-megamenus menu-item-has-children">
            <a href="#">Features</a>
            <div class="megamenu" >
              <div class="text-center">
                <h5>List of Features</h5>
                <p >Choose a Features</p>
                <div class="megamenu-row">
                  <div class="col4">
                    <ul>
                      <li class="hover-ver">
                        <a href="<?=base_url('en/page/crm')?>"><i class="fa fa-address-card-o menu-icon"></i>&nbsp;&nbsp;
                          CRM <i class="seoicon-right-arrow show "></i>
                        </a>
                      </li>
                      <li class="hover-ver">
                        <a href="<?=base_url('en/page/cloud-folder-storage')?>"><i class="fa fa-cloud-upload menu-icon"></i>&nbsp;&nbsp;
                          Cloud Folders Storage <i class="seoicon-right-arrow show "></i>
                        </a>
                      </li>
                      <!-- <li class="hover-ver">
                        <a href="<?=base_url('en/page/encrypted-tracked-email')?>"><i class="fa fa-envelope menu-icon"></i>&nbsp;&nbsp;
                          Encrypted Tracked Email<i class="seoicon-right-arrow show "></i>
                        </a>
                      </li>
                      <li class="hover-ver">
                        <a href="<?=base_url('en/page/hr')?>"><i class="fa fa-user" aria-hidden="true"></i>&nbsp;&nbsp;
                          HR<i class="seoicon-right-arrow show "></i>
                        </a>
                      </li> -->
                      <li class="hover-ver">
                        <a href="<?=base_url('en/page/lead-generation')?>"><i class="fa fa-headphones menu-icon"></i>&nbsp; &nbsp;
                          Lead Generation <i class="seoicon-right-arrow show "></i>
                        </a>
                      </li>
                     
                    </ul>
                  </div>
                  <div class="col4">
                    <ul>
                      <li class="menu-item-has-children hover-ver">
                        <a href="<?=base_url('en/page/private-chat')?>">

                          <i class="fa fa-commenting menu-icon"></i>&nbsp; &nbsp;
                          Private Chat  <i class="seoicon-right-arrow show"></i>
                        </a>
                      </li>
                      <li class="hover-ver">
                        <a href="<?=base_url('en/page/project-manager')?>"><i class="fa fa-product-hunt menu-icon"></i>&nbsp; &nbsp;
                          Project Manager  <i class="seoicon-right-arrow show"></i>
                        </a>
                      </li>
                      <li class="hover-ver">
                        <a href="<?=base_url('en/page/seo')?>"><i class="seoicon-pin-map"></i>&nbsp; &nbsp;
                          Local SEO <i class="seoicon-right-arrow show "></i>
                        </a>
                      </li> 
                      <!-- <li class="menu-item-has-children hover-ver">
                        <a href="<?=base_url('en/page/task-manager')?>">
                          <i class="fa fa-tasks menu-icon"></i>&nbsp; &nbsp;
                          Task Manager  <i class="seoicon-right-arrow show"></i>
                        </a>
                      </li>
                      <li class="hover-ver">
                        <a href="<?=base_url('en/page/voip')?>"><i class="seoicon-pie-graph-split"></i>&nbsp; &nbsp;
                          VOIP <i class="seoicon-right-arrow show"></i>
                        </a>
                      </li>
                      <li class="hover-ver">
                        <a href="<?=base_url('en/page/white-board')?>"><i class="fa fa-clone menu-icon"></i>&nbsp; &nbsp;
                          White Board <i class="seoicon-right-arrow show"></i>
                        </a>
                      </li> -->
                    </ul>
                  </div>
                  <div class="col4">
                    <ul>
                      <li>
                        <div class="google-logo">
                          <img src="<?=base_url()?>assets/biz/img/Pnapna.png" alt="logo" width="50%" >
                        </div>
                        <p class="google-text">In Hindi Pnapna means prosperity. Our digital tools are for prospering the businesses, big or small of all types, offices, field services, or construction trades.   Pnapna to you!
                        </p>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </li>
          <li>
            <a href="#" >Integrations</a>
            <ul class="dropdown">
              <li>
                <a href="<?=base_url('en/page/quick-books')?>"><img src="<?=base_url()?>assets/biz/img/Quick-Books-icon.png">&nbsp; &nbsp;
                  Quick Books
                  <i class="seoicon-right-arrow" ></i>
                </a>
              </li>
              <li>
                <a href="<?=base_url('en/page/whatsapp')?>"><img src="<?=base_url()?>assets/biz/img/Whatsapp-icon.png">&nbsp; &nbsp;
                  Whats App
                  <i class="seoicon-right-arrow" ></i>
                </a>
              </li>
              <li>
                <a href="<?=base_url('en/page/zoom-meeting')?>"><img src="<?=base_url()?>assets/biz/img/Zoom-Meeting-icon.png">&nbsp; &nbsp;
                  Zoom Meetings
                  <i class="seoicon-right-arrow" ></i>
                </a>
              </li>
            </ul>
          </li>
          <li>
            <a href="#">Demo</a>
            <ul class="dropdown">
              <li>
                <a href="https://demo.pnapna.in/fieldservice/admin/authentication"><img src="<?=base_url()?>assets/biz/img/Cleaning-icon.png">&nbsp; &nbsp;
                  Field Services
                  <i class="seoicon-right-arrow"></i>
                </a>
              </li>
              <!-- <li>
                <a href="https://demo.pnapnacore.com/admin/ " target="_blank"><img src="<?=base_url()?>assets/biz/img/Core-icon.png">&nbsp; &nbsp;
                  Core
                  <i class="seoicon-right-arrow"></i>
                </a>
              </li>
              <li>
                <a href="https://demo.pnapnaplumbing.com/admin/" target="_blank"><img src="<?=base_url()?>assets/biz/img/Plumbing-icon.png">&nbsp; &nbsp;
                  Plumbing
                  <i class="seoicon-right-arrow"></i>
                </a>
              </li>  -->
            </ul>
          </li>
          <li class="has-megamenu menu-item-has-children">
            <a href="#">Resources</a>
            <div class="megamenu" >
              <div class="megamenu-row">
                <div class="col4 ">
                  <ul>
                    <li>
                      <a href="<?=base_url('en/page/abouts')?>"><img src="<?=base_url()?>assets/biz/img/About-us-icon.png">&nbsp; &nbsp;
                        About Us
                        <i class="seoicon-right-arrow"></i>
                      </a>
                    </li>
                    <li>
                      <a href="https://pnapna.com/insights"><img src="<?=base_url()?>assets/biz/img/Blog-icon.png">&nbsp; &nbsp;
                        Blog
                        <i class="seoicon-right-arrow"></i>
                      </a>
                    </li>
                    <!-- <li>
                      <a href="<?=base_url('en/page/comparison')?>"><img src="<?=base_url()?>assets/biz/img/Comparisons-icon.png">&nbsp; &nbsp;
                        Comparisons       
                        <i class="seoicon-right-arrow"></i>
                      </a>
                    </li>
                    <li>
                      <a href="<?=base_url('en/page/download')?>"><img src="<?=base_url()?>assets/biz/img/Downloads-icon.png">&nbsp; &nbsp;
                        Downloads
                        <i class="seoicon-right-arrow"></i>
                      </a>
                    </li> 
                    <li>
                      <a href="<?=base_url('en/page/education')?>"><img src="<?=base_url()?>assets/biz/img/Education-icon.png">&nbsp; &nbsp;
                        Education
                        <i class="seoicon-right-arrow"></i>
                      </a>
                    </li>
                    <li>
                      <a href="<?=base_url('en/page/help-desk')?>"><img src="<?=base_url()?>assets/biz/img/Help-Desk-icon.png">&nbsp; &nbsp;
                        Help Desk
                        <i class="seoicon-right-arrow"></i>
                      </a>
                    </li> -->
                  </ul>
                </div>
                <div class="col4">
                  <ul>
                    <li>
                      <a href="<?=base_url('en/page/industries-served')?>"><img src="<?=base_url()?>assets/biz/img/Industries-Served-icon.png">&nbsp; &nbsp;
                        Industries Served
                        <i class="seoicon-right-arrow"></i>
                      </a>
                    </li>
                    <li>
                      <a href="<?=base_url('en/page/knowledge-base')?>"><img src="<?=base_url()?>assets/biz/img/Knowledge-Base-icon.png">&nbsp; &nbsp;
                        Knowledge Base
                        <i class="seoicon-right-arrow"></i>
                      </a>
                    </li>
                    <!-- <li>
                      <a href="<?=base_url('en/page/other-portals')?>"><img src="<?=base_url()?>assets/biz/img/Other-portals-icon.png">&nbsp; &nbsp;
                        Other Portals
                        <i class="seoicon-right-arrow"></i>
                      </a>
                    </li>
                    <li>
                      <a href="<?=base_url('en/page/partnership-enrolment')?>"><img src="<?=base_url()?>assets/biz/img/Partnership-Enrolment-icon.png">&nbsp; &nbsp;
                        Partnership Enrolment
                        <i class="seoicon-right-arrow"></i>
                      </a>
                    </li>
                     <li>
                      <a href="<?=base_url('en/page/site-map')?>site-map"><img src="<?=base_url()?>assets/biz/img/Showcase-icon.png">&nbsp; &nbsp;
                        Site Map
                        <i class="seoicon-right-arrow"></i>
                      </a>
                    </li> 
                    <li>
                      <a href="<?=base_url('en/page/showcase')?>"><img src="<?=base_url()?>assets/biz/img/Site-Map-icon.png">&nbsp; &nbsp;
                        Showcase
                        <i class="seoicon-right-arrow"></i>
                      </a>
                    </li> -->
                  </ul>
                </div>
                <div class="col4">
                  <ul>
                    <li>
                      <div class="google-logo">
                        <img src="<?=base_url()?>assets/biz/img/Pnapna.png" alt="logo" width="50%" >
                      </div>
                      <p class="google-text">In Hindi Pnapna means prosperity. Our digital tools are for prospering the businesses, big or small of all types, offices, field services, or construction trades.   Pnapna to you!
                      </p>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </li>
          <li>
            <a href="<?=base_url('en/page/contacts')?>">Contacts</a>
          </li>
        </ul>
      </nav>
      <!-- <ul class="nav-add">
        <li class="cart">
          <a href="#" class="js-cart-animate">
            <i class="seoicon-basket"></i>
            <span class="cart-count">0</span>
          </a>
          <div class="cart-popup-wrap">
            <div class="popup-cart">
              <h4 class="title-cart">No products in the cart!</h4>
              <p class="subtitle">Please make your choice.</p>
              <div class="btn btn-small btn--dark">
                <span class="text"><a href="<?=base_url('en/page/16-shop')?>" style="color: white;">view all catalog</a></span>
              </div>
            </div>
          </div>
        </li>
        <li class="search search_main">
          <a href="<?=base_url('en/page/16-shop')?>" class="js-open-search">
            <i class="seoicon-loupe"></i>
          </a>
        </li>
      </ul> -->

      <ul class="nav-add" style="margin-top:2px;font-size:17px;">
        <li>
          <a href="<?=base_url('signin')?>">
            Sign In
          </a>
        </li>
      </ul>

      <div class="user-menu open-overlay">
        <a href="#" class="user-menu-content  js-open-aside">
          <span></span>
          <span></span>
          <span></span>
        </a>
      </div>
    </div>
  </div>
</header>