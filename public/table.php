<!DOCTYPE html>
<html>
<head>
    <!-- 개인 시간표 페이지 -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>개인 시간표</title>
</head>
<body>
    <div id="container">
        <h3>Your timetable</h3>
        
        <table width="100%">
                <tr id = "week">
                    <th>시간</th>
                </tr>
                <tr class = "block">
                    <td>9:00 ~ 10:00</td>
                </tr>
                <tr class = "block">
                    <td>10:00 ~ 11:00</td>
                </tr>
                <tr class = "block">
                    <td>11:00 ~ 12:00</td>
                </tr>
                <tr class = "block">
                    <td>12:00 ~ 13:00</td>
                </tr>
                <tr class = "block">
                    <td>13:00 ~ 14:00</td>
                </tr>
                <tr class = "block">
                    <td>14:00 ~ 15:00</td>
                </tr>
                <tr class = "block">
                    <td>15:00 ~ 16:00</td>
                </tr>
                <tr class = "block">
                    <td>16:00 ~ 17:00</td>
                </tr>
                <tr class = "block">
                    <td>17:00 ~ 18:00</td>
                </tr>
                <tr class = "block">
                    <td>18:00 ~ 19:00</td>
                </tr>
        </table>
        <form id = "send" action = "../src/php/_table.php" method = "POST"> <!--send table data to db-->
        <input type = "submit" id="save" value = "저장" />
        </form>
    </div>
    <script src = "./src/edit.min.js"></script>
</body>
</html>