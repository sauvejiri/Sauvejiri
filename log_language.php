<?php

// Require database connection
require('config.php');

// Real escape variables to prevent SQL injection (security measure)
    $language = $con->real_escape_string($_POST["language"]);
    $uuid = $con->real_escape_string($_POST["sessionId"]);

// Update uuid with language    
    $con->query("UPDATE callLog SET language = '$language'  WHERE uuid = '$uuid'") or trigger_error("Query Failed! - Error: ".mysqli_error($con), E_USER_ERROR);
?>