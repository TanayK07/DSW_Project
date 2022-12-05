<!doctype html>
<html lang="en">
  <head>
  	<title>Academic | TimeTable</title>
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
          <h2 class="mb-4">TimeTable</h2>
          </div>
        </nav>

      <?php
        $con = mysqli_connect('localhost','root','','dswProject');
        $res = mysqli_query($con , "select enroll from logsession order by srno desc limit 1;");
        while ($loged_user = mysqli_fetch_array($res)){
          $sq = mysqli_query($con , "select bid from branch where enroll=$loged_user[enroll];");
          while ($branch_id = mysqli_fetch_array($sq)){
            echo "<table>";
            echo "<tr>";
            echo "<th>Time</th>";
            echo "<th>Monday</th>";
            echo "<th>Tuesday</th>";
            echo "<th>Wednesday</th>";
            echo "<th>Thursday</th>";
            echo "<th>Friday</th>";
            echo "</tr>";
            $sq2 = mysqli_query($con , "select time, mon, tue, wed, thurs, fri from timetable where bid=$branch_id[bid] order by time;");
            while ($res2 = mysqli_fetch_array($sq2)){
              echo "<tr>";
              echo "<td>$res2[time]</td>";
              echo "<td>$res2[mon]</td>";
              echo "<td>$res2[tue]</td>";
              echo "<td>$res2[wed]</td>";
              echo "<td>$res2[thurs]</td>";
              echo "<td>$res2[fri]</td>";
              echo "</tr>";
            }
            echo "</th>";
            echo "</table>";

          }

        }
    ?>

    <script src="js/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/home.js"></script>
  </body>
</html>