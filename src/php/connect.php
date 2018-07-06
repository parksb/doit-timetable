<?
$user = "USER_NAME";
$password = "USER_PASSWORD";
$db = "timetable";

$conn = new mysqli("localhost", $user, $password, $db);

if ($conn->connect_error) {
  die("Connect Error (" . $conn->connect_errno . ")" . $conn->connect_error);
}

if (mysqli_connect_error()) {
  die("Connect Error (" . mysqli_connect_errno() . ")" . mysqli_connect_error());
}
?>