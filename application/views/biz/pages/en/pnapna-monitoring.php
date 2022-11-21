<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<style>
    #hero {
     background-image: url("<?=base_url()?>assets/biz/img/pnapna-moniter-head.png");
      background-repeat: no-repeat;
      margin-top:100px;
      background-size: 100% 100%;
    }
    #paragraph{
color: #242a49;
 font-size:15px;
    }
    #heading1{
      margin: 0 0 10px 0;
      font-size: 48px;
       line-height: 56px;
      color: #242a49;
      font-family:NeueMontrealBook,Arial,sans-serif;
    }
    #heading2{
      font-size: 30px;
      font-family:NeueMontrealBook,Arial,sans-serif;
      color: white;
    }
    #btn-get-started {
      font-family: "Jost", sans-serif;
      font-weight: 500;
      font-size: 16px;
      letter-spacing: 1px;
      display: inline-block;
      padding: 10px 28px 11px 28px;
      border-radius: 50px;
      margin: 10px 0 0 0;
      color: white;
      background: #465ed1;
    }
    #why-us{
      padding: 100px 0px;
    
    }
    #services{
      padding: 100px 0px;
    }
    .cta {
  background: linear-gradient(rgba(40, 58, 90, 0.9), rgba(40, 58, 90, 0.9)), url("<?=base_url();?>assets/biz/img/cta-bg.jpg") fixed center center;
  background-size: cover;
  padding: 120px 0;
}

.cta h3 {
  color: #fff;
  font-size: 28px;
  font-weight: 700;
}

.cta p {
  color: #fff;
}
#heading5{
  font-weight: 400;
  color: #242a49;
  padding-bottom: 25px;
}
#heading6{
color: #242a49;
 font-size:20px;
 padding-bottom: 15px;
    }
    .team .member {
  position: relative;
  box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.1);
  padding: 30px;
  border-radius: 5px;
  background: #fff;
  transition: 0.5s;
}
.section-bg1{
  background: linear-gradient(180deg,#626984,#5f6682);
}
.team .member:hover {
  transform: translateY(-10px);
}
.team .member .social {
  margin-top: 12px;
  display: flex;
  align-items: center;
  justify-content: flex-start;
}
#team{
  padding: 100px 0px;
}
#card22{
  background: linear-gradient(180deg,#626984,#5f6682); border-radius: 25px; box-shadow: 0 20px 54px #545a78;
}
#card22:hover {
  background: linear-gradient(180deg,#666f91,#676d8b);

}
#explain{
  color:white;
  font-family: NeueMontrealBook,Arial,sans-serif;
}
.team .member p {
    margin: 10px 0 0 0;
    font-size: 14px;
}
#main{
	background: #d3d6e9;
}
.add_btn{
  color: black!important;border-radius: 25px; border: 1px solid black;padding: 18px 50px; text-transform: none!important;background-color: white;
}
.add_btn:hover{
  background-color: #465ed1;
  color: white!important;
}
 .card1{
      background-color:white!important; 
      border-radius: 24px;width: 100%;
      }
      .card1:hover {
 transform: scale(1.1);
      }


    @media (max-width: 991px) {
     #btn-get-started {
      text-align: center;
     }
      .section{
  display: none!important;
  }
   #heading1{
    text-align: center;
    font-size: 40px;
   }
    #paragraph{
text-align: center;
    }
    #heading5{
    text-align: center;
    font-size: 18px;
   }
#heading6{
    text-align: center;
    font-size: 18px;
   }
   #get-start{
    text-align: center;
   }
    #hero {
    
      background-size: cover!important;
     
    }
    .stretch{
      padding-bottom: 15px;
    }
     #heading2{
      text-align: center;
      color: white;
     }
     .social{
      display: none!important;
     }
     #why-us{
      padding: 50px 0px;!important;
     }
     #payment_txt{
      font-size: 23px!important;
     }
     #feature_img{
      display: none;
     }
  
    }


