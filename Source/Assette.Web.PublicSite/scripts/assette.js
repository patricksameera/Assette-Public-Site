///////////////////////////////////////////////////////
//********** Assette Public Site           **********//
//********** Assette © 2013                **********//
//********** Developed by Sameera Jayalath **********//
///////////////////////////////////////////////////////

var player;
var playerPaused = false;
var version;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// start of jquery ready() function ////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

$(document).ready(function () {
    //debugger;

    // set version number
    version = $("[id$='hdnVersion']").val();

    linkVisible();

    zoomIconPlacement();
    padlockIconPlacement();

    $('.navigation a').hover(
        function () {
            linkHide();
        },
        function () {
            linkVisible();
        }
    );

    $('.lnkSignUp').click(function () {
        //debugger;

        $("#signin").slideDown('slow');

    });

    $(window).resize(function () {

        zoomIconPlacement();
        padlockIconPlacement();
    });

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // fancybox images functionality ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    $(".fancybox").fancybox(
    {
        padding: 0,
        helpers: {
            overlay: { locked: false }
        }
    });

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // pricing pages functionality /////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    $(".pricing_dialog").fancybox({
        maxWidth: 1037,
        maxHeight: 800,
        fitToView: false,
        width: '100%',
        height: '100%',
        autoSize: false,
        closeClick: false,
        openEffect: 'none',
        closeEffect: 'none',
        padding: 8,

        // helpers
        helpers: {
            media: {},
            overlay: { locked: false }
        }

    });

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // default page video functionality ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    $('.fancybox-media').fancybox({
        type: 'iframe',
        openEffect: 'none',
        closeEffect: 'none',
        padding: '0',

        // helpers
        helpers: {
            overlay: {
                locked: false
            }
        },

        // events
        beforeLoad: function () {
            //debugger;

            // get url for sharethis
            var video_url = this.href;

            //var html_string = '<span st_title="Check out Assette video:" class="st_facebook_large" st_url="' + video_url + '"></span><span st_title="Check out Assette video:" st_via="AssetteReport" class="st_twitter_large" st_url="' + video_url + '"></span><span st_title="Check out Assette video:" class="st_linkedin_large" st_url="' + video_url + '"></span>';
            var html_string = '<span st_summary="Great, funny video about client reporting had me laughing out loud. If you\'ve ever been responsible for investment client reports, you\'ve got to watch this … then send it to your boss!" class="st_facebook_large" st_url="' + video_url + '"></span><span st_title="Great video about client reporting. If you\'re a RM in investment mgt., send this to the boss. " st_via="AssetteReport" class="st_twitter_large" st_url="' + video_url + '"></span><span st_title="Check out Assette video" st_summary="Love this short video from Assette. If you\'ve ever been responsible for investment client reporting, you\'ll laugh out loud at this clever take on how crazy it can get during quarterly time. Nice stress-reliever and excellent share with bosses who just don\'t get how much work it is." class="st_linkedin_large" st_url="' + video_url + '"></span>';

            $(".share_section").html(html_string);

            stButtons.locateElements();

            // set video url
            this.href = $(this).attr('href') + '?enablejsapi=0&wmode=opaque&autoplay=1&controls=1&rel=0&showinfo=0&autohide=2&disablekb=0&fs=1&?modestbranding=0&showsearch=0&iv_load_policy=3';
        },

        beforeShow: function () {
            //debugger;

            playerPaused = false;

            var id = $.fancybox.inner.find('iframe').attr('id');

            player = new YT.Player(id, {

                events: {
                    'onReady': onPlayerReady,
                    'onStateChange': onPlayerStateChange
                }

            });
        },

        beforeClose: function () {
            //debugger;

            $(".share_section").hide();
        },

        afterClose: function () {
            //debugger;
        }

    });


    //////////////////////////////////////////////////////////////////////////////////////

    // view video - no registration required
    $('.various_video').click(function () {
        //debugger;

        var videokey = $(this).attr('videokey')

        // show video
        $('.various_video').fancybox({

            type: 'iframe',
            href: 'video-player.aspx?videokey=' + encodeURIComponent(videokey) + '&version=' + encodeURIComponent(version),
            padding: 0,
            maxWidth: 800,
            maxHeight: 600,
            fitToView: false,
            width: '80%',
            height: '60%',
            autoSize: true,
            openEffect: 'none',
            closeEffect: 'none',
            //scrolling: 'no',

            // helpers
            helpers: {
                media: {},
                overlay: { locked: false }
            }

        });
    });

    //////////////////////////////////////////////////////////////////////////////////////

    // contact sales
    $('.contact_sales_sign_up').click(function () {
        //debugger;

        showContactSalesAll();

        /*
        var registered = $("[id$='hdnRegistered']").val();

        if (registered == '1') {

        showContactSalesDescription();

        }
        else {

        showContactSalesAll();
        }
        */
    });

    //////////////////////////////////////////////////////////////////////////////////////

    // request live demo
    $('.request_live_demo').click(function () {
        //debugger;

        var product = $(this).attr('product')

        showRequestDemoAll();

        /*
        var registered = $("[id$='hdnRegistered']").val();

        if (registered == '1') {

        showRequestDemoDescription();

        }
        else {

        showRequestDemoAll();
        }*/

    });

    //////////////////////////////////////////////////////////////////////////////////////

    // view video - registration required
    $('.product_video_registration').click(function () {
        //debugger;

        var registered = $("[id$='hdnRegistered']").val();

        var videokey = $(this).attr('videokey')
        var product = $(this).attr('product')
        var time = $(this).attr('time')

        if (registered == '1') {

            showVideoPlayer(videokey);

        }
        else {

            showSignUpViewDemo(videokey, product, time);
        }

    });

    //////////////////////////////////////////////////////////////////////////////////////

    // pricing - registration required
    $('.pricing_dialog_standard_registration').click(function () {
        //debugger;

        // initial set
        window.top.$("#hdnShowEasyPricing").val("0");

        var registered = $("[id$='hdnRegistered']").val();

        var product = $(this).attr('product');
        var title = $(this).attr('product_title');

        if (registered == '1') {

            showStandardPricingDialog();

        }
        else {

            showSignUpStandardPricing(product, title);
        }

    });


    //////////////////////////////////////////////////////////////////////////////////////

    // pricing - registration required
    $('.pricing_dialog_easy_registration').click(function () {
        //debugger;

        var registered = $("[id$='hdnRegistered']").val();

        var product = $(this).attr('product')
        var title = $(this).attr('product_title');

        if (registered == '1') {

            showEasyPricingDialog(product);

        }
        else {

            showSignUpEasyPricing(product, title);
        }

    });


    //////////////////////////////////////////////////////////////////////////////////////

    // white paper download
    $('.white_paper_pdf_download').click(function () {
        //debugger;

        var registered = $("[id$='hdnRegistered']").val();

        var secure = $(this).attr('secure');
        var path = $(this).attr('path');
        var title = $(this).attr('posttitle');

        if (secure == "True") {
            if (registered == '1') {

                window.location.reload();

                var url = $(this).attr('href', path).attr('target', '_blank');


            }
            else {

                showSignUpWhitePaperPdfDownload(path, title);
            }
        }
        else {
            window.location.reload();

            var url = $(this).attr('href', path).attr('target', '_blank');

            //window.location.reload();
        }
    });

    //////////////////////////////////////////////////////////////////////////////////////

    // simplyscroll functionality
    $("#logo_scroller").simplyScroll({
        pauseButton: false,
        pauseOnHover: true,
        frameRate: 20,
        speed: 2
    });


    //////////////////////////////////////////////////////////////////////////////////////

})

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// end of jquery ready() function //////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//************************************************************************************
// contact sales 'here' video 
//************************************************************************************

