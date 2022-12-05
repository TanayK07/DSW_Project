<!doctype html>
<html lang="en">
  <head>
  	<title>Academic | GradeSheet</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/style.css">
  </head>
  <body>
		
		<div class="wrapper d-flex align-items-stretch">
			<nav id="sidebar">
				<div class="p-4 pt-5">
		  		<a href="#" class="img logo rounded-circle mb-5" style="background-image: url(images/new.jpg);"></a>
	          <ul class="list-unstyled components mb-5">
	            <li>
	            <a href="home.html" aria-expanded="false">Home</a>
	            </li>
              <li class="active">
              <a href="acad.html" aria-expanded="false">Academic</a>
              </li>
              <li>
              <a href="nonacad.html" aria-expanded="false">Non-Academic</a>
              </li>
              <li>
                <a href="login.html" aria-expanded="false">Sign Out</a>
                </li>
            </ul>

	      </div>
    	</nav>

      <!-- Page Content  -->
      <div id="content" class="p-4 p-md-5">

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="container-fluid">
            <button type="button" id="sidebarCollapse" class="btn btn-primary">
              <i class="fa fa-bars"></i>
            </button>
          <h2 class="mb-4">GradeSheet</h2>
          </div>
        </nav>
        
        <?php
        $con = mysqli_connect('localhost','root','','dswProject');
        $res = mysqli_query($con , "select enroll from logsession order by srno desc limit 1;");
        while ($loged_user = mysqli_fetch_array($res)){
          // echo $loged_user['enroll'];
            echo "<table>";
            echo "<tr>";
            echo "<th>Semester</th>";
            echo "<th>SGPA</th>";
            echo "<th>CGPA</th>";
            echo "</tr>";
            $sq2 = mysqli_query($con , "select * from grade where enroll=$loged_user[enroll] order by semester;");
            while ($res2 = mysqli_fetch_array($sq2)){
              echo "<tr>";
              echo "<td>$res2[semester]</td>";
              echo "<td>$res2[sgpa]</td>";
              echo "<td>$res2[cgpa]</td>";
              echo "</tr>";
            }
            echo "</th>";
            echo "</table>";

        }
      ?>
    <script src="js/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/home.js"></script>
  </body>
</html>