</style>
<main id="main">
<!-- ======= Hero Section ======= -->
<section id="hero" class="d-flex align-items-center">

  <div class="container">
    <div class="row" style="padding:100px 0px;">
      <div class="col-lg-6" data-aos="fade-up" data-aos-delay="200">
        <div style="padding:100px 0px">
          <h1 id="heading1">Electronic monitoring<br> for your employees </h1>
          <br>
          <h6 id="heading6" >Pnapna monitoring is an employee monitoring<br> application for your employees worldwide.</h6>
          <div class="d-flex justify-content-center justify-content-lg-start" id="get-start">
            <a href="<?=base_url('signin');?>" id="btn-get-started">Sign In</a>

          </div>
        </div>
      </div>
      <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200">

      </div>
    </div>
  </div>

</section ><!-- End Hero -->



  <!-- ======= Why Us Section ======= -->
  <section id="why-us" class="why-us " style="box-shadow: inset 0 8px 250px #e7e9f4!important;">
    <div class="container" data-aos="fade-up">

      <div class="row">
        <h1 id="heading1">Get the best employee monitoring system</h1>
        <h5 id="heading5">&nbsp;Monitor, Calculate time, Link to your projects</h5>
        <div class="col-lg-4 d-flex flex-column justify-content-center align-items-stretch  order-2 order-lg-1">

          <img src="<?=base_url();?>assets/biz/img/pnapna-card1.png" class="img-fluid " style="border-radius: 24px;">
          <p id="paragraph" style="padding-top: 15px;">Monitor all your employee activity, and time lost to non office activities</p>
        </div>

        <div class="col-lg-4 d-flex flex-column justify-content-center align-items-stretch  order-2 order-lg-1">

          <img src="<?=base_url();?>assets/biz/img/pnapna-card2.png" class="img-fluid " style="border-radius: 24px;">
          <p id="paragraph" style="padding-top: 15px;">Track time worked, Create invoices, Get paid in realtime</p>
        </div>
        <div class="col-lg-4 d-flex flex-column justify-content-center align-items-stretch  order-2 order-lg-1">

          <img src="<?=base_url();?>assets/biz/img/pnapna-card3.png" class="img-fluid " style="border-radius: 24px;">
          <p id="paragraph" style="padding-top: 15px;">Link account to CRM and measure Productivity Level</p>
        </div>

      </div>
    </div>
  </section><!-- End Why Us Section -->

  <!-- ======= Why Us Section ======= -->
  <section id="services" class="services ">
    <div class="container" data-aos="fade-up">


      <div class="row">

        <div class="col-xl-12 col-md-12 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
          <h1 id="heading1"> Scale to new productive heights</h1>
          <h5 id="heading5">Target growth with advanced tools — and move even closer to your goals.</h5>
          <div class="icon-box">
            <img src="<?=base_url();?>assets/biz/img/pnapna-card4.png" class="img-fluid" style="border-radius: 18px;">
          </div>
        </div>


      </div>

    </div>
  </section><!-- End Why Us Section -->

  <!-- ======= Skills Section ======= -->
  <section id="services" class="services " style="box-shadow: inset 0 8px 250px #e7e9f4!important;">
    <div class="container" data-aos="fade-up">


      <div class="row">
        <div class="col-xl-6 col-md-6 col-lg-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
          <div class="icon-box">
            <img src="<?=base_url();?>assets/biz/img/pnapna-card5.png" class="img-fluid" style="border-radius: 18px;">
          </div>
        </div>

        <div class="col-xl-6 col-md-6 col-lg-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
          <div class="icon-box">
            <img src="<?=base_url();?>assets/biz/img/pnapna-card5.png" class="img-fluid" style="border-radius: 18px;">
          </div>
        </div>

      </div>

    </div>
  </section><!-- End Services Section -->
  <!-- End Skills Section -->
  <section id="why-us" class="why-us section" >
    <div class="container" data-aos="fade-up">

      <div class="row">
        <div class="align-center" style="padding-bottom:30px;">
          <h1 id="heading1" >Scale with precision, even at your highest speed</h1>
          <h5 id="heading5">Startups move fast, so we’ve built a product that keeps you in control.</h5>
        </div>
        <div style="display:flex; padding-bottom: 50px;" class="align-center">
          <div> <a href="<?=base_url('en/page/lead-generation');?>" style="background-color:#B7A0AC; padding:15px 60px; margin-right: 10px;border-radius: 25px;"><i class="fa fa-headphones menu-icon"></i>&nbsp; &nbsp;
            Lead Generation <i class="seoicon-right-arrow show "></i>
          </a>
          <a href="<?=base_url('en/page/project-manager');?>" style="background-color:#B7A0AC; padding:15px 60px; margin-right: 10px;border-radius: 25px;"><i class="fa fa-product-hunt menu-icon"></i>&nbsp; &nbsp;
            Project Manager  <i class="seoicon-right-arrow show"></i>

          </a>
          <a href="<?=base_url('en/page/crm');?>" style="background-color:#B7A0AC; padding:15px 93px; margin-right: 10px; border-radius: 25px;"><i class="fa fa-address-card-o menu-icon"></i>&nbsp;&nbsp;
            CRM <i class="seoicon-right-arrow show "></i></a>
            <a href="<?=base_url('en/page/cloud-folder-storage');?>" style="background-color:#B7A0AC; padding:15px 50px; margin-right: 10px; border-radius: 25px;"><i class="fa fa-cloud-upload menu-icon"></i>&nbsp;&nbsp;
              Cloud Folders Storage <i class="seoicon-right-arrow show "></i>
            </a>



          </div>
        </div>

        <div  >
          <div class="align-center">   <a href="<?=base_url('en/page/private-chat');?>" style="background-color:#B7A0AC; padding:15px 80px; margin-right: 10px;border-radius: 25px;">
            <i class="fa fa-commenting menu-icon"></i>&nbsp; &nbsp;
            Private Chat  <i class="seoicon-right-arrow show"></i>
          </a>
          <a href="<?=base_url('en/page/schedulingcalendar');?>" style="background-color:#B7A0AC; padding:15px 50px; margin-right: 10px;border-radius: 25px;"><i class="fa fa-headphones menu-icon"></i>&nbsp; &nbsp;
            Time Calculation <i class="seoicon-right-arrow show "></i>
          </a>
        </div>
      </div>
      <div style="padding-top: 50px;" >
          <div class="align-center"> 
          <a href="<?=base_url('en/page/features');?>" style="background:#B7A0AC; padding:15px 50px; margin-right: 10px;border-radius: 25px;">
           See all Features <i class="seoicon-right-arrow show "></i>
          </a>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- End Skills Section -->
