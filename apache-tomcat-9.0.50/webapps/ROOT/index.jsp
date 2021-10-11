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
        .card{
            display: flex;
        }
    </style>
</head>
<body>
<div class="container-fluid" style="background-color: #b6effb">
    <div class="row">
        <div class="col-lg-9">
            <img src="bootstrap/img/logo.jpg" href="/home?action=home" aria-current="page" type="button">
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
                <div class="col-lg-6 col-sm-12 position-relative">
                    <div class="card me-2" style="width: 100%;">
                        <a href=""><img src="bootstrap/img/resort1.jpg" class="card-img-top"></a>
                        <div class="card-body">
                            <p class="card-text">
                                resort</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-12 position-relative">
                    <div class="card me-2" style="width: 100%;">
                        <a href=""><img src="bootstrap/img/resort2.jpg" class="card-img-top"></a>
                        <div class="card-body">
                            <p class="card-text">
                                resort</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-12 position-relative">
                    <div class="card me-2" style="width: 100%;">
                        <a href=""><img src="bootstrap/img/resort3.jpg" class="card-img-top"></a>
                        <div class="card-body">
                            <p class="card-text">
                                resort</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-12 position-relative">
                    <div class="card me-2" style="width: 100%;">
                        <a href=""><img src="bootstrap/img/resort4.jpg" class="card-img-top"></a>
                        <div class="card-body">
                            <p class="card-text">
                                resort</p>
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

</body>
<script src="bootstrap/js/bootstrap.min.js"></script>
</html>