function contactSalesShowVideo(videokey) {
    //debugger;

    var viewVideo = $("[id$='hdnContactSalesViewVideo']").val();
    var registered = $("[id$='hdnRegistered']").val();

    if (registered == "1") {
        hidePadLock();
    }

    if (viewVideo == "1") {

        $('.product_video_dummy').fancybox({
            type: 'iframe',
            openEffect: 'none',
            closeEffect: 'none',
            padding: '0',

            // helpers
            helpers: {
                overlay: {
                    locked: false
                }
            },

            // events
            beforeLoad: function () {
                //debugger;

                this.href = $(this).attr('href') + videokey + '?enablejsapi=0&wmode=opaque&autoplay=1&controls=1&rel=0&showinfo=0&autohide=2&disablekb=0&fs=1&?modestbranding=0&showsearch=0&iv_load_policy=3';
            },

            beforeShow: function () {
                //debugger;

                playerPaused = false;

                var id = $.fancybox.inner.find('iframe').attr('id');

                player = new YT.Player(id, {

                    events: {
                        'onReady': onPlayerReady,
                        'onStateChange': onPlayerStateChange
                    }

                });
            },

            beforeClose: function () {
                //debugger;

                $(".share_section").hide();
            },

            afterClose: function () {
                //debugger;
            }

        }).trigger('click');

    }
}

//************************************************************************************
// request demo
//************************************************************************************

