<%-- 
    Document   : perfil
    Created on : 05/06/2016, 16:11:25
    Author     : Carlos
--%>

<%@page import="modelo.Usuario"%>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="gym" content="width=device-width, initial-scale=1.0" />
  <title>URoutine</title>
  <link rel="stylesheet" href="css/estilos.css">
  <link rel="stylesheet" href="css/components.css">
  <link rel="stylesheet" href="css/responsee.css">
  <link href='css/fonts.css' rel='stylesheet' type='text/css'>
  <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="js/jquery-ui.min.js"></script>
  <script type="text/javascript" src="js/modernizr.js"></script>
  <script type="text/javascript" src="js/responsee.js"></script>
  <!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
  <![endif]-->
</head>
<body>
  <header>

      <div class="line box margin-bottom">
        <nav>
          <div class="s-12 l-2">
              <img src="images/logo.svg">
          </div>

          <div class="top-nav s-12 l-10">
            <p class="nav-text"></p>
              <ul class="right">

                <%Boolean adm = (Boolean)session.getAttribute("adm");
                   
                if (adm) {
                out.println("<li><a href=menuAdm.jsp>Hoy</a></li>");
                out.println("<li><a href=usuarios.jsp>Usuarios</a></li>");
                out.println("<li><a href=ejercicios.jsp>Ejercicios</a></li>");
                out.println("<li><a href=cargarejer.jsp>Cargar Ej</a></li>");
                out.println("<li><a href=perfil.jsp>Perfil</a></li>");
                out.println("<li><form action=Salir method=get name=salir><p> <button type=submit> Salir </button></p></form></li>");
                        }
                    else {
                    out.println("<li><a href=menu.jsp>Hoy</a></li>");
                out.println("<li><a href=rutina.jsp>Rutina</a></li>");
                out.println("<li><a href=cargarejer.jsp>Proponer Ejercicio</a></li>");
                out.println("<li><a href=perfil.jsp>Perfil</a></li>");
                out.println("<li><form action=Salir method=get name=salir><p> <button type=submit> Salir </button></p></form></li>");
                }
                %>
                
              </ul>
          </div>
      </nav>
    </div>


  </header>

  <section>
    <div class="size-960">
      <div class="line">

        <div class="margin">
          <div class="box margin-bottom">

            <% Usuario usuario = (Usuario)session.getAttribute("usuarioActual"); %>
            Nombre: <%=(usuario.getNombre())%>
            <br>
            Apellido: <%=(usuario.getApellido())%>
            <br>
            Mail: <%=(usuario.getMail())%>
            <br>
            Fecha de nacimiento <%=(usuario.getFec_nac())%>
            <br>
            Nombre de usuario: <%=(usuario.getUsername())%>
            <br>
            <!-- AGREGAR BOTON PARA EDITAR CONTRASEÑA TAMBIEN -->
            Contraseña: <%=(usuario.getPass())%>
            <br>             
            <form name="guardar_cambios" action="ControlPerfil" method="post" enctype="multipart/form-data">
                Foto: <% //(usuario.getFoto())%>
                <input type="file" id="foto" name="foto">
                <input type="submit" name="enviar" value="Guardar cambios">
            </form>
            <div id="vista">
                <!-- ACA VA LA VISTA EN MINIATURA -->
            </div>
            <%
            //if((Boolean)session.getAttribute("cambios")){
            //    out.println("<div>SE GUARDO LA FOTO!<div>");
            //}else{
            //    out.println("<div>NO SE GUARDO LA FOTO!<div>");
            //}           
            %>
            <script>
                window.addEventListener('load', inicio, false);
                function inicio() {
                    document.getElementById('foto').addEventListener('change', cargar, false);               
                }
                function cargar(ev) {
                    var arch=new FileReader();
                    arch.addEventListener('load',leer,false);
                    arch.readAsDataURL(ev.target.files[0]);
                }
                function leer(ev) {
                    document.getElementById('vista').style.backgroundImage="url('" + ev.target.result + "')";
                }
            </script>
            
          </div>
        </div>



      </div>
    </div>
  </section>

</body>

</html>