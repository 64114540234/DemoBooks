<%-- 
    Document   : saveToFirebase
    Created on : Jul 19, 2022, 8:43:43 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Book" %>

<% Book book = (Book) session.getAttribute("book");%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <script src="https://www.gstatic.com/firebasejs/8.0.0/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/8.0.0/firebase-database.js"></script> 
        
        
    </head>

    <body>
        <h2>Test Firebase 'Book' connection</h2>

        <p>
            <button onclick="window.save_book();"><a href="addNewBook.html">Save</a></button>
        </p>

        <script>         
            var firebaseConfig = {
                apiKey: "AIzaSyDy5LfWyKTlcil1Fz40nJg5ljyJ41B7DtA",
                authDomain: "bookproject-5ced3.firebaseapp.com",
                projectId: "bookproject-5ced3",
                storageBucket: "bookproject-5ced3.appspot.com",
                messagingSenderId: "765462470951",
                appId: "1:765462470951:web:1a6d6dcdadcf9be13c0902"
            };
            firebase.initializeApp(firebaseConfig);
            var databaseRef = firebase.database().ref('book/');

            window.save_book = function() {
                var uid = firebase.database().ref().child('book').push().key;

                var data = {
                    book_id: uid,
                    book_name: '<%= book.getName() %>',
                    book_author: '<%= book.getAuthor() %>',
                    book_page: '<%= book.getPage() %>'
                }

                var updates = {};
                updates['/book/' + uid] = data;
                firebase.database().ref().update(updates);

                alert('Book is created successfully!');
                reload_page();
            }

            function reload_page() {
                window.location.reload();
            }

        </script>
    </body>
</html>
