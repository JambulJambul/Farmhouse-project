<%-- 
    Document   : tools-details
    Created on : Jan 27, 2022, 2:10:09 PM
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
    <title>Tools Details - Farmhouse</title>
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
            <div class="flex">
                <a href="toolsequipment"><div class="text-amber-400 mr-2">Tools & Equipment</div></a> -> Product
            </div>
        </h1>
        <hr>
        <div class="mt-10 flex justify-around">
            <div class="max-w-md">
                <img src="<jsp:getProperty name="tools" property="img" />"
                    alt="">
            </div>
            <div>
                <div class=" max-w-3xl" style="font-family: 'Roboto', sans-serif;">
                    <h1 class="text-2xl mb-4"><jsp:getProperty name="tools" property="name" /></h1>
                    <h3 class="text-xl mb-4">Rental Price</h3>
                    <h2 class="text-4xl mb-4">$<jsp:getProperty name="tools" property="rent_price" />/month</h2>
                    <h3 class="text-xl mb-4">Buy Price</h3>
                    <h2 class="text-4xl mb-4">$<jsp:getProperty name="tools" property="buy_price" /></h2>
                    <hr>
                    <h4 class="mt-4">
                        Brand: <jsp:getProperty name="tools" property="brand" /> <br>
                        Tools Description: <jsp:getProperty name="tools" property="tools_desc" />
                    </h4>
                </div>
                <div class="flex">
                    <div class="mt-24 border rounded mx-10 text-center px-2 py-2">
                        <form action="addtocartrental" method="post">
                            <div>
                                <div>
                                    <h1 class=" max-w-2xl mb-6" style="font-family: 'Roboto', sans-serif;">Rental</h1>
                                    <label for="quantity">Quantity: </label>
                                    <input class="border" type="number" name="quantity" id="quantity">
                                    </div>
                                    <div class="mt-4">
                                    <label for="duration">Duration (month): </label>
                                    <input class="border" type="number" name="duration" id="duration">
                                    <input type="hidden" id="prodid" name="prodid" value="tool-<jsp:getProperty name="tools" property="id" />">
                                    <input type="hidden" id="itemimg" name="itemimg" value="<jsp:getProperty name="tools" property="img" />">
                                    <input type="hidden" id="itemname" name="itemname" value="<jsp:getProperty name="tools" property="name" />">
                                    <input type="hidden" id="itemprice" name="itemprice" value="<jsp:getProperty name="tools" property="rent_price" />">
                                </div>
                            </div>
                            <div class="mt-8">
                            <input
                                class="bg-yellow-500 hover:bg-yellow-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline cursor-pointer"
                                type="submit" value="Add to cart">
                            </div>
                        </form>
                    </div>
                    <div class="mt-24 border rounded mx-10 text-center px-2 py-2">
                        <form action="addtocart" method="post">
                            <div>
                                <div>
                                    <h1 class=" max-w-2xl mb-6" style="font-family: 'Roboto', sans-serif;">Buy</h1>
                                    <label for="quantity">Quantity: </label>
                                    <input class="border" type="number" name="quantity" id="quantity">
                                    </div>
                                    <input type="hidden" id="prodid" name="prodid" value="tool-<jsp:getProperty name="tools" property="id" />">
                                    <input type="hidden" id="itemimg" name="itemimg" value="<jsp:getProperty name="tools" property="img" />">
                                    <input type="hidden" id="itemname" name="itemname" value="<jsp:getProperty name="tools" property="name" />">
                                    <input type="hidden" id="itemprice" name="itemprice" value="<jsp:getProperty name="tools" property="buy_price" />">
                            </div>
                            <div class="mt-8">
                            <input
                                class="bg-yellow-500 hover:bg-yellow-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline cursor-pointer"
                                type="submit" value="Add to cart">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
