
<?php
    $myfile = fopen("text.txt", "w") or die("Unable to open file!");
    $command = $_POST["location"];
    $number = $_POST["phoneNumber"];
    $time = $_POST["startTime"];
    $total = $command . " " . $number . " " . $time;
    fwrite($myfile, $total);
    fclose($myfile);
    echo "saved";
?>