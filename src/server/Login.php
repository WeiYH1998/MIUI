<?php

/* 查询手机号码 */
/* 001-先链接数据库 */
$db=mysqli_connect("127.0.0.1","root","","miui");
/* 002-获取提交的电话号码 */
$phone=$_REQUEST["phone"];
/* 003-根据获取的数据去数据库中进行匹配 */
$sql="SELECT * FROM phone WHERE phone=$phone";
$result = mysqli_query($db, $sql);
#[1]先检查数据库是否存在指定的用户名，如果没有那么就返回提示  “该手机号码尚未注册”
if (mysqli_num_rows($result) == 0)
{
  $response["status"] = "error";
  $response["msg"] = "该手机号码尚未注册";
  echo json_encode($response, true);
}else{
#[2]如果存在 并且输入的验证码正确  就提示登录成功  =>跳转到首页
    $response["status"] = "success";
    $response["msg"] = "登录成功";
    echo json_encode($response, true);
}

?>