$(() => {
    
        /* 发请求获取购物车中商品的数量 */
        $.ajax({
            url: "http://127.0.0.1/H5_1910/MIUI/src/suning/server/getTotalCount.php",
            dataType: "json",
            success: function ({
                total
            }) {
                // console.log(total);
                $(".cart_total").text(total);
            }
        });

  
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
                     url: "../server/data.json",
                     dataType: "json",
                     success: function (data) {
                        //  console.log(data);
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
    

/* 点击×时把立即登录模块收起 */
    // console.log($(".close"));
    $(".close").click(function(){
        $(".close").parent().slideUp(1000)
     })
   
    
     /* 获取从列表页传递过来的信息 */
    let parameter = decodeURI(window.location.search.slice(1))

    /* 0: "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/e1e64dcb69a2f8fdc95d8399c23ce400.jpg?w=1212"
    1: "h=716"
    2: "小米无线充电宝 10000mAh"
    3: "迄今为止小米最强充电宝 "
    4: "149元" */
    
    /* 切割 */
     let data = parameter.split("&");
    
/* 设置相对应的内容 */
    $("#pic")[0].src = data[0];
    $("#pic1")[0].src = data[0];
    $(".message-name").text(data[2]);
    $(".sale-desc").text(data[3]);
    $(".pro-list-price").text(data[4]);
    $(".pro-price").text(data[4]);
    $("#pro-price").text(data[4]);
    $("#mi").text(data[2]);
    $("#pro-li").text(data[2]);
     $("#Color").text(data[2])
    $("#Version")[0].src=data[0]

       /* 实现点击添加商品到购物车的功能 */
       $(".btn-primary").on("click",function () {
       /* 获取当前商品的ID */
           let good_id = data[5];
           
           /* 发送网络请求把当前数据添加到购物车表中 */
           /* 数据库表 cart_id  good_id  num isChecked */
           /* 添加数据： */
           /* 删除数据： */
           /* 更新数据： */
           $.ajax({
               url: "http://127.0.0.1/H5_1910/MIUI/src/suning/server/cart.php",
               data: {
                   type: "add",
                   good_id: good_id
               },
               dataType: "json",
               success: function (response) {
                   if (response.status == "success") {
                       $(".cart_total").text($(".cart_total").text() * 1 + 1);
                   }
               }
           });
       })
    

/* 点击购物车时跳转到购物车页面 */
    $(".cart-tip").click(()=> {
        window.location.href=("../html/carts.html")
        
    })
    
})