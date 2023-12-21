<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="bean.Machinesbean"%>
<%@page import="bean.Toolsbean"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Tools & Equipments - Farmhouse</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Annie+Use+Your+Telescope&family=Merriweather&family=Playfair+Display&family=Roboto&display=swap"
        rel="stylesheet">
</head>

<body>
    <%@include file="includes/navbar.jsp" %>
    <div class="container mx-auto px-24 mt-24">
        <h1 class="text-2xl" style="font-family: 'Roboto', sans-serif;">Machineries Rental</h1>
        <hr>
        <div class="flex flex-wrap">
            <c:forEach items="${sessionScope.machinelist}" var="currentsession" varStatus="loop">
            <div class="w-60 my-10 mx-12"><a href="machinedetails?id=${currentsession.id}"><img class="max-w-60 max-h-60 mx-auto"
                        src="<c:out value="${currentsession.img}" />"
                        alt="">
                    <div class="pt-4" style="font-family: 'Roboto', sans-serif;">
                        <div><c:out value="${currentsession.machine_name}" /></div>
                        <div class="pt-2">
                            <div>Read more...</div>
                        </div>
                    </div>
                </a>
            </div>
            </c:forEach>  
        </div>
    <h1 class="text-2xl mt-10" style="font-family: 'Roboto', sans-serif;">Tools Buy & Rental</h1>
        <hr>
        <div class="flex flex-wrap">
            <c:forEach items="${sessionScope.toolslist}" var="currentsession" varStatus="loop">
            <div class="w-60 my-10 mx-12"><a href="toolsdetails?id=${currentsession.id}"><img class="max-w-60 max-h-60 mx-auto"
                        src="<c:out value="${currentsession.img}" />"
                        alt="">
                    <div class="pt-4" style="font-family: 'Roboto', sans-serif;">
                        <div><c:out value="${currentsession.name}" /></div>
                        <div class="pt-2">
                            <div>Read more...</div>
                        </div>
                    </div>
                </a>
            </div>
            </c:forEach>
        </div>
</body>

</html>