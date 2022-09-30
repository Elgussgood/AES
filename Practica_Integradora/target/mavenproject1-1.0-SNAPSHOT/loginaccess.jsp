<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login Accesso</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/landing-page.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        
        <div class="content-section-a">

        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    
                    <hr class="section-heading-spacer">
                    
                    <div class="clearfix"></div>
                    
                   
                    <h1>Los datos introducidos son:</h1>
        
                    <%

                            String email=(String)request.getParameter("email");
                            String prefieres=(String)request.getParameter("pass");

                            out.print("Tu correo es: "+request.getParameter("email"));
                            out.print("<br/>");
                            out.print("Tu contraseña es: "+request.getParameter("pass"));
                            out.print("<br/>");
                            out.print("<br/>");
                            /*podemos usar los datos directamente desde el request*/
                            out.print("Bienvenido a jsp "+ request.getParameter("email").toString().toUpperCase());

                    %>

                    <br><br><a href="index.jsp">Regresar al inicio</a>
        
                
                            
                    <hr class="section-heading-spacer">
                    
                
                </div>
                
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                    <img class="img-responsive" src="img/registro.jpg" alt="">
                </div>
                
            </div>

        </div>
        

    </div>
        
    </body>
</html>
