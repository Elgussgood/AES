<%@ page language="java" import="java.util.*, libreria.*" %>

<html>
    <head>
        <title>Librería -- Borrando el Libro <%= request.getParameter ("id") %></title>
    </head>
    <body bgcolor="#ffffee">
        <h1><center>Librería -- Borrando el Libro <%= request.getParameter ("id") %></center></h1>
<%
        LibrosBD librosBD = (LibrosBD) application.getAttribute ("BaseDatos");
        Libro libro = (Libro) librosBD.getLibro (request.getParameter ("id"));
        if (libro != null){
%>
            <table align="center" cellpadding="2" cellspacing="2" border="1" width="80%" bgcolor="#dddddd">
                <tr>
                    <th>ISBN:</th>
                    <td><input name="isbn" type="text" value="<%= libro.getIsbn () %>"></td>
                </tr>
                <tr>
                    <th>Editorial:</th>
                    <td><input name="editorial" type="text" value="<%= libro.getEditorial() %>"></td>
                </tr>
                <tr>
                    <th>Autor:</th>
                    <td><input name="autor" type="text" value="<%= libro.getAutor () %>"></td>
                </tr>
                <tr>
                    <th>Categoría:</th>
                    <td><input name="categoria" type="text" value="<%= libro.getCategoria () %>"></td>
                </tr>
                <tr>
                    <th>Título:</th>
                    <td><input name="titulo" type="text" value="<%= libro.getTitulo () %>"></td>
                </tr>
                <tr>
                    <th>Ubicación:</th>
                    <td><input name="ubicacion" type="text" value="<%= libro.getUbicacion () %>"></td>
                </tr>
            </table>
            <br>
            <center>
                <b><a href="Borrar.jsp?id=<%= libro.getId () %>">Borrar el libro <%= request.getParameter ("id") %></a></b>
            </center>
<%
        }
        else {
%>
            <center>
                <h2><font color="#cc0000">No se pudo encontrar el libro <%= request.getParameter ("id") %></font></h2>
            </center>
<%
        }
%>
        <hr>
        <center>
            <b><a href="Index.jsp">Volver a la Página Inicial [el libro no se borrará]</a></b>
        </center>
    </body>
</html>