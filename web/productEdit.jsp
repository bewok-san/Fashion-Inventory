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
            <jsp:param name ="title" value="Edit Product"/>
        </jsp:include>
    </head>
    <body>
        <div class='container pt-4'>
            <jsp:include page='views/layout/navbar.jsp'></jsp:include>
            <div class="row">
                <div class="col-4">
                    <form action="productEdit" method="POST">
                        <input type="hidden" name="id" value="${product.id}">
                        <div class="form-group">
                            <label>Product Name</label>
                            <input class="form-control" type="text" name="name" 
                                   value="${product.name}">
                        </div>
                        <div class="form-group">
                            <label>Product Size</label>
                            <input class="form-control" type="text" name="size"
                                   value="${product.size}">
                        </div>
                        <div class="form-group">
                            <label>Product Label</label>
                            <input class="form-control" type="text" name="label"
                                   value="${product.name}">
                        </div>
                        <div class="form-group">
                            <label>Product Type</label>
                            <select class="form-control" type="text" name="type">
                                <option ${product.type == 'Shirt' ? 'selected' : ''} value="Shirt">Shirt</option>
                                <option ${product.type == 'Pants' ? 'selected' : ''} value="Pants">Pants</option>
                                <option ${product.type == 'Shoes' ? 'selected' : ''} value="Shoes">Shoes</option>
                                <option ${product.type == 'Jacket' ? 'selected' : ''} value="Jacket">Jacket</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Product Note</label>
                            <input class="form-control" type="text" name="note"
                                   value="${product.note}">
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
