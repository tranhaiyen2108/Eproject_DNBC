$(document).ready(function() {
    $(window).scroll(function(event) {
        var pos_body = $('html,body').scrollTop();
        var pos_content = $('html,.ArticlePage_container').height();
        if(pos_body>pos_content-1000){
            $('.trendingsl').addClass('stop-slide');
        }
        else {
            $('.trendingsl').removeClass('stop-slide');
        }
    });
    $('.back-to-top').click(function(event) {
        $('html,body').animate({scrollTop: 0},1400);
    });
});