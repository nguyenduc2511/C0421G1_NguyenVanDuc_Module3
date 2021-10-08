<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 06/08/2021
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer</title>
</head>
<body>
<table border="1" width="500" height="200" method="get">
    <thead>
    <tr>
        <td colspan="4" style="text-align: center">
            Danh sach khach hang
        </td>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th>ten</th>
        <th>ngay sinh</th>
        <th>dia chi</th>
        <th>anh</th>
    </tr>
    <c:forEach var="customers" items="${CustomerServlet}" varStatus="loop">
        <tr>
            <td><c:out value="${customers.fullName}"/></td>
            <td><c:out value="${customers.dateOfBirth}"/></td>
            <td><c:out value="${customers.address}"/></td>
            <td><img src="${customers.img}" alt="" style="height: 150px;width: 150px "></td>
        </tr>
    </c:forEach>

    </tbody>
</table>
</body>
</html>
