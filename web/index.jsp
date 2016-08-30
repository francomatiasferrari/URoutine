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
    <div class="line margin-bottom">
       <div class="box">
          <div class="s-6 l-2">
             <img src="images/logo.svg">
          </div>
       </div>
    </div>
  <header>

  <section>
    <div class="size-960">
      <div class="line">

        <div class="margin">
          <div class="box margin-bottom">

             <form name="login" class="customform" action="ValidacionLogin" method="post">
               <div class="line">
                 <div class="margin">
                   <div class="s-12 m-8 l-6 center">
                     <input required name="username" placeholder="Usuario" title="Usuario" type="text" />
                   </div>
                   <div class="s-12 m-8 l-6 center">
                     <input required name="password" placeholder="Contraseña" title="Contraseña" type="password" />
                   </div>
                 </div>
               </div>
               <div class="s-12 m-8 l-4 center"><button class="submit-form button background-primary border-radius text-white" type="submit">Ingresar</button></div>
               
             </form>

          </div>
        </div>

        <div class="margin margin-bottom">
          <div class="box">
            <div class="line">
              <div class="s-12 m-8 l-4 center">¿Todavia no te registrate?<a href="registro.jsp" class="vinculos"> ¡Registrarme!<a/></div>
            </div>
          </div>
        </div>

      </div>
    </div>
  </section>
</body>

</html>
