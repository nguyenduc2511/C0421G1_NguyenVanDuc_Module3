
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <style>
        body {
            display: -ms-flexbox;
            display: -webkit-box;
            display: flex;
            -ms-flex-align: center;
            -ms-flex-pack: center;
            -webkit-box-align: center;
            align-items: center;
            -webkit-box-pack: center;
            justify-content: center;
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }
        .form-signin {
            width: 100%;
            max-width: 330px;
            padding: 15px;
            margin: 0 auto;
        }
        .form-signin .form-control {
            position: relative;
            box-sizing: border-box;
            height: auto;
            padding: 10px;
            font-size: 16px;
        }
        .form-signin .form-control:focus {
            z-index: 2;
        }
    </style>
</head>
<body class="text-center">
<form class="form-signin" action="/customer" method="post" style="min-height: 100vh">
    <input type="hidden" name="action" value="edit">
    <input type="hidden" name="id" value="${customer.id}">
    <img class="mb-4" src="bootstrap/img/logo.jpg" alt="" width="150" height="150">
    <h1 class="h3 mb-3 font-weight-normal">Create new Customer</h1>
    <p>Name:</p>
    <input type="text" id="inputName" class="form-control" value="${customer.name}" required autofocus name="nameCustomer">
    <p>Birth Day</p>
    <input type="date" id="inputDate" class="form-control" value="${customer.birthday}" required autofocus name="birthDay">
    <p>id card</p>
    <input type="text" id="inputIdCard" class="form-control" value="${customer.idCard}" required autofocus name="idCard">
    <p>Gender</p>
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
    <p>Phone</p>
    <input type="text" id="inputPhone" class="form-control" value="${customer.phone}" required autofocus name="phone">
    <p>Email</p>
    <input type="text" id="inputEmail" class="form-control" value="${customer.email}" required autofocus name="mail">
    <p>adress</p>
    <input type="text" id="inputadress" class="form-control" value="${customer.address}" required autofocus name="address">
    <p>Customer type</p>
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
<p><button class="btn btn-lg btn-primary btn-block" type="submit">Update</button></p>
</form>
<p style="color: darkred">${msg}</p>
</body>
<script src="bootstrap/js/bootstrap.min.js"></script>
</html>
