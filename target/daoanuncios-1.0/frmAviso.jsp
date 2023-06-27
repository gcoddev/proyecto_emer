<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DAO - frmAviso</title>
        <link rel="stylesheet" href="assets/bootstrap.css"/>
    </head>
    <body>
        <div class="container my-3">
            <h1>
                <c:if test="${aviso.id == 0}">
                    Nuevo registro
                </c:if>
                <c:if test="${aviso.id != 0}">
                    Editar registro
                </c:if>
            </h1>
            <form action="Inicio" method="POST">
                <input type="hidden" name="id" value="${aviso.id}"/>
                <div class="form-group">
                    <label class="form-label" for="titulo">.:: Titulo ::.</label>
                    <input class="form-control" type="text" name="titulo" id="titulo" value="${aviso.titulo}">
                </div>
                <div class="form-group">
                    <label class="form-label" for="contenido">.:: Contenido ::.</label>
                    <textarea class="form-control" name="contenido" id="contenido">${aviso.contenido}</textarea>
                </div>
                <c:if test="${aviso.id == 0}">
                    <input type="submit" value="Agregar registro" class="btn btn-success mt-3">
                </c:if>
                <c:if test="${aviso.id != 0}">
                    <input type="submit" value="Editar registro" class="btn btn-warning mt-3">
                </c:if>
            </form>
        </div>
    </body>
</html>
