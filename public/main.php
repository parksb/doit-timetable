<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>팀목록/시간표</title>
</head>
<style>
    body {
    background: #2ecc71;
    font-size: 1.5em;
}

.container {
    padding: 2em;
}

button,
button::after {
    -webkit-transition: all 0.3s;
    -moz-transition: all 0.3s;
    -o-transition: all 0.3s;
    transition: all 0.3s
}

button {
    background: none;
    border: 3px solid #fff;
    border-radius: 50px;
    color: #fff;
    display: block;
    font-size: 1.5em;
    font-weight: bold;
    margin: 1em auto;
    padding: 2em 6em;
    position: relative;
    /*transform: translateY(50%);*/
}

button::before,
button::after {
    background: #fff;
    content: '';
    position: absolute;
    z-index: -1;
}

button:hover {
    color: #2ecc71;
}


/* BUTTON */

.btn {
    overflow: hidden;
}

.btn::after {
    /*background-color: #f00;*/
    height: 100%;
    left: -37%;
    top: 0;
    transform: skew(50deg);
    transition-duration: 0.6s;
    transform-origin: top left;
    width: 0;
}

.btn:hover:after {
    height: 100%;
    /*width: 135%;*/
    width: 150%;
}
</style>

<body>
    
    <div class='container'></div>
        <button class='btn' onclick="location.href='teamlist.php' "> 내 팀목록 </button>
        <button class='btn' onclick="location.href='table.php' "> TABLE </button>
        <button class='btn' onclick="location.href='setting.php' "> 설정 </button>
    </div>
    adsfjafdsj
    <script src="./src/js/main.js"></script>
</body>

</html>