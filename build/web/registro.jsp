<html>
<head>
  <meta charset="UTF-8">
  <meta name="gym" content="gym, exercise, routines, fitness" />
  <link type="images/ico" rel="icon" href="images/logo_fav.ico">
  <title>URoutine</title>
  <link rel="stylesheet" href="css/components.css">
  <link rel="stylesheet" href="css/responsee.css">
  <link rel="stylesheet" href="owl-carousel/owl.carousel.css">
  <link rel="stylesheet" href="owl-carousel/owl.theme.css">
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

            <div class="s-12 m-8 l-8  padding">
              <h2>Formulario de registro<h2>
            </div>
             <form name="registro" class="customform padding" action="RegistroUsuario" method="post">

               <div class="s-12 m-8 l-6 padding">
                <input required name="nombre" placeholder="Nombre" title="Nombre" type="text" />
               </div>
               <div class="s-12 m-8 l-6 padding">
                <input required name="apellido" placeholder="Apellido" title="Apellido" type="text" />
               </div>

               <div class="line">
                 <div class=" s-12 m-8 l-3 padding">
                   Fecha de nacimiento:
                 </div>
                 <div class=" s-12 m-8 l-9 padding">
                   <input required name="birthdate" type="date" title="Fecha de nacimiento"/>
                  </div>
                </div>

               <div class="s-12 m-8 l-12 padding">
                 <input required name="username" placeholder="Usuario" title="Usuario" type="text" />
               </div>

               <div class="s-12 m-8 l-6 padding ">
                 <input required name="password1" placeholder="Contraseña" type="password" title="Contraseña"/>
               </div>
               <div class="s-12 m-8 l-6  padding">
                 <input required name="password2" placeholder="Confirme contraseña" type="password" title="Contraseña"/>
               </div>

               <div class="s-12 m-8 l-12 padding ">
                 <input required name="mail" placeholder="Email" type="email" title="E-mail"/>
               </div>

               <div class="line s-12 m-8 l-6 right ">
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
