<%-- 
    Document   : perfil
    Created on : 05/06/2016, 16:11:25
    Author     : Carlos
--%>

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

           <form name="cargaej" class="customform padding" action="CargarEjercicio" method="post">

               <div class="s-12 m-8 l-6 padding">
                <input required name="nombre" placeholder="Nombre" title="Nombre" type="text" />
               </div>
               <div class="s-12 m-8 l-6 padding">
                <select name="grupom">
                   <option value="1">Espalda</option> 
                   <option value="2">Pecho</option> 
                   <option value="3">Biceps</option>
                   <option value="4">Triceps</option> 
                   <option value="5">Piernas</option> 
                   <option value="6">Hombros</option> 
                </select>
               </div>
               <div class="s-12 m-12 l-12 padding">
                <input required name="descripcion" placeholder="Descripcion" title="Descripcion" type="text" />
               </div>
               <div class="s-12 m-2 l-2 padding">
                Foto 1
               </div>
               <div class="s-12 m-10 l-10 padding">
                <input required name="foto1" placeholder="Foto 1" title="Foto 1" type="file" />
               </div>
               <div class="s-12 m-2 l-2 padding">
                Foto 2
               </div>
               <div class="s-12 m-10 l-10 padding">
                <input required name="foto2" placeholder="Foto 2" title="Foto 2" type="file" />
               </div>
				<div class="line s-12 m-12 l-12 right ">
                 <button class="submit-form button background-primary border-radius text-white" type="submit">Registrar</button>
               </div>
</form>

          </div>
        </div>



      </div>
    </div>
  </section>

</body>

</html>
