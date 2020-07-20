<%-- 
    Document   : productCreate
    Created on : Jul 19, 2020, 2:45:33 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='views/layout/head.jsp'>
            <jsp:param name ="title" value="Create Incoming Transaction"/>
        </jsp:include>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css" rel="stylesheet"/>
    </head>
    <body>
        <div class='container pt-4'>
            <jsp:include page='views/layout/navbar.jsp'></jsp:include>
            <div class="row">
                <div class="col-4">
                    <form action="incomingTransactionCreate" method="POST">
                        <div class="form-group">
                            <label>Party</label>
                            <select class="form-control" type="text" name="party_id">
                            <c:forEach items="${party}" var="party">
                                <option value="${party.id}">${party.name}</option> 
                            </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Product</label>
                            <select class="form-control" type="text" name="product_id">
                            <c:forEach items="${product}" var="product">
                                <option value="${product.id}">${product.name}</option> 
                            </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Amount</label>
                            <input class="form-control" type="text" name="amount">
                        </div>
                        <div class="form-group">
                            <label>Date</label>
                            <input class="form-control" type="text" name="date" id="datepicker">
                        </div>
                        <div class="form-group">
                            <label>Type</label>
                            <input class="form-control" type="text" name="type" value="Incoming" readonly>
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
         <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.min.js"></script>
        <script type="text/javascript">
            $('#datepicker').datepicker({
                weekStart: 1,
                autoclose: true,
                todayHighlight: true,
                format: 'yyyy-mm-dd'
            });
            $('#datepicker').datepicker("setDate", new Date());
        </script>
    </body>
</html>
