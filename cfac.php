<!doctype html>
<html lang="en">
  <head>
  	<title>Academic | Course Faculty</title>
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
          <h2 class="mb-4">My Course Faculties</h2>
          </div>
        </nav>
    
    <?php
        // echo "yyyyyyyyyy";
        $con = mysqli_connect('localhost','root','','dswProject');
        $res = mysqli_query($con , "select enroll from logsession order by srno desc limit 1;");
        while ($loged_user = mysqli_fetch_array($res)){
          // echo $loged_user['enroll'];
          $sq = mysqli_query($con , "select bid from branch where enroll=$loged_user[enroll];");
          while ($branch_id = mysqli_fetch_array($sq)){
            // echo $branch_id['bid'];
            echo "<table>";
            echo "<tr>";
            echo "<th>Course Name</th>";
            echo "<th>Faculty Registered</th>";
            echo "</tr>";
            $sq2 = mysqli_query($con , "select cname,faculty from faculty where bid=$branch_id[bid];");
            while ($res2 = mysqli_fetch_array($sq2)){
              echo "<tr>";
              echo "<td>$res2[cname]</td>";
              echo "<td>$res2[faculty]</td>";
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