<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 06/08/2021
  Time: 9:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>Product Discount Calculator</h1>
  <form action="/discount" method="post">
  <label>Product Description: </label>
    <input type="text" name="description" placeholder="Product Description"><br/>
    <label>List Price: </label>
    <input type="text" name="listPrince" value="0"><br/>
    <label>Discount Percent: </label>
    <input type="text" name="discountPercent" value="0"><br/>
    <input type="submit" id="submit" value="discount">
  </form>
  </body>
</html>
