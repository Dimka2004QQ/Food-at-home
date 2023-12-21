<?php
    $email = filter_var(trim($_POST['email']),
    FILTER_SANITIZE_STRING);
    $phone = filter_var(trim($_POST['phone']),
    FILTER_SANITIZE_STRING);
    $name = filter_var(trim($_POST['name']),
    FILTER_SANITIZE_STRING);
    $massage = filter_var(trim($_POST['massage']),
    FILTER_SANITIZE_STRING);

    $mysql = new mysqli('localhost','root','','food-at-house');
    $mysql->query("INSERT INTO form (email, phone, name, massage) 
    VALUES('$email','$phone', '$name', '$massage')");
    $mysql->close();

    header("Location: ../index.html");
    die();

?>