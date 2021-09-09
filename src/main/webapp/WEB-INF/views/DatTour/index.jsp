<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/6/2021
  Time: 11:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="table-responsive shadow">
    <table id="tb-view" class="table table-sm table-hover table-striped" border="1">
        <thead>
        <tr>
            <th>Mã đặt tour</th>
            <th>Mã tour</th>
            <th>Tên khách hàng</th>
            <th>Địa chỉ</th>
            <th>SĐT</th>
            <th>Email</th>
            <th>Số người lớn</th>
            <th>Số trẻ em</th>
            <th>Ghi chú</th>
            <th>Kiểm duyệt</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="item" items="${items}">
            <tr>
                <td>${item.maDattour}</td>
                <td>${item.maTour}</td>
                <td>${item.tenKh}</td>
                <td>${item.diaChi}</td>
                <td>${item.sdt}</td>
                <td>${item.email}</td>
                <td>${item.soNguoilon}</td>
                <td>${item.soTreem}</td>
                <td>${item.ghiChu}</td>
                <td>${item.maKd}</td>
                <jsp:include page="/commom/admin/index/objectFunction.jsp">
                    <jsp:param name="id" value="${item.maTour}"/>
                </jsp:include>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>