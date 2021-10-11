<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Fukama</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <style>
        .align-middle {
            display: flex;
            margin: auto;
            border-radius: 10px;
            border: 3px dashed #1c87c9;
            align-items: center;
            justify-content: center;
        }
    </style>
</head>
<body>
<div class="container-fluid" style="background-color: #b6effb">
    <div class="row">
        <div class="col-lg-9">
            <img src="bootstrap/img/logo.jpg" href="/home?action=home" aria-current="page" type="button" class="nav-link active">
        </div>
        <div class="col-lg-3 align-middle" href="#" aria-current="page" type="button">
            Sign in
        </div>
    </div>
</div>

<%--  navbar--%>
<nav class="navbar navbar-expand-lg navbar-light bg-light" style="color: white;background-color: #b6effb;">
    <div class="container-fluid">
        <a class="navbar-brand" href="/home?action=home">Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/employee">Employee</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/customer">Customer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Service</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Contract</a>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
<%--navbar--%>
<%--  left body--%>
<div class="container-fluid px-0">
    <div class="row p-0">
        <div class="col-lg-3 col-sm-12">
            <div class="row">
                <div class="col-lg-12" style="color: #0a53be;">
                    Item one
                </div>
                <div class="col-lg-12" style="color: #0a53be;">
                    Item two
                </div>
                <div class="col-lg-12" style="color: #0a53be;">
                    Item three
                </div>
            </div>
        </div>
        <%--      body--%>
        <div class="col-lg-9 col-sm-12">
            <div class="row">
                <h1>Customer List</h1>
                <a class="btn btn-success mb-2" href="/customer?action=create" role="button">Create</a>
                <c:if test="${empty customerList}">
                    <h3 style="color: red">Customer List Empty!</h3>
                </c:if>
                <c:if test="${not empty customerList}">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Birthday</th>
                            <th>Gender</th>
                            <th>id_card</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <th>Address</th>
                            <th>typeCustomer</th>
                            <th colspan="2">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${customerList}" var="customer">
                            <tr>
                                <td>${customer.id}</td>
                                <td>${customer.name}</td>
                                <td>${customer.birthday}</td>
                                <c:choose>
                                    <c:when test="${customer.gender == 0}">
                                        <td>Nam</td>
                                    </c:when>
                                    <c:otherwise>
                                        <td>Nữ</td>
                                    </c:otherwise>
                                </c:choose>
                                <td>${customer.idCard}</td>
                                <td>${customer.phone}</td>
                                <td>${customer.email}</td>
                                <td>${customer.address}</td>
                                <td>${customer.typeCustomer}</td>
                                <td>
                                    <a href="/customer?action=edit&id=${customer.id}" class="btn btn-danger" style="background-color: yellow;color: black">Edit</a>
                                </td>
                                <td>
                                    <button onclick="onDelete(${customer.id})" type="button" class="btn btn-danger"
                                            data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        Delete
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </c:if>

<%--            modal--%>
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Confirm delete</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <form action="/customer" method="get">
                                <input type="hidden" name="action" value="delete">
                                <input type="hidden" name="id" value="" id="idCustomerDel">
                                <div class="modal-body">
                                    Do you wanna delete <span style="color: red"><strong>${customer.name()}</strong></span>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-primary">Ok</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%--  footer--%>
<div class="container-fluid" style="min-height: 100vh">
    <div class="row">
        <div class="col-lg-12" style="text-align: center;color: white;background-color: black">
            © 2021 Copyright:
        </div>
    </div>
</div>
<script>
    function onDelete(id) {
        document.getElementById("idCustomerDel").value = id;
    }
</script>
</body>
<script src="bootstrap/js/bootstrap.min.js"></script>
</html>
