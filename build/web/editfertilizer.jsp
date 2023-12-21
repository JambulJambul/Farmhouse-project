<%-- 
    Document   : editfertilizer
    Created on : Jan 31, 2022, 9:48:14 AM
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
    <title>Admin Edit Fertilizer - Farmhouse</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Annie+Use+Your+Telescope&family=Merriweather&family=Playfair+Display&family=Roboto&display=swap"
        rel="stylesheet">
    </head>
    <body>
        <%@include file="/includes/navbar-admin.jsp" %>
        <div class="mt-24">
            <h1 class="text-center text-3xl mb-10">Edit Fertilizer Row</h1><hr>
            <form action="updatefertilizer" method="post">
                <div class="mx-auto">
                    <div class="my-4 text-center">
                        <label for="name">Name: </label>
                        <input class="border" type="text" name="name" value="<jsp:getProperty name="admfert" property="fertilizer_name" />" required>
                    </div>
                    <div class="my-4 text-center">
                        <label for="price">Price: </label>
                        <input class="border" type="number" name="price" step="0.01" min="1" value="<jsp:getProperty name="admfert" property="price" />" required>
                    </div>
                    <div class="my-4 text-center">
                        <label for="weight">Weight: </label>
                        <input class="border" type="text" name="weight" value="<jsp:getProperty name="admfert" property="weight" />" required>
                    </div>
                    <div class="my-4 text-center">
                        <label for="brand">Brand: </label>
                        <input class="border" type="text" name="brand" value="<jsp:getProperty name="admfert" property="brand" />" required>
                    </div>
                    <div class="my-4 text-center">
                        <label for="expiry">Expiry: </label>
                        <input class="border" type="text" name="expiry" value="<jsp:getProperty name="admfert" property="expiry" />" required>
                    </div>
                    <div class="my-4 text-center">
                        <label for="image">Image (Link): </label>
                        <input class="border" type="text" name="image" value="<jsp:getProperty name="admfert" property="img" />" required>
                    </div>
                    <input type="hidden" name="id" value="<jsp:getProperty name="admfert" property="id" />">
                    <div class="my-4 text-center">
                        <input class="px-4 py-1 text-sm text-white bg-blue-400 rounded" type="submit" value="Submit">
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