<section id="why-us" class="why-us section-bg"  style="box-shadow: inset 0 8px 250px #e7e9f4!important;">
  <div class="container" data-aos="fade-up">

    <div class="row">
      <div class="align-center">
        <h1 id="heading1" >Other features you will enjoy</h1>
        <h5 id="heading5" >Revel in clever shortcuts and extra levels of organization.</h5></div>
        <div class="col-lg-2 col-xl-2 col-sm-6  col-md-3 col-xs-6">

          <img src="<?=base_url();?>assets/biz/img/feature-image1.png" class="img-fluid card1 " >
          <p id="paragraph" style="padding-top: 15px; text-align: center;">Lead Generation </p>

        </div>

        <div class="col-lg-2 col-xl-2 col-sm-6  col-md-3 col-xs-6">

          <img src="<?=base_url();?>assets/biz/img/feature-image2.png" class="img-fluid card1">
          <p id="paragraph" style="padding-top: 15px; text-align: center;">Project Manager</p>

        </div>
        <div class="col-lg-2 col-xl-2 col-sm-6  col-md-3 col-xs-6">

          <img src="<?=base_url();?>assets/biz/img/feature-image3.png" class="img-fluid card1">
          <p id="paragraph" style="padding-top: 15px; text-align: center;">Task Manager</p>

        </div>
        <div class="col-lg-2 col-xl-2 col-sm-6  col-md-3 col-xs-6">

          <img src="<?=base_url();?>assets/biz/img/feature-image4.png" class="img-fluid card1">
          <p id="paragraph" style="padding-top: 15px; text-align: center;">White Board</p>

        </div>
        <div class="col-lg-2 col-xl-2 col-sm-6  col-md-3 col-xs-6">

          <img src="<?=base_url();?>assets/biz/img/feature-image5.png" class="img-fluid card1">
          <p id="paragraph" style="padding-top: 15px; text-align: center;">Encrypted track email</p>

        </div>
        <div class="col-lg-2 col-xl-2 col-sm-6  col-md-3 col-xs-6">

          <img src="<?=base_url();?>assets/biz/img/feature-image6.png" class="img-fluid card1">
          <p id="paragraph" style="padding-top: 15px; text-align: center;">Cloud folder storage</p>

        </div>

      </div>
    </div>
  </section>


  <!-- ======= Cta Section ======= -->
  <section id="cta" class="cta">
    <div class="container" data-aos="zoom-in">

      <div class="row">
        <div class="col-lg-12 text-center align-center " >
          <h1 class="text-center" style="color:white;">Pay $0/month.</h1>
          <h1 class="text-center" style="color:white;">Get pro feature $9.99/month</h1>
          <h1 class="text-center" style="color:white;">Get Life time subscription for $99 </h1><br>
          <button type="button" class="btn add_btn " ><a href="<?=base_url('en/page/pricing-plans');?>">Pricing and Plans</a></button>
        </div>

      </div>

    </div>
  </section><!-- End Cta Section -->



  <!-- ======= Team Section ======= -->
  <section id="team" class="team section-bg1 ">
    <div class="container" data-aos="fade-up">

      <div class="row " style="padding-bottom:50px;">
        <div class="col-md-6 col-lg-6 col-xl-6"><br><h1 style="color:white;">You can integrate with ....</h1>
          <p id="paragraph" style="color:white;">Quick Books, Zoom, WhatsApp and more.</p>
        </div>
        <div class="col-md-3 col-lg-3 col-xl-3">
          <div class="member d-flex align-items-start" id="card22" data-aos="zoom-in" data-aos-delay="100" >
            <div class="pic" style="width:100%;"><img src="<?=base_url();?>assets/biz/img/integrate-1.png" class="img-fluid" alt="" ></div>

          </div>
        </div>
        <div class="col-md-3 col-lg-3 col-xl-3">
          <div class="member d-flex align-items-start" id="card22" data-aos="zoom-in" data-aos-delay="100" >
            <div class="pic" style="width:100%;"><img src="<?=base_url();?>assets/biz/img/integrate-2.png" class="img-fluid" alt="" ></div>

          </div>
        </div>
      </div>


      <div class="row" >

        <div class="col-lg-12" >
          <div  class="row member d-flex align-items-start" id="card22" data-aos="zoom-in" data-aos-delay="100" >
            <div class="col-lg-6"><div ><img src="<?=base_url();?>assets/biz/img/integrate-3.png" class="img-fluid" alt="" style="border-radius:25px;"></div></div>
            <div class="col-lg-6" style="padding-top: 15px;">

              <div class="member-info">
               <h1 style="color:white;">PnaPna Eco system</h1>

                <p id="paragraph" style="color: white;">Large File Transfer, Marketing Tools, SEO Tools, Employee monitoring, Scheduling Calendar, Website builder</p>

                <div class="social">
                  <h3 id="explain">$1.7B<p>In funding</p></h3>

                  &ensp;&ensp;&ensp;
                  <h3 id="explain">630+<p>Startups</p></h3>
                  &ensp;&ensp;&ensp;
                  <h3 id="explain">32<p>Countries</p></h3>

                </div>
                <div >
                  <a href=""><i class="ri-twitter-fill"></i></a>
                  <a href=""><i class="ri-facebook-fill"></i></a>
                  <a href=""><i class="ri-instagram-fill"></i></a>
                  <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                </div>
              </div>

            </div>
          </div>

        </div>
      </div>

    </div>
  </section><!-- End Team Section -->




  <section style=" background: #d3d6e9; padding:65px 0px;">
    <div class="container" data-aos="zoom-in">

      <div class="row">
        <div class="col-lg-12 text-center text-center " >
         
          <div class="align-center">
            <h1  id="heading1">Get Started and reap the benefits<br>
            in 10 minutes or less</h1>
            <h5 id="heading5">Scale smoothly with our application.</h5><br>
            <button type="button" class="btn add_btn " ><a href="<?=base_url('signin');?>"> Sign In </a></button>
          </div>
        </div>

      </div>

    </div>
  </section>

