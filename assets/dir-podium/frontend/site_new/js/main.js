jQuery(document).on('ready', function ($) {
    "use strict";

    /*---------------------------
        SMOOTH SCROLL
    -----------------------------*/
    $('ul#nav li a[href^="#"], a.navbar-brand, a.scrolltotop').on('click', function (event) {
        var id = $(this).attr("href");
        var offset = 60;
        var target = $(id).offset().top - offset;
        $('html, body').animate({
            scrollTop: target
        }, 1500, "easeInOutExpo");
        event.preventDefault();
    });


    /*----------------------------
        SCROLL TO TOP
    ------------------------------*/
    $(window).scroll(function () {
        var $totalHeight = $(window).scrollTop();
        var $scrollToTop = $(".scrolltotop");
        if ($totalHeight > 300) {
            $(".scrolltotop").fadeIn();
        } else {
            $(".scrolltotop").fadeOut();
        }

        if ($totalHeight + $(window).height() === $(document).height()) {
            $scrollToTop.css("bottom", "90px");
        } else {
            $scrollToTop.css("bottom", "20px");
        }
    });


    /*------------------------------
        VIDEO POPUP
    --------------------------------*/
    var $videoModal = $(".video-area-popup");
    $videoModal.modalVideo({
        channel: 'youtube'
    });


    /*--------------------------
        ACTIVE WOW JS
    ----------------------------*/
    new WOW().init();


}(jQuery));