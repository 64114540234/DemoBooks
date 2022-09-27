<%-- 
    Document   : addBookSuccess
    Created on : Jul 12, 2022, 9:58:07 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="model.Book" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           Book book = (Book) session.getAttribute("book");
       %>
       <h3>ข้อมูลหนังสือ</h3>
       เรื่อง: <%= book.getName() %><br/>
       ผู้แต่ง: <%= book.getAuthor() %><br/>
       จำนวนหน้า: <%= book.getPage() %><br/>
       <a href='updateBook.jsp'>แก้ไข</a><br/>
       <a href="saveToFirebase.jsp">save to Firebase</a>
    </body>
</html>