function requestDemoClose() {
    //debugger;

    var registered = $("[id$='hdnRegistered']").val();

    if (registered == "1") {
        hidePadLock();
    }
}


//************************************************************************************
// request demo 'here' video 
//************************************************************************************

function requestDemoShowVideo(videokey) {
    //debugger;

    var registered = $("[id$='hdnRequestDemoViewVideo']").val();

    if (registered == "1") {

        $('.product_video_dummy').fancybox({
            type: 'iframe',
            openEffect: 'none',
            closeEffect: 'none',
            padding: '0',

            // helpers
            helpers: {
                overlay: {
                    locked: false
                }
            },

            // events
            beforeLoad: function () {
                //debugger;

                this.href = $(this).attr('href') + videokey + '?enablejsapi=0&wmode=opaque&autoplay=1&controls=1&rel=0&showinfo=0&autohide=2&disablekb=0&fs=1&?modestbranding=0&showsearch=0&iv_load_policy=3';
            },

            beforeShow: function () {
                //debugger;

                playerPaused = false;

                var id = $.fancybox.inner.find('iframe').attr('id');

                player = new YT.Player(id, {

                    events: {
                        'onReady': onPlayerReady,
                        'onStateChange': onPlayerStateChange
                    }

                });
            },

            beforeClose: function () {
                //debugger;

                $(".share_section").hide();
            },

            afterClose: function () {
                //debugger;
            }

        }).trigger('click');

    }
}

//************************************************************************************
// show registration form - user is not registered
//************************************************************************************

function showSignUpViewDemo(videokey, product, time) {
    //debugger;

    // show sign-up
    $('.product_video_registration').fancybox({

        type: 'iframe',
        href: 'sign-up-view-demo.aspx?videokey=' + encodeURIComponent(videokey) + '&product=' + encodeURIComponent(product) + '&time=' + encodeURIComponent(time) + '&version=' + encodeURIComponent(version),
        maxWidth: 720,
        maxHeight: 480,
        fitToView: false,
        width: 720,
        height: 480,
        autoSize: false,
        closeClick: false,
        openEffect: 'none',
        closeEffect: 'none',
        padding: 8,

        // helpers
        helpers: {
            media: {},
            overlay: { locked: false }
        },

        beforeClose: function () {
            //debugger;

            window.setTimeout("showVideoPlayerSignUp('" + videokey + "')", 100);
        }

    });

}

//************************************************************************************
// show registration form - user is not registered
//************************************************************************************

function showSignUpStandardPricing(product, title) {
    //debugger;

    // show sign-up
    $('.pricing_dialog_standard_registration').fancybox({

        type: 'iframe',
        //href: 'sign-up-standard-pricing.aspx?product=' + product + '&version=' + version,
        href: 'sign-up-standard-pricing.aspx?product=' + encodeURIComponent(product) + '&title=' + encodeURIComponent(title) + '&version=' + encodeURIComponent(version),
        maxWidth: 720,
        maxHeight: 490,
        fitToView: false,
        width: 720,
        height: 490,
        autoSize: false,
        closeClick: false,
        openEffect: 'none',
        closeEffect: 'none',
        padding: 8,

        // helpers
        helpers: {
            media: {},
            overlay: { locked: false }
        },

        beforeClose: function () {
            //debugger;

            window.setTimeout("showStandardPricingSignUp('" + product + "')", 100);
        }

    });
}


//************************************************************************************
// show registration form - user is not registered
//************************************************************************************

function showSignUpEasyPricing(product, title) {
    //debugger;

    // show sign-up
    $('.pricing_dialog_easy_registration').fancybox({

        type: 'iframe',
        href: 'sign-up-easy-pricing.aspx?product=' + encodeURIComponent(product) + '&title=' + encodeURIComponent(title) + '&version=' + encodeURIComponent(version),
        maxWidth: 720,
        maxHeight: 490,
        fitToView: false,
        width: 720,
        height: 490,
        autoSize: false,
        closeClick: false,
        openEffect: 'none',
        closeEffect: 'none',
        padding: 8,

        // helpers
        helpers: {
            media: {},
            overlay: { locked: false }
        },

        beforeClose: function () {
            //debugger;

            window.setTimeout("showEasyPricingSignUp('" + product + "')", 100);
        }

    });

}


//************************************************************************************
// show registration form - pdf download
//************************************************************************************

