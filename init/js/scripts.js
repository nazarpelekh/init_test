$(document).ready(function() {
    'use strict';

    $('.scroll_down').on('click', function () {
        $([document.documentElement, document.body]).animate({
            scrollTop: $('.vehicle').offset().top
        }, 500);
    });

    // ajax posts (vehicle) - filtering
    var post_dropdown_man = $('.filters__dropdown_man'),
        manufacturer_val,
        post_dropdown_class = $('.filters__dropdown_class'),
        class_val,
        button_submit     = $('.filter_button');

    post_dropdown_man.on('change', function () {
        manufacturer_val = $(this).val();
    });

    post_dropdown_class.on('change', function () {
        class_val = $(this).val();
    });

    button_submit.on('click', function () {
        posts_load_filter(1, manufacturer_val ? manufacturer_val : '*', class_val ? class_val : '*');
        $('.load_more_holder').remove();
    });

    // ajax posts (vehicle) - page loading
    $(this).on('click', '.more_posts', function () {
        var pg = $(this).attr('data-href'),
            manufacturer = $(this).attr('data-manufacturer'),
            classes = $(this).attr('data-class');

        posts_load_filter(pg === 1 ? 2 : pg, manufacturer, classes);

        $(this).parent().remove();

        return false;
    });
    
});

// ajax posts (vehicle) loading + filtering
function posts_load_filter(page, manufacturer, classes) {
    'use strict';
    var form = $('.posts_filters form'),
        ajax_content = $('.posts_container');

    $('#show_page').val(page);

    //animation start here
    $.ajax({
        type: 'POST',
        url: $('body').data('a'),
        data: form.serialize() + '&manufacturer='+manufacturer + '&class='+classes,
        success: function (html) {
            if (page !== 1) {
                $('.load_more_holder').remove();
                ajax_content.append(html);
            } else {
                $('.load_more_holder').remove();
                ajax_content.html(html);
            }
        }
    });

    return false;
}



$(window).on('load', function() {
    'use strict';

});



$(window).resizeEnd(function() {
    'use strict';
    
});