<%@ page language="java" import="java.util.*, libreria.*" %>

<html>
    <head>
        <title>Librería -- Insertando un nuevo Libro</title>
    </head>
    <body bgcolor="#ffffee">
        <h1><center>Librería -- Insertando un nuevo Libro</center></h1>
        <table align="center" cellpadding="2" cellspacing="2" border="1" width="80%" bgcolor="#dddddd">
            <tr>
                <th>ISBN:</th>
                <td><%= request.getParameter ("isbn") %></td>
            </tr>
            <tr>
                <th>Editorial:</th>
                <td><%= request.getParameter ("editorial") %></td>
            </tr>
            <tr>
                <th>Autor:</th>
                <td><%= request.getParameter ("autor") %></td>
            </tr>
            <tr>
                <th>Categoría:</th>
                <td><%= request.getParameter ("categoria") %></td>
            </tr>
            <tr>
                <th>Título:</th>
                <td><%= request.getParameter ("titulo") %></td>
            </tr>
            <tr>
                <th>Ubicación:</th>
                <td><%= request.getParameter ("ubicacion") %></td>
            </tr>
        </table>
<%
            LibrosBD librosBD = (LibrosBD) application.getAttribute ("BaseDatos");
            Libro libro = new Libro  (
                null,
                request.getParameter ("isbn"),
                request.getParameter ("editorial"),
                request.getParameter ("autor"),
                request.getParameter ("categoria"),
                request.getParameter ("titulo"),
                request.getParameter ("ubicacion")
            );
            int rowsAffected = librosBD.insertarLibro(libro);
            if (rowsAffected == 1) {
%>
                <center>
                    <h2><font color="#00cc00">Se ha añadido a la Base de Datos</font></h2>
                </center>
<%
            }
            else {
%>
                <center>
                    <h2><font color="#cc0000">No se ha podido Añadir el registro</font></h2>
                </center>
<%
            }
%>
        <hr>
        <center>
            <b><a href="Index.jsp">Volver a la Página Inicial</a></b>
        </center>
    </body>
</html>