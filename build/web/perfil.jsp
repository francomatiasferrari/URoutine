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

                <li><a href="menu.jsp">Hoy</a></li>
                <li><a href="rutina.jsp">Rutina</a></li>
                <li><a href=#>Proponer ejercicio</a></li>
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

            datos del perfil

          </div>
        </div>



      </div>
    </div>
  </section>

</body>

</html>
