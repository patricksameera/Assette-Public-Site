///////////////////////////////////////////////////////
//********** Assette Public Site           **********//
//********** Assette © 2013                **********//
//********** Developed by Sameera Jayalath **********//
///////////////////////////////////////////////////////

$(document).ready(function () {
    //debugger;

    var videokey = getQueryStringParameterByName('videokey');
    videokey = "sFfgPcTKG2E";

    // setting up jw player
    jwplayer("video_container").setup({

        // jw player properties
        //'image': 'http://content.bitsontherun.com/thumbs/nPripu9l-480.jpg',
        'flashplayer': "../jwplayer/jwplayer.flash.swf",
        //'file': "http://www.youtube.com/watch?v=sFfgPcTKG2E",
        //'file': "http://www.youtube.com/watch?v=" + videokey, // youtube
        'file': 'http://player.vimeo.com/external/34892977.hd.mp4?s=00f35326b807630eca233d4cb420ba22', // vimeo
        'autostart': 'true',
        /*'width': '100%',
        'height': '100%',*/
        'width': '800',
        'height': '600',
        /*'aspectratio': "4:3",*/
        'controlbar.position': 'bottom',
        'youtube.quality': 'highres',

        // jw player events
        events: {
            onComplete: function () {
                showUpShareIcons();
            }
        }

    });

    jwplayer().onTime(
function (object) {
    //    if (object.position > object.duration - 1) {
    //        this.pause();
    //    }
    if (object.position > 5) {
        //debugger;
        this.pause();
        showUpShareIcons();
    }
}
);

    function showUpShareIcons() {
        //debugger;
        var position = $("#video_container").offset();

        var video_width = $('#video_container').width();
        var video_height = $('#video_container').height();

        $(".share_section").slideDown('slow');

        var x = position.left + video_width / 3 + 50;
        var y = position.top + video_height - 85;

        $(".share_section").css("left", '38%');
        $(".share_section").css("top", y);
    }

    function getQueryStringParameterByName(name) {
        name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
        return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }

})

