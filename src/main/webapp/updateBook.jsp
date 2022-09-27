<%-- 
    Document   : updateBook
    Created on : Jul 12, 2022, 11:07:09 AM
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
       <form action="AddNewBook">
           <h3>ข้อมูลหนังสือ</h3>
           เรื่อง: <input type='text' name='name' value='<%= book.getName()%>'><br/>
           ผู้แต่ง: <input type='text' name='author' value='<%= book.getAuthor()%>'><br/>
           จำนวนหน้า: <input type='text' name='page' value='<%= book.getPage()%>'><br/>
           <input type='submit' value='Update'><br/>
           <a href="saveToFirebase.jsp">save to Firebase</a>
       </form>
       <% session.removeAttribute("book"); %>
    </body>
</html>
