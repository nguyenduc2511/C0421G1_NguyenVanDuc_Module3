<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 06/08/2021
  Time: 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>tu dien</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
  </head>
  <body>
  <h2>VietNamese Dictionary</h2>
  <form action="/translate" method="post">
    <input type="text" name="txtSearch" placeholder="enter your word: ">
    <input type="submit" id = "submit" value="search">
  </form>
  </body>
</html>
