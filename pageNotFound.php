<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="public/imgs/logosatop.png">
    <title>Error 404 (Page not found)</title>
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }

        .container {
            display: flex;
            flex-direction: column;
            width: 100%;
            height: 100vh;
            align-items: center;
            justify-content: center;

            & a {
                text-decoration: none;
                font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                font-weight: bold;
                background-color: #E6583A;
                padding: 10px 20px;
                color: #FFFFFF;
                border-radius: 10px;
                box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 50px;
                cursor: pointer;
            }
        }

    </style>
</head>
<body>
    <div class="container">
        <img src="public/imgs/pageerr.webp" style="height: 40vh">
        <a onclick="history.back()">Back to page</a>
    </div>
</body>
</html>