function showSignUpWhitePaperPdfDownload(path, title) {
    //debugger;

    // show sign-up
    $('.white_paper_pdf_download').fancybox({

        type: 'iframe',
        href: 'sign-up-white-papers.aspx?path=' + encodeURIComponent(path) + '&title=' + encodeURIComponent(title) + '&version=' + encodeURIComponent(version),
        maxWidth: 720,
        maxHeight: 500,
        fitToView: false,
        width: 720,
        height: 500,
        autoSize: false,
        closeClick: false,
        openEffect: 'none',
        closeEffect: 'none',
        padding: 8,

        // helpers
        helpers: {
            media: {},
            overlay: { locked: false }
        },

        beforeClose: function () {
            //debugger;

            //window.setTimeout("showEasyPricingSignUp()", 100);

            window.location.reload();
        }

    });

}

//************************************************************************************
// show video straight away - already registered
//************************************************************************************

function showVideoPlayer(videokey) {
    //debugger;

    // show video
    $('.product_video_registration').fancybox({

        type: 'iframe',
        href: 'video-player.aspx?videokey=' + encodeURIComponent(videokey) + '&version=' + encodeURIComponent(version),
        padding: 0,
        maxWidth: 800,
        maxHeight: 600,
        fitToView: false,
        width: '80%',
        height: '60%',
        autoSize: true,
        openEffect: 'none',
        closeEffect: 'none',
        //scrolling: 'no',

        // helpers
        helpers: {
            media: {},
            overlay: { locked: false }
        }

    });

}

//************************************************************************************
// show pricing straight away - already registered
//************************************************************************************

function showStandardPricingDialog(product) {
    //debugger;

    $(".pricing_dialog_standard_registration").fancybox({
        type: "iframe",
        href: 'product-standard-reports-fees.aspx?product=' + encodeURIComponent(product),
        maxWidth: 1037,
        maxHeight: 800,
        fitToView: false,
        width: '100%',
        height: '100%',
        autoSize: false,
        closeClick: false,
        openEffect: 'none',
        closeEffect: 'none',
        padding: 8,

        // helpers
        helpers: {
            media: {},
            overlay: { locked: false }
        },

        // events
        beforeClose: function () {
            //debugger;

            // show easy pricing inside standard
            window.setTimeout("showEasyEditionPricingDialog('" + product + "')", 100);
        }

    });

}

//************************************************************************************
// show contact sales description only form - already registered
//************************************************************************************

function showContactSalesDescription() {
    //debugger;

    $(".contact_sales_sign_up").fancybox({

        type: 'iframe',
        href: 'sign-up-contact-sales-registered.aspx?version=' + encodeURIComponent(version),
        maxWidth: 720,
        maxHeight: 420,
        fitToView: false,
        width: 720,
        height: 420,
        autoSize: false,
        closeClick: false,
        openEffect: 'none',
        closeEffect: 'none',
        padding: 8,

        // helpers
        helpers: {
            media: {},
            overlay: { locked: false }
        },

        // events
        beforeLoad: function () {
            $("#hdnContactSalesViewVideo").val("0");

            var product = $(this.element).attr('product')
            this.href = this.href + '?product=' + product;
        },

        beforeClose: function () {

            var videokey = $(this.element).attr('videokey')

            window.setTimeout("contactSalesShowVideo('" + videokey + "')", 100);
        }

    });

}

//************************************************************************************
// show contact sales form
//************************************************************************************

function showContactSalesAll() {
    //debugger;

    $(".contact_sales_sign_up").fancybox({

        type: 'iframe',
        href: 'sign-up-contact-sales.aspx',
        maxWidth: 720,
        maxHeight: 620,
        fitToView: false,
        width: 720,
        height: 620,
        autoSize: false,
        closeClick: false,
        openEffect: 'none',
        closeEffect: 'none',
        padding: 8,

        // helpers
        helpers: {
            media: {},
            overlay: { locked: false }
        },

        // events
        beforeLoad: function () {
            $("#hdnContactSalesViewVideo").val("0");

            var product = $(this.element).attr('product')
            this.href = this.href + '?product=' + product + '&version=' + encodeURIComponent(version);
        },

        beforeClose: function () {
            //debugger;

            var videokey = $(this.element).attr('videokey')

            window.setTimeout("contactSalesShowVideo('" + videokey + "')", 100);
        }

    });

}


//************************************************************************************
// show request live demo description only form - already registered
//************************************************************************************

