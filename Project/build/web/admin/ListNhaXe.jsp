<%-- 
    Document   : ListNhaXe
    Created on : Oct 24, 2017, 12:42:27 PM
    Author     : Tung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.entity.NhaXe"%>
<%@page import="java.util.List"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
         <div class="container-fluid">
                
                <ul class="nav nav-tabs">
                    <li role="presentation"><a href="/Project/admin/Index.jsp">Home</a></li>
                    <li role="presentation"><a href="/Project/admin/BookingServlet">List Booking</a></li>
                    <li role="presentation"><a href="/Project/admin/ChuyenXeServlet">List Chuyen Xe</a></li>
                    <li role="presentation" class="active"><a href="/Project/admin/NhaXeServlet">List Nha Xe</a></li>
                     <li role="presentation"  ><a href="/Project/admin/BenXeServlet">List Ben Xe</a></li>
                       <%
                            if (session.getAttribute("LoginUser") != null) {
                        %>
                    <li role="presentation"><a href="/Project/LogoutServlet">Đăng xuất</a>
                    </li> <%}%>
                </ul>
                
            </div>
      <table class="table table-hover">
            <tr>
                <th>Ten Nha Xe</th>
                <th>Ma Nha Xe</th>
                <th>Ma Ben</th>
               
            </tr>
            <c:forEach var="nx" items="${NhaXe}">
                <tr>
                    <td>${nx.tenNhaXe}</td>
                    <td>${nx.maNhaXe}</td>
                    <td>${nx.maBen}</td>
                   
                </tr>
            </c:forEach>
        </table>
                <p style="text-align: center;font-size: 16px">
                Found ${NhaXe.size()} NhaXe(s) in total
            </p>
    </body>
</html>
