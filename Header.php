<?php
            //Setting up variable to use for mysqli function
        include("AdminPermissionsTest.php");
?>


<html>
    <head>
        <link rel="stylesheet" type="text/css" href="menu.css"/>
    </head>
    
    <body>
        <form align="right" name="form" action="logout.php" method="POST">
            <label class="logout">
            <input name="submit" type="submit" id="logout" value="Logout">
            </label>
        </form>
        
		<a href="menu.php" title="Homepage"><img src="Lifeline.png" alt="Community Lifeline" align="middle"></a>
		
		<!--menubar-########################################-->
		<div id="menubar">
        <div class="dropdwn">
            <button class="dropdwn_btn">New</button>
            <div class="dropdwn_list">
            
                <form action="AddingStudent.php" method="POST">
                    <input type="submit" value="Student" />
                </form>
                
                <form action="AddingParent.php" method="POST">
                    <input type="submit" value="Parent" />
                </form>
                
                <form action="AddingEmergency.php" method="POST">
                    <input type="submit" value="Emergency Information" />
                </form>
                
                <form action="AddingTeacher.php" method="POST">
                    <input type="submit" value="Teacher" />
                </form>
                
                <form action="AddingSchedule.php" method="POST">
                    <input type="submit" value="Schedule" />
                </form>
            </div>
        </div>
        
        <div class="dropdwn">
            <button class="dropdwn_btn">Reports</button>
            <div class="dropdwn_list">
            
                <form action="Reports.php" method="POST">
                    <input type="submit" value="Generate Reports" />
                </form>
            </div>
        </div>
        
        <div class="dropdwn">
            <button class="dropdwn_btn">Search</button>
            <div class="dropdwn_list">
                
                <form action="SearchingInfo.php" method="POST">
                    <input type="submit" value="Information" />
                </form>
                
                <form action="SearchingTeacher.php" method="POST">
                    <input type="submit" value="Teacher" />
                </form>
                
                <form action="SearchingSchedule.php" method="POST">
                    <input type="submit" value="Schedule" />
                </form> 
            </div>
        </div> 
        
        <div class="dropdwn">
            <button class="dropdwn_btn">Display All</button>
            <div class="dropdwn_list">
                
                <form action="DisplayAllStudents.php" method="POST">
                    <input type="submit" value="Students" />
                </form>
                
                <form action="DisplayAllTeachers.php" method="POST">
                    <input type="submit" value="Teachers" />
                </form>
                
                <form action="DisplayAllSchedules.php" method="POST">
                    <input type="submit" value="Schedules" />
                </form> 
            </div>
        </div>
        
        <?php
            if($isAdmin == true){
                echo '<div class="dropdwn">
                            <button class="dropdwn_btn">Administrative Tools</button>
                                <div class="dropdwn_list">
                                    <form action="Register.php" method="POST">
                                        <input type="submit" value="Register new user" />
                                    </form>
                                </div>
                        </div>';
            }
        ?>
            
                
        
        </div>
        <br />
    </body>
</html>