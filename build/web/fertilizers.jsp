<%@page import="bean.Fertilizerbean"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Fertilizers - Farmhouse</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Annie+Use+Your+Telescope&family=Merriweather&family=Playfair+Display&family=Roboto&display=swap"
        rel="stylesheet">
</head>

<body>
    <%@include file="includes/navbar.jsp" %>
    <div class="container mx-auto px-24 mt-24">
        <h1 class="text-2xl" style="font-family: 'Roboto', sans-serif;">Fertilizers</h1>
        <hr>
        <div class="flex flex-wrap">

            <c:forEach items="${sessionScope.fertlist}" var="currentsession" varStatus="loop">
                <div class="w-60 my-10 mx-12"><a href="fertilizerdetails?id=${currentsession.id}"><img class="max-w-60 max-h-60 mx-auto"
                        src="<c:out value="${currentsession.img}" />"
                        alt="">
                    <div class="pt-4" style="font-family: 'Roboto', sans-serif;">
                        <div><c:out value="${currentsession.fertilizer_name}" /></div>
                        <div class="flex justify-between pt-2">
                            <div><c:out value="${currentsession.price}" /></div>
                            <div>Read more...</div>
                        </div>
                    </div>
                </a>
            </div>
            </c:forEach>
    </div>
    </div>
</body>

</html>