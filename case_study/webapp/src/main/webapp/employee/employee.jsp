<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Fukama</title>
    <link rel="stylesheet" href="/assert/bootstrap413/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assert/datatables/css/dataTables.bootstrap4.min.css">
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
<%--  navbar--%>
<jsp:include page="../body/navbar.jsp"></jsp:include>
<%--navbar--%>
<%--  left body--%>
<div class="container-fluid px-0">
    <div class="row p-0">
        <div class="col-lg-2 col-sm-12">
            <jsp:include page="../body/leftbody.jsp"></jsp:include>
        </div>
        <%--      body--%>
        <div class="col-lg-10 col-sm-12">
            <div class="row">
                <h1>Employee List</h1>
                <a class="btn btn-success mb-2" href="/employee?action=create" role="button">Create</a>
                <c:if test="${empty employeeList}">
                    <h3 style="color: red">Employee List Empty!</h3>
                </c:if>
                <c:if test="${not empty employeeList}">
                    <table id="Employee" class="table table-striped" >
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Birthday</th>
                            <th>id_card</th>
                            <th>salary</th>
                            <th>phone</th>
                            <th>Email</th>
                            <th>Address</th>
                            <th>position</th>
                            <th>educationDegree</th>
                            <th>division</th>
                            <th colspan="2">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${employeeList}" var="employee">
                            <tr>
                                <td>${employee.id}</td>
                                <td>${employee.name}</td>
                                <td>${employee.birthDay}</td>
                                <td>${employee.idCard}</td>
                                <td>${employee.salary}</td>
                                <td>${employee.phone}</td>
                                <td>${employee.email}</td>
                                <td>${employee.address}</td>
                                <td>${employee.position}</td>
                                <td>${employee.educationDegree}</td>
                                <td>${employee.division}</td>
                                <td>
                                    <a href="/employee?action=edit&id=${employee.id}" class="btn btn-danger" style="background-color: yellow;color: black">Edit</a>
                                </td>
                                <td>
                                    <button onclick="onDelete(${employee.id})" type="button" class="btn btn-danger"
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
                            <form action="/employee" method="get">
                                <input type="hidden" name="action" value="delete">
                                <input type="hidden" name="id" value="" id="idCustomerDel">
                                <div class="modal-body">
                                    Do you wanna delete <span style="color: red"><strong>${employee.name()}</strong></span>
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
    $(document).ready(function () {
        $('#Employee').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 3
        })
    })
</script>
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
</html>