function showRequestDemoDescription() {
    //debugger;

    $(".request_live_demo").fancybox({

        type: 'iframe',
        href: 'sign-up-request-demo-registered.aspx?version=' + encodeURIComponent(version),
        maxWidth: 720,
        maxHeight: 420,
        fitToView: false,
        width: 720,
        height: 420,
        autoSize: false,
        closeClick: false,
        openEffect: 'none',
        closeEffect: 'none',
        padding: 8,

        // helpers
        helpers: {
            media: {},
            overlay: { locked: false }
        },

        // events
        beforeLoad: function () {
            $("#hdnRequestDemoViewVideo").val("0");

            var product = $(this.element).attr('product')
            this.href = this.href + '?product=' + product;
        },

        beforeClose: function () {
            //debugger;

            var videokey = $(this.element).attr('videokey')

            window.setTimeout("requestDemoShowVideo('" + videokey + "')", 100);
        }

    });

}

//************************************************************************************
// show request demo form
//************************************************************************************

function showRequestDemoAll() {
    //debugger;

    $(".request_live_demo").fancybox({

        type: 'iframe',
        href: 'sign-up-request-demo.aspx',
        maxWidth: 720,
        maxHeight: 640,
        fitToView: false,
        width: 720,
        height: 640,
        autoSize: false,
        closeClick: false,
        openEffect: 'none',
        closeEffect: 'none',
        padding: 8,

        // helpers
        helpers: {
            media: {},
            overlay: { locked: false }
        },

        // events
        beforeLoad: function () {
            //debugger;

            $("#hdnContactSalesViewVideo").val("0");

            var product = $(this.element).attr('product')
            this.href = this.href + '?product=' + encodeURIComponent(product) + '&version=' + encodeURIComponent(version);
        },

        beforeClose: function () {
            //debugger;

            var videokey = $(this.element).attr('videokey')

            window.setTimeout("requestDemoClose()", 100);
        }

    });

}

$('.contact_sales_video_link').click(function () {
    //debugger;

    window.top.$("#hdnContactSalesViewVideo").val("1");

    var registered = window.top.$("[id$='hdnContactSalesViewVideo']").val();
    parent.$.fancybox.close();

});

$('.request_demo_video_link').click(function () {
    //debugger;

    window.top.$("#hdnRequestDemoViewVideo").val("1");

    var registered = window.top.$("[id$='hdnRequestDemoViewVideo']").val();
    parent.$.fancybox.close();

});

//************************************************************************************
// show pricing straight away - already registered
//************************************************************************************

function showEasyPricingDialog(product) {
    //debugger;

    $(".pricing_dialog_easy_registration").fancybox({
        type: "iframe",
        href: 'product-easy-reports-fees.aspx?version=' + encodeURIComponent(version) + '&product=' + encodeURIComponent(product),
        maxWidth: 1037,
        maxHeight: 800,
        fitToView: false,
        width: '100%',
        height: '100%',
        autoSize: false,
        closeClick: false,
        openEffect: 'none',
        closeEffect: 'none',
        padding: 8,

        // helpers
        helpers: {
            media: {},
            overlay: { locked: false }
        }

    });

}

//************************************************************************************
// show registration form - before watch the video
//************************************************************************************

function showVideoPlayerSignUp(videokey) {
    //debugger;

    var registered = $("[id$='hdnRegistered']").val();

    if (registered == "1") {

        hidePadLock();

        // show video
        $('.product_video_dummy').fancybox({

            type: 'iframe',
            href: 'video-player.aspx?videokey=' + encodeURIComponent(videokey) + '&version=' + encodeURIComponent(version),
            padding: 0,
            maxWidth: 800,
            maxHeight: 600,
            fitToView: false,
            width: '80%',
            height: '60%',
            autoSize: true,
            openEffect: 'none',
            closeEffect: 'none',
            //scrolling: 'no',

            // helpers
            helpers: {
                media: {},
                overlay: { locked: false }
            }

        }).trigger('click');
    }

}

//************************************************************************************
// show registration form - before watch the video
//************************************************************************************

function showStandardPricingSignUp(product) {
    //debugger;

    var registered = $("[id$='hdnRegistered']").val();

    if (registered == "1") {

        hidePadLock();

        $(".product_video_dummy").fancybox({
            type: "iframe",
            href: 'product-standard-reports-fees.aspx?version=' + encodeURIComponent(version) + '&product=' + encodeURIComponent(product),
            maxWidth: 1037,
            maxHeight: 800,
            fitToView: false,
            width: '100%',
            height: '100%',
            autoSize: false,
            closeClick: false,
            openEffect: 'none',
            closeEffect: 'none',
            padding: 8,

            // helpers
            helpers: {
                media: {},
                overlay: { locked: false }
            }

        }).trigger('click');
    }
}

//************************************************************************************
// show registration form - before watch the video
//************************************************************************************

