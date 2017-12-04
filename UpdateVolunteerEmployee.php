<?php
session_start();
if(!isset($_SESSION['loggedIn'])){
    header("Location: login.html");
}
include("Header.php");
?>

<?php
//Setting up variable to use for mysqli function
$server = "localhost";
$user = "clm_user";
$psw = "dbuser";
$database = "community_lifeline";

//Connecting to database
$db = mysqli_connect($server, $user, $psw, $database);
if (!$db) {
    echo "Error - Could not connect to MySQL";
    exit;
}

$query = "SELECT * FROM Volunteer_Employee ORDER BY Last_Name, First_Name;";
$result = mysqli_query($db, $query);
?>

<html>

<head>

    <link rel="stylesheet" type="text/css" href="adding.css"/>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>

<body>

<div class="container">

    <div class="row">

        <div class="form-group">
            <div class="col-lg-4">
                <label class="control-label" for="vid">Select Volunteer/Employee To Update:</label>

                <select id="vid" class="form-control" name="id">
                    <option value="">Please Select a Volunteer/Employee</option>
                    <?php
                    if (mysqli_num_rows($result) > 0) {
                        while ($row = mysqli_fetch_assoc($result)) {

                            echo "<option value='" . $row['Id'] . "'>" . $row['First_Name'] . " " . $row['Last_Name'] . "</option>";
                        }
                    }
                    ?>
                </select>
            </div>
        </div>
    </div>

    <div id="showVolunteerEmployeeInfo"></div>

</div>

</body>

</html>

<script>
    $(document).ready(function () {
        $('#vid').change(function () {
            var vid = $(this).val();
            $.ajax({
                url:"AjaxUpdateVolunteerEmployee.php",
                method:"POST",
                data:{vid:vid},
                success:function (output) {
                    $('#showVolunteerEmployeeInfo').html(output);
                }
            });
        });
    });
</script>
