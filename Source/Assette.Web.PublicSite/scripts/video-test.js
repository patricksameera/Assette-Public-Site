
$(document).ready(function () {
    //debugger;

    // view video - no registration required
    $('.various_video').click(function () {
        //debugger;

        var videokey = $(this).attr('videokey')
        var version = '1';

        // show video
        $('.various_video').fancybox({

            type: 'iframe',
            href: 'video-player.aspx?videokey=' + encodeURIComponent(videokey) + '&version=' + encodeURIComponent(version),
            padding: 0,
            maxWidth: 800,
            maxHeight: 600,
            fitToView: false,
            width: '800',
            height: '600',
            autoSize: false,
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

})