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

    /* 封装方法  提取相对应的数据 */
    function render(data, name) {
        let arr = data.map(item => {
            if (item.name == name) {
                return `
                <li>
                    <img src=${item.src} class="top-pice">
                    <div class="title">${item.title}</div>
                    <p class="price">${item.price}</p>
                </li>
                `
            }
        }).join("");
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
            // data: "data",
            dataType: "json",
            success: function (data) {
                html = render(data, `${listText}`);
                $(".product-wrap").html(html);
            }
        });
        $(this).css("color", "#ff6700").siblings().css("color", "#333");
        listText = $(this).text();
        $(".product-wrap").stop().slideToggle(500);
    });


    /* 给搜索框添加交互效果：点击时显示下拉搜索框 */
    $(".search-input").click(function () {
        $(this).css("border-right", "1px solid #ff6700")
        $(".search-wrap").css("border", "1px solid #ff6700");
        $(".input-none").stop().slideDown().css("display", "block");

        $(".search-input").blur(() => {
            $(this).css("border-right", "1px solid #999")
            $(".search-wrap").css("border", "1px solid #999");
            $(".input-none").css("display", "none");
        })

    })



    /* banner底部列表发送请求获取数据 */
    $.ajax({
        type: "post",
        url: "http://127.0.0.1/H5_1910/MIUI/src/server/banner.php",
        dataType: "json",
        success: function (response) {
            // console.log(response[0]);
            
            let html = renderNav(response[0]);
            $(".banner-nav-wrap").append($("<div class=`banner-nav-left`></div>").html(html))
            let html2 = renderNav_B(response[0]);
            $(".banner-nav-wrap").append($("<div class=`banner-nav-right`></div>").html(html2))

        }
    });

    /* 封装方法：渲染banner底部左边导航栏 */
    function renderNav(data) {
        arr = data.data1.replace(/^\"|\"$/g, '')
        dataA = JSON.parse(arr)
        let arrB = dataA.map(function (ele) {
            return `
            <li><a href="${ele.href}">
                    <img src="${ele.src}" alt="">
                    ${ele.name}
            </a></li>
           `
        }).join("");
        let html = `
                <div class="banner-nav-left">
                    <ul class="home-channel-list">
                       ${arrB}
                    </ul>
                </div>`
        return html;
    }

/* 封装方法：渲染banner底部右边导航栏 */
    function renderNav_B(data) {
        let arr = data.data2.replace(/^\"|\"$/g, '');
         dataB = JSON.parse(arr)
        let arr2 = dataB.map(ele => {
            return `<ul class="home-promo-list"> 
                    <li><a href=""><img src="${ele.src}"> </a></li>
                    </ul> `
        }).join("");
        return arr2;
    }


/* 小米闪购发送请求获取数据 */
    $.ajax({
        type: "post",
        url: "http://127.0.0.1/H5_1910/MIUI/src/server/dataList.php",
        // data: "data",
        dataType: "json",
        success: function (response) {
            let html = renderMiSG(response);
            $(".box-list").append( $(".box-list")).html(html)
           
            
        }
    });


     var date = new Date("2019-10-20");
     //003-设置定时器
     var initial = setInterval(function () {
         // 获取当前时间
         var date2 = new Date();
         var date3 = date - date2;
         //获取日期中的具体信息 
         var d = tool(parseInt(date3 / 1000 / 60 / 60 / 24)); //天
         var h = tool(parseInt(date3 / 1000 / 60 / 60 % 24)); //时
         var m = tool(parseInt(date3 / 1000 / 60 % 60)); //分
         var s = tool(parseInt(date3 / 1000 % 60)); //秒
         $(".timer").text(h)
         $(".minute").text(m)
         $(".second").text(s)
         if (date3 < 0) {
             clearInterval(initial); //当时间戳小于0时就清除定时器
           
         }
     }, 1000);

     // 当数值是个位数时 在前面加个0
     function tool(num) {
         return num < 10 ? "0" + num : num;
     }
    function tool(num) {
        return num < 10 ? "0" + num : num;
    }
/* 封装方法：渲染小米闪购列表轮播效果 */
    function renderMiSG(data) {
        let obj = data.map(ele => {
            return `
                <li>
                    <a href="${ele.href}">
                    <img src="${ele.src}" alt="">
                    <h3 class="title">${ele.title}</h3>
                    <p class="desc">${ele.desc}</p>
                    <p class="price">
                        <span>${ele.Span}</span>元
                        <del>${ele.del}</del>
                    </p>
                 </a>
                </li>
            `
        }).join("");
        let html = `<ul class ="box-list-li">${obj}</ul>`
        return html;
    }


/* 发送请求获取banner数据 */
        $.ajax({
            type: "post",
            url: "http://127.0.0.1/H5_1910/MIUI/src/server/banner1.php",
            dataType: "json",
            success: function (data) {
                // let i = 0;
                // let html = renderBannerA(data[0], i);
                $(".B1").append(renderBannerA(data[0], 0));
                $(".B2").append(renderBannerA(data[0], 1))
                $(".B3").append(renderBannerA(data[0], 2))
                $(".B4").append(renderBannerA(data[0], 3))
                $(".B5").append(renderBannerA(data[0], 4))
                
                
            }
        });

/* 第一个banner图 */
    function renderBannerA(data, i) {
        var key = "data" + (i + 1);
        let arr = data[key].replace(/^\"|\"$/g, '');
        dataB = JSON.parse(arr);
        let html = dataB.map(ele => {
            return `
                <a href=${ele.href}>
                 <img src=${ele.src}>    
                </a>
            `
        }).join("");
        let dome = ` <div>${html}</idv>`
        return dome;
    }

/* 获取手机列表数据 */
    $.ajax({
        type: "post",
        url: "http://127.0.0.1/H5_1910/MIUI/src/server/data_list.php",
        dataType: "json",
        success: function (data) {
            let html = renderPhoneList(data);
            $(".All-list-right").append(html);
            
        }
    });


    /* 封装方法：渲染手机右边列表 */
    function renderPhoneList(data) {
        let html = data.map(ele => {
            return `
                <li class="brick-item brick-item-m-2 over">
                    <a href = "${ele.href}" >
                     <div class="figure-img">
                     <img width="160" height="160" alt="" src=${ele.src}>
                     </div>
                        <h3 class="Title"> ${ele.title}</h3>
                        <p class="Desc">${ele.p}</p>
                        <p class="price">
                            <span>${ele.price}</span>元<span>起</span>
                            <del>${ele.del}</del>
                        </p>
                     </a>
                </li>
            `
        }).join("");
        let obj = `<ul>${html}</ul>`;
        return obj;
        
    }

/* 获取主体列表数据 */
    $.getJSON("../server/main.json", (data) => {
        // console.log(data[1]);
        
         let appliances = new Manager(data[0]);
         appliances.init();
        //  let a = new Manager(data[0]);
        //  a.init();


        // data.forEach(ele => {
        //     var manger = new Manager(ele);
        //     manger.init();
        // })
        
    })

    

    /* 封装方法：渲染网页主体列表 */
    class Manager{
        constructor(data) {
            this.data = data;
        }
        init() {
            this.renderUI();
            this.eventHandler()
        }
        renderUI(){
            $(".Nav-title").html(this.renderHeader());
            $(".Nav-list-left").html(this.renderMainLeft());
            $(".Nav-list-right").html(this.renderMainRight());
            
        }
        /* 渲染表头 */
        renderHeader() {
            let liHtml = this.data.tabs.map((ele,i)=> {
                return ` <span class="sort ${i==0?'cur':''}">${ele}</span>`
            }).join("");
            
            let html = `
                <div class="Nav-title">
                    <h3 class="list-title Nav-title-type">
                        ${this.data.name}</h3>
                    <div class="Nav-text">
                        ${liHtml}
                    </div>
                </div>
            `
            return html;
        }
        /* 渲染左边列表 */
        renderMainLeft() {
            let liHtml = this.data.list_left.map(ele => {
                return `
                <li><a href="">
                    <img src="${ele.src}">
                </a></li>`
            }).join("");
            let html = `<ul>${liHtml}</ul>`
            return html
        }
    /* 渲染右边列表 */
        renderMainRight() {
            let res = "";
            for (let i = 0, len = this.data.list_right.length; i < len; i++){
                let liHtml = this.data.list_right[i].map(ele => {
                    return `
                     <li class="brick-item brick-item-m-2 over">
                                <a href=""><img src="" alt=""></a>
                                    <div class="figure-img">
                                        <img width="160" height="160" alt="" src="${ele.src}">
                                    </div>
                                    <h3 class="Title">${ele.h3}</h3>
                                    <p class="Desc">${ele.desc}</p>
                                    <p class="price">
                                        <span>${ele.priceA}</span>元<span>起</span>
                                        <del>${ele.priceB}</del>
                                    </p>
                                </a>
                            </li>
                    `
                }).join("");
              
                res += ` <div class="aa Nav-list-current ${i==0? 'avert':''}">
                          <ul  class="">${liHtml}</ul>
                         </div> `
            }
            return res;
        }
        /* 设置切换  显示相对应的列表 */
        eventHandler() {
            // var self = this;
        /* 001-给tab标签添加点击事件 */
            $(".sort").click(function () {
                /* 002-设置标签的选中状态 */
                $(this).css("color","#ff6700").siblings().css("color"," #333")
                let index = $(this).index();
                /* 显示相对应列表 */
                $(".aa").eq(index).css("display", "block").siblings().css("display", "none");
            })
        }
}











})