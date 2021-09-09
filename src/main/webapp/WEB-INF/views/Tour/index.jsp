<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/5/2021
  Time: 9:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/commom/admin/index/header.jsp">
    <jsp:param name="text" value="Danh sách nhân viên"/>
</jsp:include>

<div class="table-responsive shadow">
    <jsp:include page="/commom/admin/index/addAndFind.jsp"/>

    <table id="tb-view" class="table table-sm table-hover table-striped">
        <thead>
        <tr>
            <th>Mã tour</th>
            <th>Tên tour</th>
            <th>Giá người lớn</th>
            <th>Giá trẻ em</th>
            <th>Images</th>
            <th>Thời lượng</th>
            <th>Ngày đi</th>
            <th>Ngày cập nhật</th>
            <th>Phương tiện</th>
            <th>Loại tour</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="item" items="${items}">
            <tr>
                <td>${item.maTour}</td>
                <td>${item.tenTour}</td>
                <td>${item.giaNguoilon}</td>
                <td>${item.giaTrecon}</td>
                <td>${item.images}</td>
                <td>${item.thoiLuong}</td>
                <td>${item.ngayDi}</td>
                <td>${item.ngayCapnhat}</td>
                <td>${item.viewPhuongTien}</td>
                <td>${item.viewLoaiTour}</td>
                <jsp:include page="/commom/admin/index/objectFunction.jsp">
                    <jsp:param name="id" value="${item.maTour}"/>
                </jsp:include>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>