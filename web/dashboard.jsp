<%-- 
    Document   : dashboard
    Created on : Jan 31, 2022, 5:38:01 AM
    Author     : hilma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Admin Dashboard - Farmhouse</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Annie+Use+Your+Telescope&family=Merriweather&family=Playfair+Display&family=Roboto&display=swap"
        rel="stylesheet">
</head>
    <body>
        <%@include file="/includes/navbar-admin.jsp" %>
        <div>
            <div class="flex justify-center mt-24">
                <a href="managefertilizers" class="px-6 py-6 bg-amber-400 mx-8 border rounded text-amber-800">Manage Product - Fertilizers</a>
                <a href="managemachines" class="px-6 py-6 bg-amber-400 mx-8 border rounded text-amber-800">Manage Product - Machineries</a>
                <a href="managetools" class="px-6 py-6 bg-amber-400 mx-8 border rounded text-amber-800">Manage Product - Tools</a>
            </div>
        </div>
    </body>
</html>
