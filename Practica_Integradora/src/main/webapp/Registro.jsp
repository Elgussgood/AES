<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Registro</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/landing-page.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    
    <script type="text/javascript">
        function showContent() {
            element = document.getElementById("content");
            check = document.getElementById("tarjeta");
            if (check.checked) {
                element.style.display='block';
            }
            else {
                element.style.display='none';
            }
        }
    </script>
    
    <script>
        function limpiar(cual, accion){
        // Action: 0=Deseleccionar todos 1=Seleccionar todos -1=Invertir seleccion
                var f = document.formulario
                for (var i=0; i<f.elements.length; i++){
                        var obj = f.elements[i]
                        var name = obj.name
                        if (name==cual){
                                obj.checked = ((accion==1)? true : ((accion==0)? false : !obj.checked) );
                        }
                }
        }
     </script>

</head>

<body>

    <div class="content-section-a">

        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    
                    <hr class="section-heading-spacer">
                    
                    <div class="clearfix"></div>
                    
                    <h2 class="section-heading">Registro de Usuarios</h2>
                
                            <form name="formulario" action="index.jsp" method="post">
                                Nombre :  <input type="text" name="Nombre"/><br/><br/>
                                Paterno:  <input type="text" name="ApPaterno"/><br/><br/>
                                Materno:  <input type="text" name="ApMaterno"/><br/><br/>
                                Teléfono: <input type="text" name="telefono"/><br/><br/>
                                Dirección: <input type="text" name="direccion"/><br/><br/>
                                Correo:    <input type="text" name="email"/><br/><br/>
                                Contraseña: <input type="password" name="pass"/><br/><br/>
                                                                
                                <fieldset>
                                    <legend>Elige la Forma de Pago</legend>
                                    <label>
                                        <input type="radio" name="pago" value="efe"> Efectivo
                                    </label> &nbsp; <a href="javascript:limpiar('pago',0)">limpiar</a>
                                    <br>
                                    <br>
                                    <b>Tarjeta de Crédito o Débito</b>
                                        <input type="checkbox" name="tarjeta" id="tarjeta" id="tarjeta" value="0" onchange="javascript:showContent()" />

                                        <div id="content" style="display: none;">
                                        <br>
                                            Número de Tarjeta: <input type="password" name="tarjeta"/><br/>
                                        </div>
                                </fieldset>
                                <br>
                                <br>
                                <input type="submit" value="Registrar"/>
                                
                            </form>
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