function showEasyPricingSignUp(product) {
    //debugger;

    var registered = $("[id$='hdnRegistered']").val();

    if (registered == "1") {

        hidePadLock();

        $(".product_video_dummy").fancybox({
            type: "iframe",
            href: 'product-easy-reports-fees.aspx?version=' + encodeURIComponent(version) + '&product=' + encodeURIComponent(product),
            maxWidth: 1037,
            maxHeight: 800,
            fitToView: false,
            width: '100%',
            height: '100%',
            autoSize: false,
            closeClick: false,
            openEffect: 'none',
            closeEffect: 'none',
            padding: 8,

            // helpers
            helpers: {
                media: {},
                overlay: { locked: false }
            }

        }).trigger('click');
    }

}

//************************************************************************************
// easy pricing inside standard pricing 
//************************************************************************************

function showEasyEditionPricingDialog() {
    //debugger;

    var viewPricing = window.top.$("[id$='hdnShowEasyPricing']").val();

    var product = "Pricing – Easy Editions";

    if (viewPricing == "1") {

        $('.product_video_dummy').fancybox({

            type: "iframe",
            href: 'product-easy-reports-fees.aspx?version=' + encodeURIComponent(version) + '&product=' + encodeURIComponent(product),
            maxWidth: 1037,
            maxHeight: 800,
            fitToView: false,
            width: '100%',
            height: '100%',
            autoSize: false,
            closeClick: false,
            openEffect: 'none',
            closeEffect: 'none',
            padding: 8,

            // helpers
            helpers: {
                media: {},
                overlay: { locked: false }
            }

        }).trigger('click');

    }
}

//************************************************************************************
// show video - after registration
//************************************************************************************

//function showVideoPlayerSignUp1(videokey) {
//    debugger;

//    var registered = $("[id$='hdnRegistered']").val();

//    if (registered == "1") {

//        // show video
//        $('.product_video_registration_signup').fancybox({

//            type: 'iframe',
//            href: 'video-player.aspx?videokey=' + encodeURIComponent(videokey) + '&version=' + encodeURIComponent(version),
//            padding: 0,
//            maxWidth: 800,
//            maxHeight: 600,
//            fitToView: false,
//            width: '80%',
//            height: '60%',
//            autoSize: true,
//            openEffect: 'none',
//            closeEffect: 'none',

//            // helpers
//            helpers: {
//                media: {},
//                overlay: { locked: false }
//            }

//        }).trigger('click');
//    }

//}

//************************************************************************************
// youtube video events
//************************************************************************************

function onPlayerReady(event) {
    //debugger;

}

function onPlayerStateChange(event) {
    //debugger;

    if (player && player.getDuration) {
        setInterval(updatePlayerInfo, 500);
    }
}

function updatePlayerInfo() {

    if (player && player.getDuration && !playerPaused) {

        var currentTime = player.getCurrentTime();
        var duration = player.getDuration() - 2;

        if (currentTime > duration) {
            //debugger;

            player.pauseVideo();
            playerReSize();

            playerPaused = true;
        }
    }
}

function playerReSize() {
    //debugger;

    var position = $(".fancybox-wrap").offset();

    var video_width = $('.fancybox-wrap').width();
    var video_height = $('.fancybox-wrap').height();

    $(".share_section").slideDown('slow');

    var x = position.left + video_width / 3 + 58;
    var y = position.top + video_height - 85;

    $(".share_section").css("left", x);
    $(".share_section").css("top", y);
}


function zoomIconPlacement() {
    //debugger;

    var position = $(".product_zoom").offset();

    if (position != null) {
        var x = position.left + 132;
        var y = position.top + 320;

        $(".zoom_icon").css("left", x);
        $(".zoom_icon").css("top", y);
    }

    position = $(".default_zoom").offset();

    if (position != null) {
        var x = position.left + 282;
        var y = position.top;

        $(".zoom_icon").css("left", x);
        $(".zoom_icon").css("top", y);
    }

}

function padlockIconPlacement() {
    //debugger;

    var position = $(".pricing_button").offset();

    if (position != null) {
        var x = position.left + 110;
        var y = position.top + 5;

        $(".pricing_lock").css("left", x);
        $(".pricing_lock").css("top", y);
    }
}


//************************************************************************************
// navigation
//************************************************************************************

