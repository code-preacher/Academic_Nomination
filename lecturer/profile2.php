<?php
session_start();
error_reporting(0);
include '../inc/checklogin.php';
check_login();
?>
<?php
include '../inc/config.php';
$p=mysqli_query($con,"select user_id from user_login where user_id='".$_SESSION['user_id']."'");
$p2=mysqli_fetch_array($x);

$x=mysqli_query($con,"select * from lecturer where email='".$_SESSION['user_id']."'");
$xx=mysqli_fetch_array($x);
?>

<!DOCTYPE html>
<html lang="en">

<head>
  
    <!-- important meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Title -->
    <title>STUDENT INFORMATION SYSTEM</title>
    
    <!-- Basic SEO -->
    <meta name="description" content="STUDENT INFORMATION SYSTEM">
    <meta name="keywords" content="STUDENT INFORMATION SYSTEM">

    <!-- Favicon -->
    <link rel="icon" type="img/jpg" href="img/logo.png">
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

    <link href="css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="../fonts/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet">
    <!-- Custom CSS -->


    <link href="css/helper.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:** -->
    <!--[if lt IE 9]>
    <script src="https:**oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https:**oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header fix-sidebar">
    <!-- Preloader - style you can find in spinners.css -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
        </div>
        <!-- Main wrapper  -->
        <div id="main-wrapper">
         <?php
         include "inc/header.php";
         ?>
         <!-- End header header -->
         <!-- Left Sidebar  -->
         <?php
         include "inc/sidebar.php";
         ?>     
         <!-- End Left Sidebar  -->
         <!-- Page wrapper  -->
         <div class="page-wrapper">
            <!-- Bread crumb -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">Dashboard</h3> 

                </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Profile</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div>
            </div>
            <!-- End Bread crumb -->
            <!-- Container fluid  -->
            <div class="container-fluid">
                <!-- Start Page Content -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-title">
                                <h4>Profile</h4>

                                <p>
                                 
                                    <?php echo $_SESSION['pmsg']; ?>
                                    <?php echo $_SESSION['pmsg']=""; ?>
                                </p>

                            </div>
                            <div class="card-body">
                                <div class="basic-form">
                                 <form action="cpass.php" method="POST">

                                    <div class="row">
                                        
                                    <div class="col-md-3">
                                         <div class="form-group">
                                        <p class="text-muted m-b-15 f-s-12">First name :</p>
                                        <input type="text" class="form-control input-rounded"  value="<?php echo $xx['fname']; ?>" disabled="disabled">
                                    </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                        <p class="text-muted m-b-15 f-s-12">Middle name :</p>
                                        <input type="text" class="form-control input-rounded"  value="<?php echo $xx['mname']; ?>" disabled="disabled">
                                    </div>  
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                        <p class="text-muted m-b-15 f-s-12">Surname name :</p>
                                        <input type="text" class="form-control input-rounded"  value="<?php echo $xx['sname']; ?>" disabled="disabled">
                                    </div> 
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                        <p class="text-muted m-b-15 f-s-12">Address :</p>
                                        <input type="text" class="form-control input-rounded"  value="<?php echo $xx['address']; ?>" disabled="disabled">
                                    </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                        <p class="text-muted m-b-15 f-s-12">Phone Number :</p>
                                        <input type="text" class="form-control input-rounded"  value="<?php echo $xx['phone']; ?>" disabled="disabled">
                                    </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                        <p class="text-muted m-b-15 f-s-12">Gender :</p>
                                        <input type="text" class="form-control input-rounded"  value="<?php echo $xx['gender']; ?>" disabled="disabled">
                                    </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                        <p class="text-muted m-b-15 f-s-12">Date of Birth :</p>
                                        <input type="text" class="form-control input-rounded"  value="<?php echo $xx['dob']; ?>" disabled="disabled">
                                    </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                        <p class="text-muted m-b-15 f-s-12">Religion :</p>
                                        <input type="text" class="form-control input-rounded"  value="<?php echo $xx['religion']; ?>" disabled="disabled">
                                    </div>
                                    </div>


                                    <div class="col-md-3">
                                        <div class="form-group">
                                        <p class="text-muted m-b-15 f-s-12">Hobby :</p>
                                        <input type="text" class="form-control input-rounded"  value="<?php echo $xx['hobby']; ?>" disabled="disabled">
                                    </div>
                                    </div>


                                    <div class="col-md-3">
                                        <div class="form-group">
                                        <p class="text-muted m-b-15 f-s-12">Email :</p>
                                        <input type="text" class="form-control input-rounded"  value="<?php echo $xx['gender']; ?>" disabled="disabled">
                                    </div>
                                    </div>


                                    <div class="col-md-3">
                                        <div class="form-group">
                                        <p class="text-muted m-b-15 f-s-12">Department :</p>
                                        <input type="text" class="form-control input-rounded"  value="<?php echo $xx['department']; ?>" disabled="disabled">
                                    </div>
                                    </div>


                                    <div class="col-md-3">
                                        <div class="form-group">
                                        <p class="text-muted m-b-15 f-s-12">Level :</p>
                                        <input type="text" class="form-control input-rounded"  value="<?php echo $xx['level']; ?>" disabled="disabled">
                                    </div>
                                    </div>



                                  <br><center><img src="../admin/lecturerimages/<?php echo $xx['image']; ?>" width="200" height="200"></center>


                                </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /# column -->
            </div>
            <!-- End PAge Content -->
        </div>
        <!-- End Container fluid  -->
        <!-- footer -->

        <!-- FOOTER REGION -->
        <?php
        include "inc/footer.php";
        ?>

        <!-- End footer -->
    </div>
    <!-- End Page wrapper  -->
</div>
<!-- End Wrapper -->
<!-- All Jquery -->
<script src="js/lib/jquery/jquery.min.js"></script>
<!-- Bootstrap tether Core JavaScript -->
<script src="js/lib/bootstrap/js/popper.min.js"></script>
<script src="js/lib/bootstrap/js/bootstrap.min.js"></script>
<!-- slimscrollbar scrollbar JavaScript -->
<script src="js/jquery.slimscroll.js"></script>
<!--Menu sidebar -->
<script src="js/sidebarmenu.js"></script>
<!--stickey kit -->
<script src="js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
<!--Custom JavaScript -->
<script src="js/scripts.js"></script>

</body>

</html>