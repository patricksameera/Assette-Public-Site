//http://sixrevisions.com/tutorials/javascript_tutorial/create-a-slick-and-accessible-slideshow-using-jquery/

$(document).ready(function () {

    var currentPosition = 0;
    var slideWidth = 360;
    var slides = $('.slide');
    var numberOfSlides = slides.length;

    // Remove scrollbar in JS
    $('#slidesContainer').css('overflow', 'hidden');

    // Wrap all .slides with #slideInner div
    slides.wrapAll('<div id="slideInner"></div>').css({ 'float': 'left', 'width': slideWidth });

    // Set #slideInner width equal to total width of all slides
    $('#slideInner').css('width', slideWidth * numberOfSlides);

    // Insert left and right arrow controls in the DOM
    $('#slideshow')
    .prepend('<span class="control control_left" id="leftControl">Move left</span>')
    .append('<span class="control control_right" id="rightControl">Move right</span>');

    // Hide left arrow control on first load
    manageControls(currentPosition);

    // Create event listeners for .controls clicks
    /*
    $('.control').bind('click', function () {

    currentPosition = ($(this).attr('id') == 'rightControl') ? currentPosition + 1 : currentPosition - 1;

    // Hide / show controls
    manageControls(currentPosition);

    // Move slideInner using margin-left
    $('#slideInner').animate({
    'marginLeft': slideWidth * (-currentPosition)
    });
    }
    */


    // Create event listeners for .controls clicks
    $('.control_left').live("click", function (e) {
        //debugger;

        currentPosition = ($(this).attr('id') == 'rightControl') ? currentPosition + 1 : currentPosition - 1;

        // Hide / show controls
        manageControls(currentPosition);

        // Move slideInner using margin-left
        $('#slideInner').animate({
            'marginLeft': slideWidth * (-currentPosition)
        });

    });

    // Create event listeners for .controls clicks
    $('.control_right').live("click", function (e) {
        //debugger;

        currentPosition = ($(this).attr('id') == 'rightControl') ? currentPosition + 1 : currentPosition - 1;

        // Hide / show controls
        manageControls(currentPosition);

        // Move slideInner using margin-left
        $('#slideInner').animate({
            'marginLeft': slideWidth * (-currentPosition)
        });

    });

    // manageControls: Hides and shows controls depending on currentPosition
    function manageControls(position) {
        //debugger;

        /*
        // enabled navigation
        if (currentPosition == numberOfSlides) {
            currentPosition = 0;
        }

        if (currentPosition == -1) {
            currentPosition = numberOfSlides - 1;
        }
        */


        // disabled navigation
        // Hide left arrow if position is first slide
        if (position == 0) {
            //$('#leftControl').hide()
            $('#leftControl').removeClass('control_left');
        }
        else {
            //$('#leftControl').show()
            $('#leftControl').addClass('control_left');
        }

        // Hide right arrow if position is last slide
        if (position == numberOfSlides - 1) {
            //$('#rightControl').hide()
            $('#rightControl').removeClass('control_right');
        }
        else {
            //$('#rightControl').show()
            $('#rightControl').addClass('control_right');
        }
        
    }
});