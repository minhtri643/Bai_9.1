<%@page import="murach.business.Product"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head >
    <meta charset ="utf-8">
    <title>Murach's Java Servlets and JSP </title >
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head >
<body>
    <h1>Downloads</h1>
    <% 
        // Lấy đối tượng Product từ session
        Product product = (Product) session.getAttribute("product");
    %>
    <p></p>
    <h2><%= product.getDescription() %></h2> <!-- Hiển thị mô tả của sản phẩm -->
    <table class = "tablecart">
        <tr>
            <th>Song title </th>
            <th>Audio Format </th>
        </tr>
        <tr>
            <td >You Are a Star</td>
            <td><a href="https://open.spotify.com/track/4RHn5l14sPFjZlBZKbSjSw" target="_blank">MP3</a></td>
        </tr>
        <tr>
            <td>Don't Make No Difference</td>
            <td><a href="https://open.spotify.com/track/3F6ONukk3XKcdLx2RPOfzr" target="_blank">MP3</a></td>
        </tr>
    </table>
    <p>
    <p><a href="download?action=viewAlbums">View list of albums</a></p>
    <p><a href="?action=viewCookies">View all cookies</a></p>
</body>
</html>
