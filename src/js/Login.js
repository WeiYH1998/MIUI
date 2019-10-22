$(() => {
    /* 001-列表的切换 */
    $(".text").click(function () {
        $(this).css("color", "#f56600").siblings().css("color", "#666");
        /* 保存当前标签的索引  */
        let index = $(".text").index(this);
        $(".dl").children().eq(index).css("display", "block").siblings().css("display", "none");
    })

    /* 002- 获取短信验证码*/
    let randomNumber;

    function getRandom(min, max) {
        return parseInt(Math.random() * (max - min + 1)) + min
    }
    randomNumber = 999;//测试用的验证码
    $(".note").click(function (event) {
        event.preventDefault();

        $(".input-note").trigger("keyup");
        let flag = $(".phone").hasClass("form-group-error");
        /* 如果flag的值是flase,那么我们就调用第三方平台发请求 发短信 */
        if (flag) return;
        // randomNumber = getRandom(1000, 9999);

        $.ajax({
            type: 'post',
            url: 'http://route.showapi.com/28-1',
            dataType: 'json',
            data: {
                "showapi_appid": '91032', //这里需要改成自己的appid
                "showapi_sign": 'd57b19c8d2d44aef94aee464768a38d8', //这里需要改成自己的应用的密钥secret
                "mobile": $("#phoneID").val(),
                "content": `{"name":"韦云洪","code":${randomNumber},"minute":"3","comName":"野猪佩奇集团"}`,
                "tNum": "T150606060601",
            },
            success: (result) => console.log(result)
        });
    });



    /* 003-点击注册按钮时检查输入的手机号码格式是否正确   手机号码正确并且验证码也正确就发送请求到服务器查询手机号码是否存在 */
    $(".register").click(function (event) {
        event.preventDefault();
        /* [1]判断输入的手机号码格式是否正确 */
        let phone = $(".input-phone").val().trim();
        if (!phone) {
            $(".note-text").text("请输入手机号").css("color", "#f56600");
            $(".A").css("border", "1px solid red");
            /* 当输入框的内容发生变化时把提示信息删除 */
            $(".input-phone").on("input", function () {
                $(".note-text").text("")
                $(".A").css("border", "");

            })
            return;
        } else {
            if (!(/^1[3-9]\d{9}$/.test(phone))) {
                $(".note-text").text("手机号格式不正确").css("color", "#f56600");
                $(".A").css("border", "1px solid red");
                $(".input-phone").on("input", function () {
                    $(".note-text").text("")
                    $(".A").css("border", "");
                })
                return;
            } else {
                /* [2] 如果手机号码格式正确  判断是否已经输入短信验证码 */
                if ($(".input-note").val() == 0) {
                    $(".note-text").text("请输入验证码").css("color", "#f56600");
                    $(".B").css("border", "1px solid red");
                    $(".input-note").on("input", function () {
                        $(".note-text").text("")
                        $(".B").css("border", "");
                    })

                } else {
                    if ($(".input-note").val() == randomNumber + "") {
                        $.ajax({
                            type: "post",
                            url: "http://127.0.0.1/H5_1910/MIUI/src/server/Login.php",
                            data: `phone=${phone}`,
                            dataType: "json",
                            success: function (response) {
                                /* 注册成功 */
                                // console.log(response, response.status);
                                if (response.status == "success") {
                                    /* 如果手机号码存在 并且输入的验证码正确 */
                                    /*  跳转到首页 */
                                    window.location.href = "http://127.0.0.1/H5_1910/MIUI/src/html/MiuiHome.html";

                                } else {
                                    /* 登录失败 */
                                    alert(response.msg)
                                }

                            }
                        });

                    } else {
                        alert("验证码不正确")
                    }


                }
            }
        }

    })
})