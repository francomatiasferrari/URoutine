<%-- 
    Document   : menuAdm
    Created on : 15/05/2016, 16:19:54
    Author     : Castblam-Note1
--%>

<html>
<head>
  <meta charset="UTF-8">
  <meta name="gym" content="width=device-width, initial-scale=1.0" />
  <title>URoutine</title>
  <jsp:include page="ControlMenuAdm" flush="true"/> 
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

                <li><a href="#">Usuarios</a></li>
                <li><a href="#">Ejercicios</a></li>                
                <li><a href="perfil.jsp">Perfil</a></li>
                <li>
                    <form action="Salir" method="get" name="salir">
			<p> <button type=submit> Salir </button></p>
                    </form>
                </li>
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
              
            <label>INFORMACION DE USUARIOS</label>
            	<%String usu = (String)session.getAttribute("cantUsu");%>
            	<%String usuAdm = (String)session.getAttribute("cantAdm");%>
            	<%String usuBan = (String)session.getAttribute("cantUsuBan");%>
            	<table width="600" border="2" cellspacing="2">
      				<tbody>
                        <tr>
                          <th scope="col">Usuarios</th>
                          <th scope="col">Administradores</th>
                          <th scope="col">Usuarios en baja</th>
                        </tr>
                        <tr>
                          <td><%= usu %></td>
                          <td><%= usuAdm %></td>
                          <td><%= usuBan %></td>
                        </tr>
                     </tbody>
                   </table>
              <label>INFORMACION DE EJERCICIOS</label>
             	<%String ejer = (String)session.getAttribute("cantEjer");%>
            	<%String ejerPen = (String)session.getAttribute("cantEjerPen");%>
            	<%String ejerBan = (String)session.getAttribute("cantEjerBan");%>
            	<table width="600" border="2" cellspacing="2">
      				<tbody>
                        <tr>
                          <th scope="col">En uso</th>
                          <th scope="col">Pendientes</th>
                          <th scope="col">Baneados</th>
                        </tr>
                        <tr>
                          <td><%= ejer %></td>
                          <td><%= ejerPen %></td>
                          <td><%= ejerBan %></td>
                        </tr>
                     </tbody>
                   </table>
                        
          </div>
        </div>



      </div>
    </div>
  </section>

</body>

</html>
