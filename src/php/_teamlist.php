<?
require "./_connect.php";

$query = "SELECT id, name FROM team ORDER BY id DESC"; // team 테이블에서 id 기준 내림차순으로 id와 name을 선택한다.
$result = mysqli_query($conn, $query);

$teams = array();

while ($data = mysqli_fetch_array($result, MYSQLI_ASSOC)) { // 반복문을 돌며 data 변수에 선택한 데이터를 담는다.
  $team = array(
    "id" => $data["id"],
    "name" => $data["name"]
  );
  $teams[] = $team;
}

echo json_encode($teams); // teams를 JSON 형식으로 인코딩
?>
