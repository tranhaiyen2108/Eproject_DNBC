$(document).ready(function() {
    $(window).scroll(function(event) {
        var pos_body = $('html,body').scrollTop();
        var pos_str1 = $('.str-content .str1').offset().top;
        var pos_str2 = $('.str-content .str2').offset().top;
        var pos_str3 = $('.str-content .str3').offset().top;
        var pos_str4 = $('.str-content .str4').offset().top;
        console.log(pos_str2);
        if(pos_body>pos_str1-600){
            $('.str-content .str1').addClass('animate__backInRight animate__animated');
        }
        if(pos_body>pos_str2-600){
            $('.str-content .str2').addClass('animate__backInRight animate__animated');
        }
        if(pos_body>pos_str3-600){
            $('.str-content .str3').addClass('animate__backInRight animate__animated');
        }
        if(pos_body>pos_str4-600){
            $('.str-content .str4').addClass('animate__backInRight animate__animated');
        }
    });
});