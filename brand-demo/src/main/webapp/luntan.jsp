<%--
  Created by IntelliJ IDEA.
  User: 小屁的爱机
  Date: 2023/2/25
  Time: 23:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style/public.css" type="text/css" >
</head>

<body>
<h1>论坛</h1>
<button id="back">返回首页</button>
</body>
<script>
    let back = document.querySelector("#back")
    back.onclick = function () {
        location.href = "homepage.html"
    }
</script>

</html>
