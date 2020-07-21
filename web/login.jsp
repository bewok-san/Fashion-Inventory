<%-- 
    Document   : login
    Created on : Jul 21, 2020, 7:52:00 PM
    Author     : zidan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='views/layout/head.jsp'>
            <jsp:param name="title" value="Hello World"></jsp:param>
        </jsp:include>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css" rel="stylesheet"/>
    </head>
    <body>
        <div class='container pt-4'>
            <div class="row">
                <div class="col-4">
                    <% if(request.getAttribute("alert") != null) { %>
                        <div class="alert alert-danger">
                            <% out.print(request.getAttribute("alert")); %>
                        </div>
                    <% } %>
                    <form action="login" method="POST">
                        <div class="form-group">
                            <label>Username</label>
                            <input class="form-control" type="text" 
                                   name="username" required>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input class="form-control" type="password" 
                                   name="password" required>
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

