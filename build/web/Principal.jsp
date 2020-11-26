<%-- 
    Document   : Principal
    Created on : 26/11/2020, 03:46:56 PM
    Author     : braya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="node_modules/open-iconic/font/css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href ="css/Estilos.css"  type="text/css"><link>

        <title>JSP Page</title>
    </head>
    <body>
        <nav>
            <div id="navbarNav">
                <ul>
                    <li>
                        <a style="margin-left: 10px; border: none" href="#">Inicio</a>
                    </li>
                    <li>
                        <a style="margin-left: 10px; border: none" href="ProductoCTO?menu=Producto&accion=Listar" target="Frame">Producto</a>
                    </li>
                    <li>
                        <a style="margin-left: 10px; border: none" href="#" target="Frame">Cuenta</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div style="height: 530px">
            <iframe name="Frame" style="height: 100%; width: 100%; border: 2px"></iframe>
        </div>
    </body>
</html>
