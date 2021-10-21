
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>create</title>
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
    <input type="hidden" name="action" value="create">

    <img class="mb-4" src="bootstrap/img/logo.jpg" alt="" width="150" height="150">
    <h1 class="h3 mb-3 font-weight-normal">Create new Customer</h1>
    <a>Name:</a>
    <input type="text" id="inputName" class="form-control" placeholder="Name Customer" required autofocus name="nameCustomer">
    <a>Birth Day</a>
    <input type="date" id="inputDate" class="form-control" placeholder="Date of birth" required autofocus name="birthDay">
    <a>id card</a>
    <input type="text" id="inputIdCard" class="form-control" placeholder="Id card customer" required autofocus name="idCard">
    <p>Gender</p>
    <select name="gender">
        <option value="0">Nam</option>
        <option value="1">Nữ</option>
    </select>
    <a>Phone</a>
    <input type="text" id="inputPhone" class="form-control" placeholder="phone Customer" required autofocus name="phone">
    <a>Email</a>
    <input type="text" id="inputEmail" class="form-control" placeholder="Email Customer" required autofocus name="mail">
    <a>adress</a>
    <input type="text" id="inputadress" class="form-control" placeholder="Adress Customer" required autofocus name="address">
    <a>Customer type</a>
    <select name="customerType">
        <c:forEach items="${customerType}" var="customerType">
            <option value="${customerType.id}">${customerType.name}</option>
        </c:forEach>
    </select>
<p><button class="btn btn-lg btn-primary btn-block" type="submit">Create</button></p>
</form>
<p style="color: darkred">${msg}</p>
</body>
<script src="bootstrap/js/bootstrap.min.js"></script>
</html>
