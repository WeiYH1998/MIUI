$(()=>{
     /* 给下载app标签添加动画 */
     $(".app").hover(function () {
             $(this).children(".downloadApp").stop().slideToggle(300)
         }

     )

     /* 给购物车标签添加动画 */
     $(".top-car").hover(function () {
         $(this).css("background", "#fff");
         $(this).children().css("color", "orangered");
         $(this).children("a").children(".Car").stop().slideDown(300);
         }

         ,
         function () {
             $(this).css("background", "");
             $(this).children().css("color", "");
             $(this).children("a").children(".Car").stop().slideUp(300);
         }

     )

     /* 封装方法  提取相对应的数据 */
     function render(data, name) {
         let arr = data.map(item => {
                 if (item.name == name) {
                     return ` <li> <img src=${item.src}
                 class="top-pice"> <div class="title">${item.title}
                 </div> <p class="price">${item.price}
                 </p> </li> `
                 }
             }

         ).join("");

         let html = ` <ul class="list">${arr}</ul>`
         return html;
     }

     /* 给标题添加移入事件  显示与其相对应的列表 */
     $(".list-item:lt(7)").hover(function () {
             let listText;
             /* 通过数据渲染标题 */
             $.ajax({
                     type: "post",
                     url: "http://127.0.0.1/H5_1910/MIUI/src/server/MiuiHome.php",
                     dataType: "json",
                 success: function (data) {
                         html = render(data, `${listText}`);
                         $(".product-wrap").html(html);
                     }
                 }

             );
             $(this).css("color", "#ff6700").siblings().css("color", "#333");
             listText = $(this).text();
             $(".product-wrap").stop().slideToggle(500);
         }

     );


     /* 给搜索框添加交互效果：点击时显示下拉搜索框 */
     $(".search-input").click(function () {
         $(this).css("border-right", "1px solid #ff6700");
         $(".search-wrap").css("border", "1px solid #ff6700");
             $(".input-none").stop().slideDown().css("display", "block");
             $(".search-input").blur(() => {
                 $(this).css("border-right", "1px solid #999");
                 $(".search-wrap").css("border", "1px solid #999");
                     $(".input-none").css("display", "none");
                 }

             )
         }

    )




    /* 发送请求获取商品列表信息 */
    $.ajax({
        type: "post",
        url: "http://127.0.0.1/H5_1910/MIUI/src/server/ListPages.php",
        data: "data",
        success: function (data) {
             $(".productList-wrap").html(renderList(data));
            
        }
    });
    function renderList(data) {
        let obj = JSON.parse(data)
        
    let liHtml = obj.map(ele => {
        return `
        <div class = "productList-list" id=${ele.good_id}>
            <div class = "list-Left" >
                <div class="list-pic">
                <a href=""><img src="${ele.src}"alt=""></a>
                </div>
                <h3 class="list-title">${ele.title}</h3>
                <p class="list-brief">${ele.name}</p>
                <p class="list-price"><strong>${ele.price}</strong><span>元</span></p>
            </div>
        </div>
        `
    }).join("");
        // console.log(liHtml);
        
    return liHtml;
};


/* 点击某个商品时拿到该商品的信息 */
    $(".productList-wrap").on("click",".productList-list",function () {
        let id = $(this)[0].id
        let href = $(this).children(".list-Left").children("div").children("a")[0].href;
        let src = $(this).children(".list-Left").children("div").children("a").children("img")[0].src;
        let name = $(this).children(".list-Left").children("h3").text();
        let title = $(this).children(".list-Left").children(".list-brief").text();
        let price = $(this).children(".list-Left").children(".list-price").text();
        
        $(this).children(".list-Left").children("div").children("a")[0].href = "http://127.0.0.1/H5_1910/MIUI/src/html/Commodity.html?"+src+"&"+name+"&"+title+"&"+price+"&"+id;
        $(".productList-wrap").children(".list-Left").children
        console.log(id);
        
    })
    
    
    
})



