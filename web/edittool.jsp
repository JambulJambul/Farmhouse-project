<%-- 
    Document   : edittool
    Created on : Jan 31, 2022, 10:24:55 AM
    Author     : hilma
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Admin Edit Tool - Farmhouse</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Annie+Use+Your+Telescope&family=Merriweather&family=Playfair+Display&family=Roboto&display=swap"
        rel="stylesheet">
    </head>
    <body>
        <%@include file="/includes/navbar-admin.jsp" %>
        <div class="mt-24">
            <h1 class="text-center text-3xl mb-10">Edit Tools Row</h1><hr>
            <form action="updatetool" method="post">
                <div class="mx-auto">
                    <div class="my-4 text-center">
                        <label for="name">Name: </label>
                        <input class="border" type="text" name="name" value="<jsp:getProperty name="admtools" property="name" />" required>
                    </div>
                    <div class="my-4 text-center">
                        <label for="rentprice">Renting Price: </label>
                        <input class="border" type="number" name="rentprice" step="0.01" min="1" value="<jsp:getProperty name="admtools" property="rent_price" />" required>
                    </div>
                    <div class="my-4 text-center">
                        <label for="buyprice">Buying Price: </label>
                        <input class="border" type="number" name="buyprice" step="0.01" min="1" value="<jsp:getProperty name="admtools" property="buy_price" />" required>
                    </div>
                    <div class="my-4 text-center">
                        <label for="desc">Desc: </label>
                        <input class="border" type="text" name="desc" value="<jsp:getProperty name="admtools" property="tools_desc" />" required>
                    </div>
                    <div class="my-4 text-center">
                        <label for="brand">Brand: </label>
                        <input class="border" type="brand" name="brand" value="<jsp:getProperty name="admtools" property="brand" />" required>
                    </div>
                    <div class="my-4 text-center">
                        <label for="image">Image (Link): </label>
                        <input class="border" type="text" name="image" value="<jsp:getProperty name="admtools" property="img" />" required>
                    </div>
                    <input type="hidden" name="id" value="<jsp:getProperty name="admtools" property="id" />">
                    <div class="my-4 text-center">
                        <input class="px-4 py-1 text-sm text-white bg-blue-400 rounded" type="submit" value="Submit">
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
