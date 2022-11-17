<div class="az-footer ht-40">
  <div class="container-fluid pd-t-0-f ht-100p">
    <span>&copy; Copyright 2012 <strong>PnaPna</strong>. All Rights reserved by VKChopra.com An American Company.</span> 
  </div>
</div>
<script src="<?=base_url()?>assets/dashboard/lib/jquery/jquery.min.js"></script>
<script src="<?=base_url()?>assets/dashboard/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<?=base_url()?>assets/dashboard/lib/ionicons/ionicons.js"></script>
<script src="<?=base_url()?>assets/dashboard/lib/jquery.flot/jquery.flot.js"></script>
<script src="<?=base_url()?>assets/dashboard/lib/jquery.flot/jquery.flot.resize.js"></script>
<script src="<?=base_url()?>assets/dashboard/lib/jqvmap/jquery.vmap.min.js"></script>
<script src="<?=base_url()?>assets/dashboard/lib/jqvmap/maps/jquery.vmap.world.js"></script>
<script src="<?=base_url()?>assets/dashboard/lib/perfect-scrollbar/perfect-scrollbar.min.js"></script>

<script src="<?=base_url()?>assets/dashboard/js/office.js"></script>
<script src="<?=base_url()?>assets/dashboard/js/dashboard.sampledata.js"></script>
<script>
  $(function(){
    'use strict'

    $('.az-sidebar .with-sub').on('click', function(e){
      e.preventDefault();
      $(this).parent().toggleClass('show');
      $(this).parent().siblings().removeClass('show');
    })

    $(document).on('click touchstart', function(e){
      e.stopPropagation();

// closing of sidebar menu when clicking outside of it
if(!$(e.target).closest('.az-header-menu-icon').length) {
  var sidebarTarg = $(e.target).closest('.az-sidebar').length;
  if(!sidebarTarg) {
    $('body').removeClass('az-sidebar-show');
  }
}
});


    $('#azSidebarToggle').on('click', function(e){
      e.preventDefault();

      if(window.matchMedia('(min-width: 992px)').matches) {
        $('body').toggleClass('az-sidebar-hide');
      } else {
        $('body').toggleClass('az-sidebar-show');
      }
    });

    new PerfectScrollbar('.az-sidebar-body', {
      suppressScrollX: true
    });

    /* ----------------------------------- */
    /* Dashboard content */


    $.plot('#flotChart1', [{
      data: dashData1,
      color: '#6f42c1'
    }], {
      series: {
        shadowSize: 0,
        lines: {
          show: true,
          lineWidth: 2,
          fill: true,
          fillColor: { colors: [ { opacity: 0 }, { opacity: 1 } ] }
        }
      },
      grid: {
        borderWidth: 0,
        labelMargin: 0
      },
      yaxis: {
        show: false,
        min: 0,
        max: 100
      },
      xaxis: { show: false }
    });

    $.plot('#flotChart2', [{
      data: dashData2,
      color: '#007bff'
    }], {
      series: {
        shadowSize: 0,
        lines: {
          show: true,
          lineWidth: 2,
          fill: true,
          fillColor: { colors: [ { opacity: 0 }, { opacity: 1 } ] }
        }
      },
      grid: {
        borderWidth: 0,
        labelMargin: 0
      },
      yaxis: {
        show: false,
        min: 0,
        max: 100
      },
      xaxis: { show: false }
    });

    $.plot('#flotChart3', [{
      data: dashData3,
      color: '#f10075'
    }], {
      series: {
        shadowSize: 0,
        lines: {
          show: true,
          lineWidth: 2,
          fill: true,
          fillColor: { colors: [ { opacity: 0 }, { opacity: 1 } ] }
        }
      },
      grid: {
        borderWidth: 0,
        labelMargin: 0
      },
      yaxis: {
        show: false,
        min: 0,
        max: 100
      },
      xaxis: { show: false }
    });

    $.plot('#flotChart4', [{
      data: dashData4,
      color: '#00cccc'
    }], {
      series: {
        shadowSize: 0,
        lines: {
          show: true,
          lineWidth: 2,
          fill: true,
          fillColor: { colors: [ { opacity: 0 }, { opacity: 1 } ] }
        }
      },
      grid: {
        borderWidth: 0,
        labelMargin: 0
      },
      yaxis: {
        show: false,
        min: 0,
        max: 100
      },
      xaxis: { show: false }
    });

    $.plot('#flotChart5', [{
      data: dashData2,
      color: '#00cccc'
    },{
      data: dashData3,
      color: '#007bff'
    },{
      data: dashData4,
      color: '#f10075'
    }], {
      series: {
        shadowSize: 0,
        lines: {
          show: true,
          lineWidth: 2,
          fill: false,
          fillColor: { colors: [ { opacity: 0 }, { opacity: 1 } ] }
        }
      },
      grid: {
        borderWidth: 0,
        labelMargin: 20
      },
      yaxis: {
        show: false,
        min: 0,
        max: 100
      },
      xaxis: {
        show: true,
        color: 'rgba(0,0,0,.16)',
        ticks: [
        [0, ''],
        [10, '<span>Nov</span><span>05</span>'],
        [20, '<span>Nov</span><span>10</span>'],
        [30, '<span>Nov</span><span>15</span>'],
        [40, '<span>Nov</span><span>18</span>'],
        [50, '<span>Nov</span><span>22</span>'],
        [60, '<span>Nov</span><span>26</span>'],
        [70, '<span>Nov</span><span>30</span>'],
        ]
      }
    });

    $.plot('#flotChart6', [{
      data: dashData2,
      color: '#6f42c1'
    },{
      data: dashData3,
      color: '#007bff'
    },{
      data: dashData4,
      color: '#00cccc'
    }], {
      series: {
        shadowSize: 0,
        stack: true,
        bars: {
          show: true,
          lineWidth: 0,
          fill: 0.85
//fillColor: { colors: [ { opacity: 0 }, { opacity: 1 } ] }
}
},
grid: {
  borderWidth: 0,
  labelMargin: 20
},
yaxis: {
  show: false,
  min: 0,
  max: 100
},
xaxis: {
  show: true,
  color: 'rgba(0,0,0,.16)',
  ticks: [
  [0, ''],
  [10, '<span>Nov</span><span>05</span>'],
  [20, '<span>Nov</span><span>10</span>'],
  [30, '<span>Nov</span><span>15</span>'],
  [40, '<span>Nov</span><span>18</span>'],
  [50, '<span>Nov</span><span>22</span>'],
  [60, '<span>Nov</span><span>26</span>'],
  [70, '<span>Nov</span><span>30</span>'],
  ]
}
});

    $('#vmap').vectorMap({
      map: 'world_en',
      showTooltip: true,
      backgroundColor: '#f8f9fa',
      color: '#ced4da',
      colors: {
        us: '#6610f2',
        gb: '#8b4bf3',
        ru: '#aa7df3',
        cn: '#c8aef4',
        au: '#dfd3f2'
      },
      hoverColor: '#222',
      enableZoom: false,
      borderOpacity: .3,
      borderWidth: 3,
      borderColor: '#fff',
      hoverOpacity: .85
    });

  });
</script>

<!-- POPOVER SCRIPT TO BE REMOVED -->
<script>
  $(function(){
    'use strict'
    $('[data-toggle="popover"]').popover();
    $('[data-popover-color="head-default"]').popover({
      template: '<div class="popover popover-head-default" role="tooltip"><div class="arrow"></div><h3 class="popover-header"></h3><div class="popover-body"></div></div>'
    });
    $('[data-popover-color="default"]').popover({
      template: '<div class="popover popover-default" role="tooltip"><div class="arrow"></div><h3 class="popover-header"></h3><div class="popover-body"></div></div>'
    });
    $(document).on('click', function (e) {
      $('[data-toggle="popover"],[data-original-title]').each(function () {
        if (!$(this).is(e.target) && $(this).has(e.target).length === 0 && $('.popover').has(e.target).length === 0) {
          (($(this).popover('hide').data('bs.popover')||{}).inState||{}).click = false
        }

      });
    });
  });
</script>
<!-- POPOVER SCRIPT TO BE REMOVED -->