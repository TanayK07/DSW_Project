<?php
if (isset($_POST['submit'])){
	$con = mysqli_connect('localhost','root','','dswProject');
	if (mysqli_connect_errno()){
		echo "Failure".mysqli_connect_error();
	}
	$euid = $_POST['uid'];
	$epwd = $_POST['pwd'];
	// $sql_q1 = "select count(*) from login_ids where enroll=$euid";
	// $res_q1 = mysqli_query($con,$sql_q1);
	// $x = mysqli_fetch_array($res_q1); 
	// if ($x==0){
	// 	echo "Blank";	
	// }
	// else{
	$res = mysqli_query($con,"select * from login_ids where enroll=$euid");
	while ($row = mysqli_fetch_array($res)){
		if ($row['passwd']==$epwd){
			// echo "ACCESS GRANTED!";
			// open homepage .... home.html
			mysqli_query($con,"insert into logsession(enroll) values($euid);");
			include 'home.html';
		}
		else{
			// echo "ACCESS DENIED";
			echo "<script>alert('Invalid Login Credentials');</script>";
			include "login.html";
		}
	}
	// }	
	mysqli_close($con);	
}
?>