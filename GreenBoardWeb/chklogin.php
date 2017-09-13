<?php
   session_start();
     include "connection.php";
	 
     
	 
	 echo "<br><br><br>";
	 echo "<h2 style='color:#2D6247'>Welcome Admin</h2>";
	    

     $username=$_POST['username'];
	 $password=$_POST['password'];
	 $sql=mysql_query("SELECT * FROM admin_info WHERE username='$username' AND password='$password'");
	 $row=mysql_fetch_array($sql);
	 if(mysql_num_rows($sql) >0)
	 {
		
		$_SESSION['ISValid']=true; 
		$_SESSION['id']=$row['id'];
		$_SESSION['username']=$row['username'];
		$_SESSION['password']=$row['password'];
		header("Location:adminpanel.php");
	 
	 }
  else{
	
	  header("Location:admin_login.php");
	  echo"<span style='color:red'>Invalid Username OR password!</span>";
	}


?>

