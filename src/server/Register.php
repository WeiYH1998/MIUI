<?php
//  $db=mysqli_connect("127.0.0.1","root","","user")or die("连接失败：".mysqli_error());echo "连接成功";
/* 001-获取用户提交的参数 */
$phone=$_REQUEST["phone"];

/* 002-通过PHP代码来操作数据库 */
    #[1]先连接数据库
    $db=mysqli_connect("127.0.0.1","root","","miui");
   
    #[2]检查当前的手机号码是否已经被注册，如果已经被注册，返回提示错误的信息
    $sql = "SELECT * FROM phone WHERE phone = '$phone'";
    #执行查询语句
    $result = mysqli_query($db, $sql);
    //  print_r($result);
    $response = array("status"=>"","msg"=>"");
    if(mysqli_num_rows($result) == 1){
        /* 该手机号码已被注册！！ */
        $response["status"]="error";
        $response["msg"]="该手机号码已经被注册！";
        echo json_encode($response,true);
    }
    /* 如果不存在就执行插入语句 */
    else{
        $insertSql="INSERT INTO `phone` ( `id`,`phone`) VALUES (NULL,'$phone')";
        $res = mysqli_query($db, $insertSql);
        $response["status"] = "ok";
        $response["msg"] = " 恭喜您注册成功！";
        echo json_encode($response, true);
    }
?>