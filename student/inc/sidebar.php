 <div class="left-sidebar">
    <!-- Sidebar scroll-->
    <div class="scroll-sidebar">
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
            <ul id="sidebarnav">
                <li class="nav-devider"></li>
                <li class="nav-label">Home</li>
                <li> <a href="dashboard.php" aria-expanded="false"><i class="fa fa-tachometer"></i><span class="hide-menu">Dashboard</span></a>
                    
                </li>
                
                <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-user text-primary"></i><span class="hide-menu">Profile</span></a>
                    
                    <ul aria-expanded="false" class="collapse">
                        <li><a href="profile2.php">View Profile </a></li>
                        
                    </ul>

                </li>

                
                <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-cogs text-success"></i><span class="hide-menu">Change Password</span></a>
                    
                    <ul aria-expanded="false" class="collapse">
                        <li><a href="profile.php">Change Password</a></li>
                        
                    </ul>

                </li>

                
                <li> <a href="logout.php?id=<?php echo $_SESSION['user_id'];?>" aria-expanded="false" onClick="return confirm('Are you sure you want to logout ?')"><i class="fa fa-sign-out text-danger"></i><span class="hide-menu">Logout</span></a>
                    
                </li>
                
            </li>
        </ul>
    </nav>
    <!-- End Sidebar navigation -->
</div>
<!-- End Sidebar scroll-->
</div>