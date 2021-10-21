
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>create</title>
    <link rel="stylesheet" href="/assert/bootstrap413/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assert/datatables/css/dataTables.bootstrap4.min.css">
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
<form class="form-signin" action="/matbang" method="post" style="min-height: 100vh">
    <input type="hidden" name="action" value="create">

    <img class="mb-4" src="bootstrap/img/logo.jpg" alt="" width="150" height="150">
    <h1 class="h3 mb-3 font-weight-normal">Create new Mặt Bằng</h1>
    <p>Tên :</p>
    <input type="text" id="inputName" class="form-control" placeholder="tên mặt bằng" required autofocus name="name">
    <p>Diện Tích</p>
    <input type="number" id="inputs" class="form-control" placeholder="diện tích" required autofocus name="dientich">

    <p>loại Mặt bằng</p>
    <select name="loaimatbang">
        <c:forEach items="${loaiMatBang}" var="loaiMatBang">
            <option value="${loaiMatBang.id}">${loaiMatBang.name}</option>
        </c:forEach>
    </select>
    <p>Trạng thái</p>
    <select name="trangthai">
        <c:forEach items="${trangThai}" var="trangThai">
            <option value="${trangThai.id}">${trangThai.name}</option>
        </c:forEach>
    </select>
    <p>Giá </p>
    <input type="number" id="inputg" class="form-control" placeholder="Giá thuê" required autofocus name="gia">

    <p>Ngày Bắt Đầu</p>
    <input type="date" id="inputDate" class="form-control" placeholder="Ngày Bắt đầu" required autofocus name="ngaybatdau">
    <p>Ngày Kết thúc</p>
    <input type="date" id="inputDates" class="form-control" placeholder="Ngày kêt thúc" required autofocus name="ngayketthuc">
<p><button class="btn btn-lg btn-primary btn-block" type="submit">Create</button></p>
</form>
<p style="color: darkred">${msg}</p>
</body>
<script src="/assert/jquery/jquery-3.5.1.min.js"></script>
<script src="/assert/bootstrap413/js/popper.min.js"></script>
<script src="/assert/datatables/js/jquery.dataTables.min.js"></script>
<script src="/assert/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.bundle.js"></script>
</html>
