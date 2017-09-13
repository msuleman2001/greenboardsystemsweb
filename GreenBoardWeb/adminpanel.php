<?php
include("admin_header.php");
session_start();
include "connection.php";
  
echo "<br><br><br><br><br><br>";
echo "<h1 style='padding-left:60px; padding-top:-110px; margin-top:-40px; color:#BAD8C2;'>WelCome &nbsp;
 "."<span style='color:#F4CBC5;'>". $_SESSION['username']."</span></h1>";
 ?>