</main>
 <!-- ======= Footer ======= -->
 <div class="footer-top" >
    <div class="container  ">
      <div class="row pt120 mb60">

        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 footer-contact">
          <h4 style=" font-size: 15px;
    margin: 0 0 10px 0;
    padding: 2px 0 2px 0;
    line-height: 1;
    text-transform: uppercase;
    font-weight: 600;
    color: #37517e;" >PnaPna</h4 >
          <p style="font-size: 15px;color: #777777;">
            82 School St., Piscataway <br>
            NEW JERSEY,
            08854 USA
          </p>
        </div>

        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12footer-links">
          <h4 style=" font-size: 15px;
    margin: 0 0 10px 0;
    padding: 2px 0 2px 0;
    line-height: 1;
    text-transform: uppercase;
    font-weight: 600;
    color: #37517e;" >Phone</h4>
          <ul style="list-style-type: none; padding: 0; 
     margin: 0;"  >
            <li><i class="bx bx-chevron-right"></i> <a href="tel:1 908 801.6225" style="color: #777777;"> 1 (908) 801-6225</a></li>

            <!-- <li><i class="bx bx-chevron-right"></i> <a href="#" style="color: #777777;">Open Account</a></li>
            <li><i class="bx bx-chevron-right"></i> <a href="#" style="color: #777777;">Log In</a></li>
            <li><i class="bx bx-chevron-right"></i> <a href="#" style="color: #777777;">iOS App</a></li>
            <li><i class="bx bx-chevron-right"></i> <a href="#" style="color: #777777;">Android App</a></li>
 -->
          </ul>
        </div>

        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 footer-links ">
          <h4 style=" font-size: 15px;
    margin: 0 0 10px 0;
    padding: 2px 0 2px 0;
    line-height: 1;
    text-transform: uppercase;
    font-weight: 600;
    color: #37517e;" >Email</h4>
          <ul style="list-style-type: none;padding: 0; 
     margin: 0;" >
      
            <li> <a href="mailto:info@pnapna.com" style="color: #777777;"> info@pnapna.com<br></a></li>
            <!-- <li> <a href="#" style="color: #777777;">Product Demo</a></li>
            <li> <a href="#" style="color: #777777;">Pricing</a></li>
            <li> <a href="#" style="color: #777777;">Help Center</a></li>
            <li> <a href="#" style="color: #777777;">Features</a></li> -->

          </ul>
        </div>

        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 footer-links mb60">
          <h4 style=" font-size: 15px;
    margin: 0 0 10px 0;
    padding: 2px 0 2px 0;
    line-height: 1;
    text-transform: uppercase;
    font-weight: 600;
    color: #37517e;" >LEARN</h4>
          <ul style="list-style-type: none;padding: 0; 
     margin: 0;" >
            <li> <a href="#" style="color: #777777;">Learn</a></li>
            <!-- <li> <a href="#" style="color: #777777;">Contact Us</a></li>
            <li> <a href="#" style="color: #777777;">FAQ</a></li> -->
            <li> <a href="#" style="color: #777777;">Download App</a></li>

          </ul>
        </div>
      </div>

    </div>
  </div>
<!-- End Footer -->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
  AOS.init();
</script>