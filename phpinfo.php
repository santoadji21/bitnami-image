<?php
require_once('config.php');


// $sql="show variables where Variable_name like 'hostname' ";
// $servername = "localhost";
// $username = "moodle";
// $password = "moodle_db";
// $dbname = "moodle";

// Create connection
$conn = mysqli_connect($CFG->dbhost, $CFG->dbuser, $CFG->dbpass, $CFG->dbname);
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

 $sql = "show variables where Variable_name like 'hostname' ";
// $result = mysqli_query($conn, $sql);

$res = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_assoc($res)) {
  echo 'Database '.$row['Variable_name'].':'.$row['Value']."<br>\n";
}

phpinfo();

?>

<!-- mysql -u bn_moodle -h moodle -pbitnami_moodle -->