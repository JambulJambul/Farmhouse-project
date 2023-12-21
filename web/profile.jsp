<%@page import="bean.Userbean"%>

<%-- 
    Document   : profile
    Created on : Jan 27, 2022, 3:34:03 PM
    Author     : hilma
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Profile - Farmhouse</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Annie+Use+Your+Telescope&family=Merriweather&family=Playfair+Display&family=Roboto&display=swap"
        rel="stylesheet">
</head>

<body>
    <%@include file="includes/navbar.jsp" %>

    <div class="container mx-auto px-24 mt-24">
        <div class="mx-auto rounded">
            <div>
                <img class="max-w-32 max-h-32 mx-auto rounded"
                    src="https://bodylanguagecentral.com/wp-content/uploads/2019/10/man-awkward.jpg" alt="">
                <h1 class="text-center my-4 text-3xl"><jsp:getProperty name="myprofile" property="name" /></h1>
                <hr>
            </div>
            <div class="text-center text-xl">
                <div class="my-4">Phone Number:</div>
                <div class="my-4 text-2xl"><jsp:getProperty name="myprofile" property="phone" /></div>
                <div class="my-4">Address:</div>
                <div class="my-4 text-2xl"><jsp:getProperty name="myprofile" property="address" /></div>
                <div class="my-4">
            </div>
                <hr>
            </div>
            
            <div class="text-center text-2xl mt-4">
                <div class="my-4">Items in rental</div>
                <div class="flex mx-auto">
                    <c:forEach items="${sessionScope.purrenlist}" var="currentsession" varStatus="loop">
                    <div class="flex mx-auto">
                        <div class="mr-14">
                            <img class="max-w-60 max-h-60 mx-auto"
                                src="<c:out value="${currentsession.img}" />"
                                alt="">
                        </div>
                        <div>
                            <div class="max-w-md text-left" style="font-family: 'Roboto', sans-serif;">
                                <h1 class="text-2xl mb-4 my-auto">${currentsession.itemname}</h1>
                                <h4 class="mt-4">
                                    Quantity: <c:out value="${currentsession.quantity}" /> <br>
                                    Duration: <c:out value="${currentsession.duration}" /> months
                                </h4>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
                <div class="mt-24">Items purchased</div>
                <div class="flex mx-auto">
                    <c:forEach items="${sessionScope.purbuylist}" var="currentsession" varStatus="loop">
                    <div class="flex mx-auto">
                        <div class="mr-14">
                            <img class="max-w-60 max-h-60 mx-auto"
                                src="<c:out value="${currentsession.img}" />"
                                alt="">
                        </div>
                        <div>
                            <div class="max-w-md text-left" style="font-family: 'Roboto', sans-serif;">
                                <h1 class="text-2xl mb-4 my-auto">${currentsession.itemname}</h1>
                                <h4 class="mt-4">
                                    Quantity: <c:out value="${currentsession.quantity}" /> <br>
                                </h4>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>



</body>

</html>