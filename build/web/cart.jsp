<%@page import="bean.Buycartbean"%>
<%@page import="bean.Rentalcartbean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : cart
    Created on : Jan 27, 2022, 3:04:38 PM
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
    <title>Cart - Farmhouse</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Annie+Use+Your+Telescope&family=Merriweather&family=Playfair+Display&family=Roboto&display=swap"
        rel="stylesheet">
</head>

<body>
    <%@include file="includes/navbar.jsp" %>
    <div class="container mx-auto px-24 mt-24">
        <h1 class="text-2xl" style="font-family: 'Roboto', sans-serif;">
            Cart
        </h1>
        <hr>
        <div class="mt-10 flex">            
            <div>
                
                <h1 class="text-2xl" style="font-family: 'Roboto', sans-serif;">
                Buy Transaction
                </h1>
                <hr class="mb-4">
                <c:forEach items="${sessionScope.buylist}" var="currentsession" varStatus="loop">
                <div class="flex mb-10">
                    <div class="mr-14">
                        <img class="max-w-60 max-h-60 mx-auto"
                            src="<c:out value="${currentsession.img}" />"
                            alt="">
                    </div>
                    <div>
                        <div class="max-w-md text-left" style="font-family: 'Roboto', sans-serif;">
                            <h1 class="text-2xl mb-4"><c:out value="${currentsession.itemname}" /></h1>
                            <hr>
                            <h4 class="mt-4">
                                Quantity: <c:out value="${currentsession.quantity}" /> <br>
                            </h4>
                            <div class="mt-10"><a class="px-4 py-1 text-sm text-white bg-red-400 rounded" href="deletebuycart?id=${currentsession.item_id}">Remove Item</a></div>
                        </div>
                    </div>
                </div>
                </c:forEach>
                <h1 class="text-2xl" style="font-family: 'Roboto', sans-serif;">
                Rental Transaction
                </h1>
                <hr class="mb-4">
                <c:forEach items="${sessionScope.rentlist}" var="currentsession" varStatus="loop">
                <div class="flex mb-10">
                    <div class="mr-14">
                        <img class="max-w-60 max-h-60 mx-auto"
                            src="<c:out value="${currentsession.img}" />"
                            alt="">
                    </div>
                    <div>
                        <div class="max-w-md text-left" style="font-family: 'Roboto', sans-serif;">
                            <h1 class="text-2xl mb-4"><c:out value="${currentsession.itemname}" /></h1>
                            <hr>
                            <h4 class="mt-4">
                                Quantity: <c:out value="${currentsession.quantity}" /> <br>
                                Duration: <c:out value="${currentsession.duration}" /> Month <br>
                                <div class="mt-10"><a class="px-4 py-1 text-sm text-white bg-red-400 rounded" href="deleterentcart?id=${currentsession.item_id}">Remove Item</a></div>
                            </h4>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
            <div class="text-center mx-auto my-auto bg-gray-300 px-4 py-4 rounded bg-opacity-50">
                <div class="mb-14">
                    <h1 class="text-2xl" style="font-family: 'Roboto', sans-serif;">
                        Total Buy Price: ${totbuyprice}
                    </h1>
                </div>
                <div>
                    <form action="checkoutbuy" method="post">
                        <input type="hidden" name="totbuyprice" value="${totbuyprice}">
                        <input class="bg-yellow-500 hover:bg-yellow-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline cursor-pointer" type="submit" value="Checkout">
                        </form>
                </div>
            </div>
            <div class="text-center mx-auto my-auto bg-gray-300 px-4 py-4 rounded bg-opacity-50">
                <div class="mb-14">
                    <h1 class="text-2xl" style="font-family: 'Roboto', sans-serif;">
                        Total Rental Price: ${totrentprice}
                    </h1>
                </div>
                <div>
                    <form action="checkoutrent" method="post">
                        <input type="hidden" name="totrentprice" value="${totrentprice}">
                        <input class="bg-yellow-500 hover:bg-yellow-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline cursor-pointer" type="submit" value="Request Rental">
                        </form>
                </div>
            </div>            
        </div>
    </div>
</body>

</html>