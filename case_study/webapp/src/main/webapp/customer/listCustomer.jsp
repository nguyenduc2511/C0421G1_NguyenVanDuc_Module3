<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="/assert/bootstrap413/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assert/datatables/css/dataTables.bootstrap4.min.css">
    <title>Fukama</title>
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
        .card-img-top{
            display: block;
            width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
<%--  navbar--%>
<jsp:include page="../body/navbar.jsp"></jsp:include>
<%--navbar--%>

<%--  left body--%>
<div class="container-fluid px-0">
    <div class="row p-0">
        <div class="col-lg-3 col-sm-12">
            <jsp:include page="../body/leftbody.jsp"></jsp:include>
        </div>
        <%--      body--%>
        <div class="col-lg-9 col-sm-12">
            <div class="row">
                <div class="col-lg-12 col-sm-12 position-relative">


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
<script src="/assert/jquery/jquery-3.5.1.min.js"></script>
<script src="/assert/bootstrap413/js/popper.min.js"></script>
<script src="/assert/datatables/js/jquery.dataTables.min.js"></script>
<script src="/assert/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.bundle.js"></script>
</html>