function linkVisible() {
    //debugger;

    // get the link id
    var linkId = $("[id$='hdnLink']").val();

    // set selected link
    $('#' + linkId).addClass('top_active');

    // top section ///////////////////////////////////////////////////////////////////

    // top menu - lnkabout
    if (linkId == "lnkabout") {

        $("#bottomabout").css({ "display": "block" });
    }

    // top menu - lnkproduct
    if (linkId == "lnkproduct") {

        $("#bottomproduct").css({ "display": "block" });
    }

    // top menu - lnkclients
    if (linkId == "lnkclients") {

        $("#bottomclients").css({ "display": "block" });
    }

    // top menu - lnktechnology
    if (linkId == "lnktechnology") {

        $("#bottomtechnology").css({ "display": "block" });
    }

    // white papers menu ////////////////////////////////////////////////////////////////////

    // menu - lnkwhite
    if (linkId == "lnkwhite") {

        $('#' + linkId).css({ "display": "block" });
    }

    // white papers menu ////////////////////////////////////////////////////////////////////

    // menu - lnknews
    if (linkId == "lnknews") {

        $('#' + linkId).css({ "display": "block" });
    }

    // about menu ////////////////////////////////////////////////////////////////////

    // bottom menu - lnkpeople
    if (linkId == "lnkpeople") {
        //debugger;
        $("#bottomabout").css({ "display": "block" });
        $("#lnkabout").addClass('top_active');
        $('#' + linkId).addClass('bottom_active');
    }

    // bottom menu - lnkwhyassette
    if (linkId == "lnkwhyassette") {

        $("#bottomabout").css({ "display": "block" });
        $("#lnkabout").addClass('top_active');
        $('#' + linkId).addClass('bottom_active');
    }

    // bottom menu - lnkexpert
    if (linkId == "lnkexpert") {

        $("#bottomabout").css({ "display": "block" });
        $("#lnkabout").addClass('top_active');
        $('#' + linkId).addClass('bottom_active');
    }

    // bottom menu - lnkContact
    if (linkId == "lnkContact") {

        $("#bottomabout").css({ "display": "block" });
        $("#lnkabout").addClass('top_active');
        $('#' + linkId).addClass('bottom_active');
    }

    // product menu ////////////////////////////////////////////////////////////////////

    // bottom menu - lnkpresentations
    if (linkId == "lnkpresentations") {

        $("#bottomproduct").css({ "display": "block" });
        $("#lnkproduct").addClass('top_active');
        $('#' + linkId).addClass('bottom_active');
    }

    // bottom menu - lnkreports
    if (linkId == "lnkreports") {

        $("#bottomproduct").css({ "display": "block" });
        $("#lnkproduct").addClass('top_active');
        $('#' + linkId).addClass('bottom_active');
    }

    // bottom menu - lnkportal
    if (linkId == "lnkportal") {

        $("#bottomproduct").css({ "display": "block" });
        $("#lnkproduct").addClass('top_active');
        $('#' + linkId).addClass('bottom_active');
    }

    // bottom menu - lnkeasyreports
    if (linkId == "lnkeasyreports") {

        $("#bottomproduct").css({ "display": "block" });
        $("#lnkproduct").addClass('top_active');
        $('#' + linkId).addClass('bottom_active');
    }

    // technology menu ////////////////////////////////////////////////////////////////////

    // bottom menu - lnkonboarding
    if (linkId == "lnkonboarding") {

        $("#bottomtechnology").css({ "display": "block" });
        $("#lnktechnology").addClass('top_active');
        $('#' + linkId).addClass('bottom_active');
    }

    // bottom menu - lnkdatainterface
    if (linkId == "lnkdatainterface") {

        $("#bottomtechnology").css({ "display": "block" });
        $("#lnktechnology").addClass('top_active');
        $('#' + linkId).addClass('bottom_active');
    }

    // bottom menu - lnkdatavalidation
    if (linkId == "lnkdatavalidation") {

        $("#bottomtechnology").css({ "display": "block" });
        $("#lnktechnology").addClass('top_active');
        $('#' + linkId).addClass('bottom_active');
    }

    // bottom menu - lnkdatarequirement
    if (linkId == "lnkdatarequirement") {

        $("#bottomtechnology").css({ "display": "block" });
        $("#lnktechnology").addClass('top_active');
        $('#' + linkId).addClass('bottom_active');
    }

    // bottom menu - lnksecurity
    if (linkId == "lnksecurity") {

        $("#bottomtechnology").css({ "display": "block" });
        $("#lnktechnology").addClass('top_active');
        $('#' + linkId).addClass('bottom_active');
    }

    // client menu ////////////////////////////////////////////////////////////////////

    // bottom menu - lnkcasestudies
    if (linkId == "lnkcasestudies") {

        $("#bottomclients").css({ "display": "block" });
        $("#lnkclients").addClass('top_active');
        $('#' + linkId).addClass('bottom_active');
    }

}

