<?php

include("scripts/header.php");
?>

    <h1>Update Volunteer/Employee Information:</h1>
    <br />


    <?php

    //connect to database
    include("db/config.php");

    session_start();

    $id = $_SESSION['testScoreId'];

    $term = $_POST['term'];
    $year = intval($_POST['year']);
    $preTest = floatval($_POST['pre_test']);
    $postTest = floatval($_POST['post_test']);


    $sql = "UPDATE School_Year SET Term = '$term', Year = '$year', Pre_Test = '$preTest', Post_Test = '$postTest'  WHERE Student_Id = '$id' ;";

    if ($db->query($sql) === TRUE){
        echo "<div class='alert alert-success'>
                        <strong>Success! </strong>Test Scores has been successfully Updated.
                      </div>";
    }else{
        echo "<div class='alert alert-danger'>
                        <strong>Failure! </strong>Test Scores could not be updated, please try again.
                      </div>";
    }


      include("scripts/footer.php");
  ?>
