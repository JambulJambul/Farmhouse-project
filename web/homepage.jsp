<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Farmhouse</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Annie+Use+Your+Telescope&family=Merriweather&family=Playfair+Display&display=swap" rel="stylesheet">
</head>

<body class="bg-lime-500">
    <%@include file="includes/navbar.jsp" %>
    
    <div class="container mx-auto px-24">
        <div class="text-center mt-10">
            <div>
                <h1 class="text-6xl text-red-600" style="font-family: 'Annie Use Your Telescope', cursive;">
                    Farmhouse
                </h1>
            </div>
            <div class="mt-10">
                <p class="text-3xl text-red-600">
                    In farmhouse we provide you with our own highest quality fertilizers, and the latest tools and
                    equipments
                    for your agricultural needs.
                </p>
            </div>
        </div>
        <div class="flex flex-wrap justify-evenly items-center mt-24">
            <div class="hover:scale-105 duration-500 transform transition">
                <a href="fertilizers">
                    <img class="h-96"
                        src="https://i.ibb.co/mJNjshM/pngegg-1.png"
                        alt="">
                    <div class="text-center text-2xl text-red-600">
                        <p> 
                        Fertilizers
                        </p>
                    </div>
                </a>
            </div>
            <div class="hover:scale-105 duration-500 transform transition">
                <a href="toolsequipment">
                    <img class="h-96"
                        src="https://i.ibb.co/3y7QqZM/tractor-PNG16114-1.png"
                        alt="">
                    <div class="text-center text-2xl text-red-600">
                        Tools & Equipments
                    </div>
                </a>
            </div>
        </div>
    </div>
    
</body>

</html>