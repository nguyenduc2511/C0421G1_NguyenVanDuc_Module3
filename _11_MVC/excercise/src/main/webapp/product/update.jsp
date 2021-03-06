
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p><a href="/products">Back to main page</a></p>
<c:if test=" ${message != null}">
    ${message}
</c:if>
<form method="post">
    <fieldset>
        <legend>Update Product</legend>
        <table>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name" value="${product.getName()}"></td>
            </tr>
            <tr>
                <td>Maker</td>
                <td><input type="text" name="maker" value="${product.getMaker()}"></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><input type="text" name="price" value="${product.getPrice()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
