/* 监听页面加载 */
$(() => {
    /* 给下载app标签添加动画 */
    $(".app").hover(function () {
        $(this).children(".downloadApp").stop().slideToggle(300)
    })
    /* 给购物车标签添加动画 */
    $(".top-car").hover(function () {
        $(this).css("background", "#fff");
        $(this).children().css("color", "orangered")
        $(this).children("a").children(".Car").stop().slideDown(300);
    }, function () {
        $(this).css("background", "");
        $(this).children().css("color", "");
        $(this).children("a").children(".Car").stop().slideUp(300);
    })

})