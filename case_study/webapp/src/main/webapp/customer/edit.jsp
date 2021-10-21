<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/assert/bootstrap413/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assert/datatables/css/dataTables.bootstrap4.min.css">
</head>
<body>
<h1>Edit Customer</h1>
<form action="/customer" method="post">
    <input type="hidden" name="action" value="edit">
    <input type="hidden" name="id" value="${requestScope["customer"].id}">
    <table>
        <tr>
            <td>Name:</td>
            <td>
                <input type="text" name="nameCustomer" value="${requestScope["customer"].name}">
            </td>
        </tr>
        <tr>
            <td>Birthday:</td>
            <td>
                <input type="date" name="birthDay" value="${requestScope["customer"].birthday}">
            </td>
        </tr>
        <tr>
            <td>Id_card:</td>
            <td>
                <input type="text" name="idCard" value="${requestScope["customer"].idCard}">
            </td>
        </tr>
        <tr>
            <td>Gender: </td>
            <td>
                <select name="gender">
                    <c:if test="${customer.gender ==0}">
                        <option value="0" selected>Nam</option>
                        <option value="1">Nữ</option>
                    </c:if>
                    <c:if test="${customer.gender ==1}">
                        <option value="0">Nam</option>
                        <option value="1" selected>Nữ</option>
                    </c:if>
                </select>
            </td>
        </tr>
        <tr>
            <td>Phone:</td>
            <td>
                <input type="text" name="phone" value="${requestScope["customer"].phone}">
            </td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>
                <input type="text" name="mail" value="${requestScope["customer"].email}">
            </td>
        </tr>
        <tr>
            <td>Address:</td>
            <td>
                <input type="text" name="address" value="${requestScope["customer"].address}">
            </td>
        </tr>
        <tr>
            <td>Customer Type: </td>
            <td>
                <select name="customerType">
                    <c:forEach items="${customerType}" var="customerType">
                        <c:choose>
                            <c:when test="${customer.typeCustomer.equals(customerType.name)}">
                                <option value="${customerType.id}" selected>${customerType.name}</option>
                            </c:when>
                            <c:otherwise>
                                <option value="${customerType.id}">${customerType.name}</option>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <button type="submit">Submit</button>
            </td>
        </tr>
    </table>
</form>
<p style="color: darkred">${msg}</p>

<script src="/assert/jquery/jquery-3.5.1.min.js"></script>
<script src="/assert/bootstrap413/js/popper.min.js"></script>
<script src="/assert/datatables/js/jquery.dataTables.min.js"></script>
<script src="/assert/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.bundle.js"></script>

</body>
</html>
