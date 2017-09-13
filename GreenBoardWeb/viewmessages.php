
<?php
  session_start();
  include "admin_header.php";
  include "connection.php";
  
  if(!isset($_SESSION['username']))
  {
	  header("Location:admin_login.php");
  }
  else
	  {
	  echo"welcome to admin Panel";
	 
	  }
  echo"<br /><br /><br />";
  
  
 ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>GreenBoard</title>
</head>

<body>

<div class="container-fluid">
<div class="row">

<table class="table-condensed table-responsive table-bordered"  style="border:#000 solid 1px;">
<tr bgcolor="#000000" style="color:#FFF;font-size:18px;">

<th style="width:130px;"><center>Name </center></th>
<th style="width:230px;"><center> Email </center></th>
<th style="width:500px;"><center>Message</center></th>
<th style="width:130px;"><center>Budget</center></th>
<th style="width:230px;"><center>Technonogy Required </center></th>
<th style="width:300px;"><center>File</center></th>


</tr>

<?php
 
     $run=mysql_query("select * from  messages");
	
	  while($row=mysql_fetch_array($run))
	  {
		    $id=$row['id'];
		   $name=$row['name'];  
		   $e_mail= $row['email'];
		   $message= $row['requiredsolution'];
		   $budget=$row['budget']; 
		   $technologyrequired=$row['technologyrequired'];
		   $file=$row['file'];
		   
		  
		    
 echo "
 <tr  style='background-color:#333333; color:white;'>  
 
 <td>$name</td>
 <td> <center>  $e_mail  </center>  </td>
 <td>   $message    </td>
 <td>   $budget    </td>
 <td>   $technologyrequired   </td>
 <td>   $file </td>
  
    
 
  </tr> 
 ";


	  }
	  
	  
	  
	  
	  
	  
?>

</table> <br /><br /><br /><br /><br /><br />

</div>
</div>






</body>

</body>
</html>