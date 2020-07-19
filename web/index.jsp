<%-- 
    Document   : index
    Created on : Jul 1, 2020, 8:45:36 AM
    Author     : hp
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='views/layout/head.jsp'>
            <jsp:param name ="title" value="Home"/>
        </jsp:include>
    </head>
    <body>
        <div class='container pt-4'>
            <jsp:include page='views/layout/navbar.jsp'></jsp:include>
            <div class="container">
                <h2>Index</h2>
            </div>
            <div class="row">
                <div class="col-4 pb-4">
                    <a class="btn btn-sm btn-primary" href="${pageContext.request.contextPath}/product">Product</a>
                </div>
            </div>
            
        
            <jsp:include page='views/layout/footer.jsp'></jsp:include>
        </div>
        <jsp:include page='views/layout/scripts.jsp'></jsp:include>
        
    </body>
</html>
