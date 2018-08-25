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
                    <th align="center">시간</th>
                </tr>
                <tr class = "block">
                    <td align="center">9:00 ~ 10:00</td>
                </tr>
                <tr class = "block">
                    <td align="center">10:00 ~ 11:00</td>
                </tr>
                <tr class = "block">
                    <td align="center">11:00 ~ 12:00</td>
                </tr>
                <tr class = "block">
                    <td align="center">12:00 ~ 13:00</td>
                </tr>
                <tr class = "block">
                    <td align="center">13:00 ~ 14:00</td>
                </tr>
                <tr class = "block">
                    <td align="center">14:00 ~ 15:00</td>
                </tr>
                <tr class = "block">
                    <td align="center">15:00 ~ 16:00</td>
                </tr>
                <tr class = "block">
                    <td align="center">16:00 ~ 17:00</td>
                </tr>
                <tr class = "block">
                    <td align="center">17:00 ~ 18:00</td>
                </tr>
                <tr class = "block">
                    <td align="center">18:00 ~ 19:00</td>
                </tr>
        </table>
        <form id = "send" action = "../src/php/_table.php" method = "POST"> <!--send table data to db-->
        <input type = "submit" id="save" value = "저장"></input>
        </form>
    </div>
    <script src = "./src/edit.min.js"></script>
</body>
</html>