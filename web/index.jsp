<%-- 
    Document   : login
    Created on : Jan 27, 2022, 3:10:09 PM
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
    <title>Fertilizer Details - Farmhouse</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Annie+Use+Your+Telescope&family=Merriweather&family=Playfair+Display&family=Roboto&display=swap"
        rel="stylesheet">
</head>

<body>
    <%@include file="includes/navbar-loggingin.jsp" %>
    <div class="grid min-h-screen place-items-center">
        <div
            class="bg-yellow-500 shadow-md border border-gray-200 rounded-lg max-w-sm p-4 sm:p-6 lg:p-8">
            <h1 class="text-4xl text-red-600" style="font-family: 'Annie Use Your Telescope', cursive;">
                Farmhouse</h1><br><span class="font-normal">sign-in to unlock the
                    best of
                    Farmhouse</span></h1>
            <form action="login" method="POST" mt-6>
                <label for="email" class="block text-xs font-semibold text-gray-600 uppercase mt-6">E-mail</label>
                <input id="email" type="email" name="email" placeholder="john.doe@company.com"
                    class="form-control block w-full p-3 mt-2 text-gray-700 bg-gray-200 appearance-none focus:outline-none focus:bg-gray-300 focus:shadow-inner"/>
                <label for="password" class="block mt-2 text-xs font-semibold text-gray-600 uppercase">Password</label>
                <input id="password" type="password" name="password" placeholder="********"
                    class="block w-full p-3 mt-2 mb-6 text-gray-700 bg-gray-200 appearance-none focus:outline-none focus:bg-gray-300 focus:shadow-inner"
                    required />
                ${message}
                <button type="submit"
                    class="w-full py-3 mt-2 font-medium tracking-widest text-white uppercase bg-black shadow-lg focus:outline-none hover:bg-gray-900 hover:shadow-none">
                    Log in
                </button>
                <p class="flex justify-between inline-block mt-4 text-xs text-gray-500 ">Don't have an account ? <a
                        href="register.jsp"
                        class="text-black-700 hover:underline dark:text-black-500 cursor-pointer hover:text-black">Create
                        account</a> </p>
            </form>
        </div>
    </div>
</body>

</html>