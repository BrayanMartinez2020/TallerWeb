<%-- 
    Document   : ProductoVTA
    Created on : 26/11/2020, 03:47:27 PM
    Author     : braya
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-15">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Productos</h1>
        <div>
            <form action ="ProductoCTO?menu=Producto" method="POST">
                <label>Nombre producto</label>
                <input type="text" name="txt_nombre_pro" required>
                <label>Descripcion producto</label>
                <input type="text" name="txt_descripcion_pro">
                <label>Unidades producto</label>
                <input type="text" name="txt_unidades_pro" required>
                <label>Valor producto</label>
                <input type="text" name="txt_valor_pro" required>
                <input type="submit" name="accion" value="Agregar">
            </form>
        </div>
        <table>
            <thead>
                <tr>
                    <th>N° Id</th>
                    <th>Nombre</th>
                    <th>Descripcion</th>
                    <th>Unidades</th>
                    <th>Valor</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="objP" items="${lista_productos}">
                    <tr>
                        <td>${objP.getId_pro()}</td>
                        <td>${objP.getNombre_pro()}</td>
                        <td>${objP.getDescripcion_pro()}</td>
                        <td>${objP.getUnidades_pro()}</td>
                        <td>${objP.getValor_pro()}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>

