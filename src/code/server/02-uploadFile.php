<?php
$path = "./" . $_FILES["fileName"]["name"];
move_uploaded_file($_FILES["fileName"]["tmp_name"], $path);
print_r($_FILES);
?>