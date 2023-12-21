<%-- 
    Document   : payment
    Created on : Jan 27, 2022, 4:11:10 PM
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
        <h1 class="text-center text-3xl">Payment Details</h1>
        <hr>
        <div class="max-w-md mx-auto mt-10">
            <form action="" method="post">
                <div class="my-2">
                    <label for="cardname" class="block text-xs font-semibold text-gray-600 uppercase">Full Name</label>
                    <input id="cardname" type="text" name="cardname" placeholder="Full Name"
                        class="block w-full p-3 mt-2  bg-gray-200 appearance-none focus:outline-none focus:bg-gray-300 focus:shadow-inner"
                        required />
                </div>
                <div class="my-2">
                    <label for="cardnumber" class="block text-xs font-semibold text-gray-600 uppercase">Card
                        Number</label>
                    <input id="cardnumber" type="text" name="cardnumber" placeholder="Card Number"
                        class="block w-full p-3 mt-2  bg-gray-200 appearance-none focus:outline-none focus:bg-gray-300 focus:shadow-inner"
                        required />
                </div>
                <div class="my-2">
                    <label for="cardexpiry" class="block text-xs font-semibold text-gray-600 uppercase">Expiry
                        Date</label>
                    <input id="cardexpiry" type="text" name="cardexpiry" placeholder="Expiry Date"
                        class="block w-full p-3 mt-2  bg-gray-200 appearance-none focus:outline-none focus:bg-gray-300 focus:shadow-inner"
                        required />
                </div>
                <div class="my-2">
                    <label for="pin" class="block text-xs font-semibold text-gray-600 uppercase">Pin</label>
                    <input id="pin" type="password" name="pin" placeholder="***"
                        class="block w-full p-3 mt-2  bg-gray-200 appearance-none focus:outline-none focus:bg-gray-300 focus:shadow-inner"
                        required />
                </div>
                <input type="submit" value="Submit"
                    class="w-full py-3 mt-6 font-medium tracking-widest text-white uppercase bg-black shadow-lg focus:outline-none hover:bg-gray-900 hover:shadow-none cursor-pointer">
            </form>
        </div>
    </div>
</body>

</html>