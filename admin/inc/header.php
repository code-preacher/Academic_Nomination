
<?php
include '../config.php';
$q=mysqli_query($con,"select * from admin where user_id='".$_SESSION['user_id']."'");
$qr=mysqli_fetch_array($q);

?>

<div class="header">
    <nav class="navbar top-navbar navbar-expand-md navbar-light">
        <!-- Logo -->
        <div class="navbar-header">
            <a class="navbar-brand" href="../admin/dashboard.php">
                <!-- Logo icon -->
                <b><img src="../images/logo.jpg" alt="" class="img img-responsive" style="width: 50%;" /></b>
                <!--End Logo icon -->
                <span><img src="" alt="" class="dark-logo" /></span>
            </a>
        </div>
        <!-- End Logo -->
        <div class="navbar-collapse">
            <!-- toggle and nav items -->
            <ul class="navbar-nav mr-auto mt-md-0">
                <!-- This is  -->
                <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up text-muted  " href="javascript:void(0)"><i class="mdi mdi-menu"></i></a> </li>
                <li class="nav-item m-l-10"> <a class="nav-link sidebartoggler hidden-sm-down text-muted  " href="javascript:void(0)"><i class="ti-menu"></i></a> </li>
                
            </ul>
               
                    
                    <!-- Profile -->
                    <li class="nav-item dropdown">
                     <a class="nav-link dropdown-toggle text-muted  " href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="img/avatar-a.jpg" alt="user image" class="profile-pic" /></a>

                     <span style="font-size: 12px;"> Hello Admin, <?php echo $qr['name'];  ?> </span>  
                     <div class="dropdown-menu dropdown-menu-right animated zoomIn">
                        <ul class="dropdown-user">
                            <li><a href="../admin/profile.php"><i class="ti-user"></i> Profile</a></li>
                            
                            <li><a href="../admin/logout.php" onClick="return confirm('Are you sure you want to logout ?')"><i class="fa fa-power-off"></i> Logout</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
</div>

