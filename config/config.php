<?php

    

    // if($conn == true){
    //     echo "conn works Fine";
    // }else{
    //     echo "conn err";
    // }

    try{
        // host
        $host  = "localhost";
        // dbname
        $dbname = "blog";
        // user
        $user = "root";
        // password
        $pass= "";

        $conn = new PDO("mysql:host=$host;dbname=$dbname",$user,$pass);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    }catch(PDOException $e){
        echo $e-> getMessage();
    }