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
<jsp:include page="body/navbar.jsp"></jsp:include>
<%--navbar--%>

<%--  left body--%>
<div class="container-fluid px-0">
    <div class="row p-0">
        <div class="col-lg-2 col-sm-12">
            <jsp:include page="body/leftbody.jsp"></jsp:include>
        </div>
        <%--      body--%>
        <div class="col-lg-10 col-sm-12">
            <div class="row">
                <div class="col-lg-12 col-sm-12 position-relative text-center">
                    <h1 style="color: blue"> List mặt bằng</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 col-lg-12">
                    <a class="btn btn-success mb-2" href="/matbang?action=create" role="button">Create</a>
                    <c:if test="${empty matBangList}">
                        <h3 style="color: red">Customer List Empty!</h3>
                    </c:if>
                    <c:if test="${not empty matBangList}">
                        <table id="tableCustomer" class="table table-striped" >
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>ID name</th>
                                <th>Name</th>
                                <th>Diện Tích</th>
                                <th>Số Tầng</th>
                                <th>loại Mặt bằng</th>
                                <th>Trạng thái</th>
                                <th>Giá</th>
                                <th>Ngày bắt Đầu</th>
                                <th>Ngày Kết thúc</th>
                                <th colspan="1">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${matBangList}" var="matbang">
                                <tr>
                                    <td>${matbang.id}</td>
                                    <td>${matbang.id_name}</td>
                                    <td>${matbang.name}</td>
                                    <td>${matbang.dienTich}</td>
                                    <td>${matbang.tang}</td>
                                    <td>${matbang.loaiMatBang}</td>
                                    <td>${matbang.trangThai}</td>
                                    <td>${matbang.gia}</td>
                                    <td>${matbang.ngayBatDau}</td>
                                    <td>${matbang.ngayKetThuc}</td>
                                    <td>
                                        <button type="button" class="btn btn-danger" onclick="onDelete(${matbang.id})"
                                                data-toggle="modal" data-target="#exampleModal">
                                            Delete
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </c:if>
                    <%--            modal--%>
                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                         aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Confirm delete</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <form action="/matbang?action=delete" method="get">
                                    <input type="hidden" name="action" value="delete">
                                    <input type="hidden" name="id" id="idCustomerDel">
                                    <div class="modal-body">
                                        Do you wanna delete <span
                                            style="color: red"><strong>${matbang.id}</strong></span>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close
                                        </button>
                                        <button type="submit" class="btn btn-danger">OK</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%--  footer--%>
<jsp:include page="body/footer.jsp"></jsp:include>
<%--  footer--%>

<script>
    function onDelete(id) {
        document.getElementById("idCustomerDel").value = id;
    }
</script>
</body>
<script src="/assert/jquery/jquery-3.5.1.min.js"></script>
<script src="/assert/bootstrap413/js/popper.min.js"></script>
<script src="/assert/datatables/js/jquery.dataTables.min.js"></script>
<script src="/assert/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.min.js"></script>
<script src="/assert/bootstrap413/js/bootstrap.bundle.js"></script>

<script>
    $(document).ready(function () {
        $('#tableCustomer').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 4
        })
    })
</script>
</html>