function linkHide() {
    //debugger;

    // get the link id
    var linkId = $("[id$='hdnLink']").val();

    // set selected link
    $('#' + linkId).addClass('top_active');

    // clear all
    $("#bottomabout").css({ "display": "" });
    $("#bottomproduct").css({ "display": "" });
    $("#bottomclients").css({ "display": "" });
    $("#bottomtechnology").css({ "display": "" });

    $("#lnkabout").removeClass('top_active');
    $("#lnkproduct").removeClass('top_active');
    $("#lnkclients").removeClass('top_active');
    $("#lnktechnology").removeClass('top_active');

    // top section ///////////////////////////////////////////////////////////////////

    // top menu - lnkabout
    if (linkId == "lnkabout") {

        $("#bottomabout").css({ "display": "" });
    }

    // top menu - lnkproduct
    if (linkId == "lnkproduct") {

        $("#bottomproduct").css({ "display": "" });
    }

    // top menu - lnkclients
    if (linkId == "lnkclients") {

        $("#bottomclients").css({ "display": "" });
    }

    // top menu - lnktechnology
    if (linkId == "lnktechnology") {

        $("#bottomtechnology").css({ "display": "" });
    }
}

//************************************************************************************
// query string
//************************************************************************************

function getQueryStringParameterByName(name) {
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

//************************************************************************************
// set registration true
//************************************************************************************

function setRegistrationTrue() {
    $("#hdnRegistered").val("1");
}

//************************************************************************************
// form registration success message
//************************************************************************************

function requestDemoSucess() {
    //debugger;

    // set registration : true
    window.top.$("#hdnRegistered").val("1");
    var registered = window.top.$("[id$='hdnRegistered']").val();

    var html = "<div class='signup_title'>Thank You</div><div class='request_demo_sucess'>Your information has been successfully submitted. Thank you again for your interest in Assette.<br/><br/>An Assette representative will contact you within <b>1 business day</b>.<br/><div class='success_close_btn'>CLOSE</div></div>";
    $('.sign_up').html(html);
}

//************************************************************************************
// contact sales success message
//************************************************************************************

function contactSalesSuccess() {
    //debugger;

    // set registration : true
    window.top.$("#hdnRegistered").val("1");
    var registered = window.top.$("[id$='hdnRegistered']").val();

    var html = "<div class='signup_title'>Thank You</div><div class='request_demo_sucess'>Your information has been successfully submitted. Thank you again for your interest in Assette.<br/><br/>An Assette representative will contact you within <b>1 business day</b>.<br/><div class='success_close_btn'>CLOSE</div></div>";
    $('.sign_up').html(html);
}

//************************************************************************************
// contact sales success message
//************************************************************************************

function downloadWhitePaperSuccess(path) {
    //debugger;

    // set registration : true
    window.top.$("#hdnRegistered").val("1");
    var registered = window.top.$("[id$='hdnRegistered']").val();

    var html = "<div class='signup_title'>Thank You</div><div class='request_demo_sucess'>Thank you again for your interest in Assette's white papers.<br/><br/><div class='download_success_close_btn' file='" + path + "' >CLOSE and DOWNLOAD</div></div>";
    $('.sign_up').html(html);
}

//************************************************************************************
// thank you - close button
//************************************************************************************

$('.success_close_btn').live("click", function (e) {
    $("#hdnContactSalesViewVideo").val("1");
    parent.$.fancybox.close();
});

//************************************************************************************
// thank you - close button - file download
//************************************************************************************

$('.download_success_close_btn').live("click", function (e) {
    //debugger;

    var file = $(this).attr('file');

    //var url = $(this).attr('href', path).attr('target', '_blank');
    //window.top.location.href = fileName;
    //window.top.location.target = '_blank';

    var dummy_link = document.createElement('a');
    dummy_link.id = 'dummy_link';
    dummy_link.href = file;
    dummy_link.target = '_blank';
    document.body.appendChild(dummy_link);
    dummy_link.click();
    document.body.removeChild(document.getElementById('dummy_link'));

    window.top.location.reload();

    parent.$.fancybox.close();
});

//************************************************************************************
// standard pricing - view easy pricing button
//************************************************************************************

$('.pricing_more_action_btn').live("click", function (e) {
    //debugger;

    window.top.$("#hdnShowEasyPricing").val("1");

    var viewPricing = window.top.$("[id$='hdnShowEasyPricing']").val();

    parent.$.fancybox.close();

});

//************************************************************************************
// contact sales success message
//************************************************************************************

function hidePadLock() {
    //debugger;

    $("#BodyPlaceHolder_pricing_padlock").css("display", "none");
}



