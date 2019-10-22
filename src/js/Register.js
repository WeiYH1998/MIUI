/* 监听页面加载 */
$(() => {
    let phone = "";
    /* 001-给输入框添加失去焦点事件   失去焦点时判断是否为空或者格式是否正确 */
    $(".mobile").on("blur",function(){
        let phoneReg = /^1[3-9]\d{9}$/;
        /* 因为前面区号  反向截取数据  即为输入的电话号码 */
        phone = $(".mobile").val().trim().substr(length - 11)
        if (!phone) {
            $(".hint").text("手机号码不能为空！").css("color", "red");
            $(this).css("border", "1px solid red");
            /* 获得焦点并输入框的内容发生变化时把提示信息删除 */
            $(this).on("input", function () {
                $(".hint").text("")
                $(this).css("border", "");

            })
            return;
        } else {
            if (phoneReg.test(phone)) {
                // $(".hint").text("手机号码正确").css("color", "green");

                
            } else {
                $(".hint").text("手机号码格式错误").css("color", "red");
                $(this).css("border", "1px solid red");
                $(this).on("input", function () {
                     $(".hint").text("")
                      $(this).css("border", "");
                })
                return;
            }
        }
    })


    /* 002-点击注册按钮时发送请求  查询数据库用户是否存在  已经存在的话就弹框提示 “该手机号码已被注册！”   如果不存在的话就保存数据到数据库  并跳转到登录页面*/
    $(".submit").click(() => {
        // console.log(phone);
        // $(".mobile").trigger("blur");
         if (!phone) {
             $(".hint").text("手机号码不能为空！").css("color", "red");
             $(".mobile").css("border", "1px solid red");
             /* 获得焦点并输入框的内容发生变化时把提示信息删除 */
             $(this).on("input", function () {
                 $(".hint").text("")
                 $(".mobile").css("border", "");
             })
             return;
         }
        
         else {
              if (/^1[3-9]\d{9}$/.test(phone)) {
                   /* 发送请求给服务器：注册 */
                   $.ajax({
                       type: "post",
                       url: "http://127.0.0.1/H5_1910/MIUI/src/server/Register.php",
                       data: `phone=${phone}`,
                       dataType: "json",
                       success: function (response) {
                           console.log(response);

                           if (response.status == "ok") {
                               /*  跳转到首页 */
                               window.location.href = "http://127.0.0.1/H5_1910/MIUI/src/html/Login.html";
                           } else {
                               /* 注册失败 */
                               alert(response.msg);
                           }

                       }
                   });

              } else {
                  $(".hint").text("手机号码格式错误").css("color", "red");
                  $(this).css("border", "1px solid red");
                  $(this).on("input", function () {
                      $(".hint").text("")
                      $(this).css("border", "");
                  })
                  return;
              }
            
         }
            
        
        
      
       })
        
})
