
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
<form class="form-signin" action="/sanpham" method="post" style="min-height: 100vh">
    <input type="hidden" name="action" value="edit">
    <input type="hidden" name="id" value="${sanpham.id}">
    <img class="mb-4" src="bootstrap/img/logo.jpg" alt="" width="150" height="150">
    <h1 class="h3 mb-3 font-weight-normal">Create new sanpham</h1>
    <p>Name:</p>
    <input type="text" id="inputName" class="form-control" value="${sanpham.name}" required autofocus name="nameCustomer">
    <p>gia</p>
    <input type="text" id="inputIdCard" class="form-control" value="${sanpham.gia}" required autofocus name="idCard">
    <p>soluong</p>
    <input type="text" id="inputPhone" class="form-control" value="${sanpham.soluong}" required autofocus name="phone">
    <p>thong tin</p>
    <input type="text" id="inputEmail" class="form-control" value="${sanpham.thongtin}" required autofocus name="mail">
    <p>danh muc</p>
    <select name="customerType">
        <c:forEach items="${danhmuc}" var="danhmuc">
            <c:choose>
                <c:when test="${danhmuc.typeCustomer.equals(danhmuc.name)}">
                    <option value="${danhmuc.id}" selected>${danhmuc.name}</option>
                </c:when>
                <c:otherwise>
                    <option value="${danhmuc.id}">${danhmuc.name}</option>
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
