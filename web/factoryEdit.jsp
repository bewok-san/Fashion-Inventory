<%-- 
    Document   : productCreate
    Created on : Jul 19, 2020, 2:45:33 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='views/layout/head.jsp'>
            <jsp:param name ="title" value="Edit Factory Information"/>
        </jsp:include>
    </head>
    <body>
        <div class='container pt-4'>
            <jsp:include page='views/layout/navbar.jsp'></jsp:include>
            <div class="row">
                <div class="col-4">
                    <form action="factoryEdit" method="POST">
                        <input type="hidden" name="id" value="${factory.id}">
                        <div class="form-group">
                            <label>Factory Name</label>
                            <input class="form-control" type="text" name="name" 
                                   value="${factory.name}">
                        </div>
                        <div class="form-group">
                            <label>Address</label>
                            <input class="form-control" type="text" name="address"
                                   value="${factory.address}">
                        </div>
                        <div class="form-group">
                            <label>City</label>
                            <input class="form-control" type="text" name="city"
                                   value="${factory.city}">
                        </div>
                        <div class="form-group">
                            <label>ZIP</label>
                            <input class="form-control" type="text" name="zip"
                                   value="${factory.zip}">
                        </div>
                        <div class="form-group">
                            <label>Contact</label>
                            <input class="form-control" type="text" name="contact"
                                   value="${factory.contact}">
                        </div>
                        <div class="form-group">
                            <label>Note</label>
                            <input class="form-control" type="text" name="note"
                                   value="${factory.note}">
                        </div>
                        <div class="form-group">
                            <button class="btn btn-sm btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
            <jsp:include page='views/layout/footer.jsp'></jsp:include>
        </div>
        <jsp:include page='views/layout/scripts.jsp'></jsp:include>
    </body>
</html>
