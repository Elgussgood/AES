<%@ page language="java" import="java.util.*, libreria.*" %>

<html>
    <head>
        <title>Librer�a: Insertar un nuevo libro</title>
    </head>
    <body bgcolor="#ffffee">
        <h1><center>Librer�a: Insertar un nuevo libro</center></h1>
        <form method="post" action="Insertar.jsp">
        <table align="center" cellpadding="2" cellspacing="2" border="1" width="80%" bgcolor="#dddddd">
            <tr>
                <th>ISBN:</th>
                <td><input name="isbn" type="text"></td>
            </tr>
            <tr>
                <th>Editorial:</th>
                <td><input name="editorial" type="text"></td>
            </tr>
            <tr>
                <th>Autor:</th>
                <td><input name="autor" type="text"></td>
            </tr>
            <tr>
                <th>Categor�a:</th>
                <td><input name="categoria" type="text"></td>
            </tr>
            <tr>
                <th>T�tulo:</th>
                <td><input name="titulo" type="text"></td>
            </tr>
            <tr>
                <th>Ubicaci�n:</th>
                <td><input name="ubicacion" type="text"></td>
            </tr>
        </table>
        <br>
        <center>
            <input name="pagemode" type="hidden" value="submit">
            <input type="submit" value="A�adir el nuevo libro">
        </center>
        <hr>
        <center>
            <b><a href="index.jsp">Volver a la P�gina Inicial [el libro no se a�adir�]</a></b>
        </center>
    </body>
</html>