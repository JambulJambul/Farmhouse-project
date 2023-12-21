<%-- 
    Document   : managetools
    Created on : Jan 31, 2022, 6:24:55 AM
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
    <title>Admin Tools - Farmhouse</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Annie+Use+Your+Telescope&family=Merriweather&family=Playfair+Display&family=Roboto&display=swap"
        rel="stylesheet">
</head>

<body>
    <%@include file="/includes/navbar-admin.jsp" %>
    <div class="mt-24">
        <h1 class="text-center text-3xl mb-10">Manage Tools</h1>
        <table class="mx-auto">
            <thead class="bg-gray-50">
                <tr>
                    <th class="px-6 py-2 text-gray-500">
                        Id
                    </th>
                    <th class="px-6 py-2 text-gray-500">
                        Name
                    </th>
                    <th class="px-6 py-2 text-gray-500">
                        Brand
                    </th>
                    <th class="px-6 py-2 text-gray-500">
                        Renting Price
                    </th>
                    <th class="px-6 py-2 text-gray-500">
                        Buying Price
                    </th>
                    <th class="px-6 py-2 text-gray-500">
                        Description
                    </th>
                    <th class="px-6 py-2 text-gray-500">
                        Image
                    </th>
                    <th class="px-6 py-2 text-gray-500">
                        Edit
                    </th>
                    <th class="px-6 py-2 text-gray-500">
                        Delete
                    </th>
                </tr>
            </thead>
            <tbody class="bg-white">
                <c:forEach items="${sessionScope.admtoolslist}" var="currentsession" varStatus="loop">
                <tr>
                    <td class="px-6 py-4 text-sm text-gray-500 max-w-[24px] truncate">
                        <c:out value="${currentsession.id}" />
                    </td>
                    <td class="px-6 py-4 text-sm text-gray-500 max-w-[24px] truncate">
                        <c:out value="${currentsession.name}" />
                    </td>
                    <td class="px-6 py-4 text-sm text-gray-500 max-w-[24px] truncate">
                        <c:out value="${currentsession.brand}" />
                    </td>
                    <td class="px-6 py-4 text-sm text-gray-500 max-w-[32px] truncate">
                        <c:out value="${currentsession.rent_price}" />
                    </td>
                    <td class="px-6 py-4 text-sm text-gray-500 max-w-[24px] truncate">
                        <c:out value="${currentsession.buy_price}" />
                    </td>
                    <td class="px-6 py-4 text-sm text-gray-500 max-w-[24px] truncate">
                        <c:out value="${currentsession.tools_desc}" />
                    </td>
                    <td class="px-6 py-4 text-sm text-gray-500 max-w-[24px] truncate">
                        <c:out value="${currentsession.img}" />
                    </td>
                    <td class="px-6 py-4">
                        <a href="edittool?id=${currentsession.id}" class="px-4 py-1 text-sm text-white bg-blue-400 rounded">Edit</a>
                    </td>
                    <td class="px-6 py-4">
                        <a href="deletetools?id=${currentsession.id}" class="px-4 py-1 text-sm text-white bg-red-400 rounded">Delete</a>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="text-center">${message}</div><hr>
        <h1 class="text-center text-xl mb-10">Add row</h1>
        <div>
        <form action="addtools" method="post">
                <div class="mx-auto">
                    <div class="my-4 text-center">
                        <label for="name">Name: </label>
                        <input class="border" type="text" name="name" required>
                    </div>
                    <div class="my-4 text-center">
                        <label for="rentprice">Renting Price: </label>
                        <input class="border" type="number" name="rentprice" step="0.01" min="1" required>
                    </div>
                    <div class="my-4 text-center">
                        <label for="buyprice">Buying Price: </label>
                        <input class="border" type="number" name="buyprice" step="0.01" min="1" required>
                    </div>
                    <div class="my-4 text-center">
                        <label for="brand">Brand: </label>
                        <input class="border" type="text" name="brand" required>
                    </div>
                    <div class="my-4 text-center">
                        <label for="desc">Description: </label>
                        <input class="border" type="text" name="desc" required>
                    </div>
                    <div class="my-4 text-center">
                        <label for="image">Image (Link): </label>
                        <input class="border" type="text" name="image" required>
                    </div>
                    <div class="my-4 text-center">
                        <input class="px-4 py-1 text-sm text-white bg-blue-400 rounded" type="submit" value="Submit">
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
