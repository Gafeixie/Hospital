<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/11/14
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
</head>
<style type="text/css">
    body{
        background-image: url(img/1.jpg);/*添加背景图片*/
        background-repeat: no-repeat;/*设置图片不重复*/
        background-size: contain;/*设置图片平铺*/
        text-align: center;

    }
    #normalButton{
        color: black;
        background-color:cadetblue;
        border-color: cadetblue;
    }
</style>
<body>
<h1>Patient Information</h1>
<form action="HelloWorld" method="get">
<input type ="text" id ="NnameInput" size="40" placeholder="Patient Name"name="name"><br /><br />
<input type ="text" id ="NphoneInput" size="40" placeholder="Phone Number"name="phone"><br /><br />
    <input type ="text" id ="SexInput" size="40" placeholder="Sex" name="sex"><br /><br />
    <input type ="text" id ="ageInput" size="40" placeholder="Phone Number"name="age"><br /><br />
    <input type ="text" name ="keshi"><br/><br/>
    <input type="submit" value="ok">

</form>

</body>
</html>
