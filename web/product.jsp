<%-- 
    Document   : product
    Created on : Jul 19, 2020, 2:32:40 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='views/layout/head.jsp'>
            <jsp:param name ="title" value="Product"/>
        </jsp:include>
    </head>
    <body>
        <div class='container pt-4'>
            <jsp:include page='views/layout/navbar.jsp'></jsp:include>
        
            <div class="row">
                <div class="col-4 pb-4">
                    <a class="btn btn-sm btn-primary" href="productCreate">Create</a>
                </div>
                <div class="col-12">
                    <table class="table table-responsive table-hover">
                        <thead>
                            <tr>
                                <td>ID</td>
                                <td>Name</td>
                                <td>Size</td>
                                <td>Label</td>
                                <td>Type</td>
                                <td>Stock</td>
                                <td>Received</td>
                                <td>Shipped</td>
                                <td>Note</td>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${data}" var="item">
                                <tr>
                                    <td><p>${item.id}</p></td>
                                    <td><p>${item.name}</p></td>
                                    <td><p>${item.size}</p></td>
                                    <td><p>${item.label}</p></td>
                                    <td><p>${item.type}</p></td>
                                    <td><p>${item.stock}</p></td>
                                    <td><p>${item.received}</p></td>
                                    <td><p>${item.shipped}</p></td>
                                    <td><p>${item.note}</p></td>
                                    <td>
                                        <a class="btn btn-sm btn-primary" 
                                           href="${pageContext.request.contextPath}/productEdit?id=${item.id}">
                                            Edit
                                        </a>
                                        <a class="btn btn-sm btn-danger" 
                                           href="${pageContext.request.contextPath}/productDelete?id=${item.id}">
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        
            <jsp:include page='views/layout/footer.jsp'></jsp:include>
        </div>
        <jsp:include page='views/layout/scripts.jsp'></jsp:include>
        
    </body>
</html>
