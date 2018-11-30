///////////////////////////////////////////////////////
//********** Assette Public Site           **********//
//********** Assette © 2013                **********//
//********** Developed by Sameera Jayalath **********//
///////////////////////////////////////////////////////
var player;
$(document).ready(function () {
    //debugger;

    //////////////////////////////////////////////////////////////////////////////////////

    // view video - registration required
    $('.product_video_registration_vimeo').click(function () {
        //debugger;

        $(".product_video_registration_vimeo").fancybox({
            //width: 400,
            //height: 225,

            //width: '80%',
            //height: '80%',
            //href: 'http://player.vimeo.com/video/34792993?api=1&title=0&byline=0&autoplay=1&player_id=player1', //?title=0&amp;byline=0&amp;portrait=0
            //src: 'http://player.vimeo.com/video/34792993?title=0&byline=0&autoplay=1&api=1&player_id=player1', //?title=0&amp;byline=0&amp;portrait=0
            content: '<iframe id="player1" src="http://player.vimeo.com/video/34792993?api=1&player_id=player1" width="400" height="225" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>',
            //content: '<iframe id="player1"></iframe>',
            type: 'iframe',
            fitToView: false,
            padding: 2,
            'autostart': 'true',
            'width': '100%',
            /*'height': '100%',*/
            'aspectratio': "4:3",
            'controlbar.position': 'bottom',
            'youtube.quality': 'highres',

            //            helpers: {
            //                media: {

            //                }
            //            },

            // events
            beforeShow: function () {
                //debugger;

                finished = false;

                var iframe = $('#player1')[0];
                var player = $f(iframe);

                // When the player is ready, add listeners for pause, finish, and playProgress
                player.addEvent('ready', function () {
                    player.addEvent('ready', onReady);
                    player.addEvent('play', onPlay);
                    player.addEvent('pause', onPause);
                    player.addEvent('finish', onFinish);
                    player.addEvent('playProgress', onPlayProgress);
                });
            },

            afterClose: function () {

                $('#player1').remove();
            }
        });

    });

    function onReady(playerId) {
        //alert('player is ready!');
    }

    function onPlay(playerId) {
        //alert('player is playing!');
    }

    function onPause(playerId) {
        //alert('player is on pause!');
    }

    function onFinish(playerId) {
        //alert('player is finished playing!');
    }

    var finished = false;

    function onPlayProgress(data, id) {
        if (data.seconds > 203 && !finished) {
            finished = true;
            alert('finished');
        }
    }

})

