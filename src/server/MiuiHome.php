<?php
/* 发送请求获取页面数据 */
    # 01-先连接数据库
$db = mysqli_connect("127.0.0.1","root","","miui");
# 02-查询获取数据库所有的数据
$sql = "SELECT * FROM data_classify";
$result = mysqli_query($db, $sql);
// print_r($result)
$data = mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($data,true);
?>
