<?php
        $conn=mysqli_connect('localhost','root','','projetdb');

        if(!$conn){
            die("failed");
        } else{
            echo"db connected ";
        }
        ?>