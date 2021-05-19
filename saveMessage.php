<?php

// Require database connection
require('config.php');

// Real escape variables to prevent SQL injection (security measure)
$name = $con->real_escape_string($_POST['recordingName']);
$uuid = $con->real_escape_string($_POST["sessionId"]);
    
if(!isset($_FILES['msg'])){
    return; //not a post from our voicefile
}

$messageurl;

switch($_FILES['msg']['error']){
    case UPLOAD_ERR_OK:
        move_uploaded_file($_FILES['msg']['tmp_name'], './recordings/' . $name . '.wav');
        $messageurl = "https://colourfultaste.nl/recordings/".$name.".wav";
        $prompt = 'Thanks, your message has been saved.';
        break;
    default:
        $prompt = 'Sorry, we could not save your message.';
}

    
// Send voicemessage location to DB, return error if found  
    $con->query("INSERT INTO cuttingReport (uuid, messageUrl) VALUES ('$uuid', '$messageurl')") or trigger_error("Query Failed! - Error: ".mysqli_error($con), E_USER_ERROR);;
?>