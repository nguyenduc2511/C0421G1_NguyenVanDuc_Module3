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

        .card {
            display: flex;
        }

        .card-img-top {
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
                <div class="col-lg-12 col-sm-12 position-relative text-center">
                    <h1 style="color: blue">Customer List</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 col-lg-12">
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
                                        <a href="/customer?action=edit&id=${customer.id}" class="btn btn-warning">
                                            Edit
                                        </a>
                                    </td>
                                    <td>
                                        <button>
                                            DeLete
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </c:if>


                </div>
            </div>
        </div>
    </div>
</div>

<%--  footer--%>
<jsp:include page="../body/footer.jsp"></jsp:include>
<%--  footer--%>
</body>
<script src="/assert/jquery/jquery-3.5.1.min.js"></script>
<script src="/assert/bootstrap413/js/popper.min.js"></script>
<script src="/assert/datatables/js/jquery.dataTables.min.js"></script>
<script src="/assert/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.bundle.js"></script>
</html>
