<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 18/08/2021
  Time: 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <title>Quan lý Sản phẩm</title>
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
            <img src="bootstrap/img/logo.jpg" href="/home?action=home" aria-current="page" type="button">
        </div>
        <div class="col-lg-3 align-middle" href="#" aria-current="page" type="button">
            Management Product
        </div>
    </div>
</div>
<%--  navbar--%>
<nav class="navbar navbar-expand-lg navbar-light bg-light" style="color: white;background-color: #b6effb;">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="row">
                <div class="col-lg-2">Product Name</div>
                <div class="col-lg-2">Price</div>
                <div class="col-lg-2">Category</div>
                <div class="col-lg-2">Color</div>
                <div class="col-lg-2">Clear</div>
            </div>
            <form class="d-flex row">
                <input class="form-control me-2 col-lg-2" type="search" placeholder="enterProductName"
                       aria-label="Search">
                <input class="form-control me-2 col-lg-2" type="search" placeholder="Enter Price" aria-label="Search">
                <input class="form-control me-2 col-lg-2" type="search" placeholder="Enter category"
                       aria-label="Search">
                <input class="form-control me-2 col-lg-2" type="search" placeholder="Enter Color" aria-label="Search">
                <button class="btn btn-outline-success col-lg-2" type="submit">clear</button>
                <button class="btn btn-outline-success col-lg-2" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
<%--body--%>
<div class="col-lg-9 col-sm-12" >
    <div class="row">
        <h1>Danh Sách Sản Phẩm </h1>
        <a class="btn btn-success mb-2" onclick="onCreate(${sanpham.id})" role="button">Create</a>
        <c:if test="${empty sanPhamList}">
        <h3 style="color: red">Sản Phẩm List Empty!</h3>
        </c:if>
        <c:if test="${not empty sanPhamList}">
        <table class="table">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Quantiny</th>
                <th>Color</th>
                <th>Category</th>
                <th colspan="2">Action</th>
            </tr>
            </thead>
            <tbody >
            <c:forEach items="${sanPhamList}" var="sanpham">
                <tr>
                    <td>${sanpham.id}</td>
                    <td>${sanpham.ten}</td>
                    <td>${sanpham.gia}</td>
                    <td>${sanpham.soluong}</td>
                    <td>${sanpham.danhmuc}</td>
                    <td>
                        <a href="" class="btn btn-danger" style="background-color: yellow;color: black">Edit</a>
                    </td>
                    <td>
                        <button onclick="onDelete(${sanpham.id})" type="button" class="btn btn-danger"
                                data-bs-toggle="modal" data-bs-target="#exampleModal">
                            Delete
                        </button>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        </c:if>
        <p style="color: darkred">${msg}</p>
        <%--      modaldel--%>
        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Confirm delete</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="" method="get">
                        <input type="hidden" name="action" value="delete">
                        <input type="hidden" name="id" value="" id="idCustomerDel">
                        <div class="modal-body">
                            xác nhận xóa sản phẩm.
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Ok</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
<%--modalcrea--%>
      <!-- Modal -->
      <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabelc">Confirm create</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="/customer" method="get">
              <input type="hidden" name="action" value="delete">
              <input type="hidden" name="id" value="" id="idCustomerDelc">
              <div class="modal-body">

              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Ok</button>
              </div>
            </form>
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
<script>
  function onDelete(id) {
    document.getElementById("idCustomerDel").value = id;
  }
</script>
<script>
  function onCrete(id) {
    document.getElementById("idCustomerDelc").value = id;

  }
</script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</html>
