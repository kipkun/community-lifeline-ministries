<?php
    session_start();
    if(!isset($_SESSION['loggedIn'])){
        header("Location: login.html");
    }
?>

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="add.css"/>
    </head>
    
    <body>
        <form align="right" name="form" action="menu.php" method="POST">
            <label class="home">
            <input name="submit" type="submit" id="home" value="Home">
            </label>
        </form>
        
		<img src="Lifeline.png" alt="Community Lifeline" align="middle">
        
        <label><h3>Add Information:</h3></label><br>

        
        <?php
        
        
        $username = $_POST['username'];
		$password = $_POST['password'];
        $encryptPass = md5($password);
		$account = $_POST['account'];
        $newAccount = checkAccount($account);
        $fname = $_POST['fname'];
        $lname = $_POST['lname'];
		$email = $_POST['email'];
        
        //Setting up variable to use for mysqli function
        $server = "localhost";
        $user = "clm_user";
        $psw = "dbuser";
        $database = "community_lifeline";
        //Connecting to database
        $db = mysqli_connect($server, $user, $psw, $database);
        if (!$db) {
            print "Error - Could not connect to MySQL";
            exit;
        } 
        
        // Inserting values into prepared statment
        $stmt = $db->prepare("INSERT INTO Logins VALUES (?, ?, ?, ?, ?, ?)");
       
        $stmt->bind_param('ssssss', $username, $newAccount, $fname, $lname, $email, $encryptPass);
        
        $stmt->execute();
        
        if ($stmt->affected_rows == -1) {
            echo "<h2>User could not be added to the database, please try again.</h2>";
        } else {
            echo "<h2>User successfully added to the database .</h2>";        
            $stmt->close();
        }
        
        function checkAccount($account) {
            $account = strtolower($account);
            if($account == "administrator" or $account == "admin") {
                $account = "administrator";
            }
            return $account;
        }
        ?>
    </body>
</html>