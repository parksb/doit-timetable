<!DOCTYPE html>
<html>
<head>
    <!-- 개인 시간표 페이지 -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>개인 시간표</title>
<<<<<<< HEAD
    <style>
        h3 {
            margin: 5% 15% 0px;
        }
        table, th, td {
            margin: 5% 15% 0px;
            border: 1px solid black;
        }
        th, td {
            padding: 5px;
        }
        button {
            padding: 10px;
            width: 150px;
            margin: 1% 15% 0px;
        }
    </style>
=======
>>>>>>> 6a73741986f96535648445e3730d73337f5e34a1
</head>
<body>
    <h3>Your Team's timetable</h3>
    
    <table width="50%">
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
<<<<<<< HEAD
    <button id="save">저장</button>
=======
    <form id = "send" action = "../src/php/_table.php" method = "POST"> <!--send table data to db-->
    <input type = "submit" id="save" value = "저장"></input>
    </form>
>>>>>>> 6a73741986f96535648445e3730d73337f5e34a1
    <script src = "./src/edit.min.js"></script>
</body>
</html>