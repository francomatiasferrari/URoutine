<%-- 
    Document   : menuAdm
    Created on : 15/05/2016, 16:19:54
    Author     : Castblam-Note1
--%>


<%@page language="java" %>
<%@page import= "db.Consultas"%>
<%@page import = "modelo.Ejercicio"%> 
<%@page import = "java.util.LinkedList"%> 
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

                <li><a href="usuarios.jsp">Usuarios</a></li>
                <li><a href="ejercicios.jsp">Ejercicios</a></li>    
                <li><a href="cargarejer.jsp">Cargar Ej</a></li>
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
              <h1>Lista de ejercicios</h1>
            <table border="1">
                <tr>
                    <td>Id</td>
                    <td>Nombre</td>
                    <td>Descripcion</td>
                    <td>Fecha aceptacion</td>
                    <td>Fecha Propuesto</td>
                    <td>Rechazado</td>
                    <td>Usuario</td>
                    <td>Administracion</td>
                    <td>Grupo Muscular</td>
                </tr>
              <%
                        Consultas c = new Consultas();
                        Ejercicio e = new Ejercicio();
                LinkedList<Ejercicio> lista = c.getEjercicios();
                    for (int i=0;i<lista.size();i++)
                       {
                        out.println("<tr>");
                        out.println("<td>"+lista.get(i).getCod_ejer()+"</td>");
                        out.println("<td>"+lista.get(i).getNombre_ej()+"</td>");
                        out.println("<td>"+lista.get(i).getDescripcion()+"</td>");
                        if (lista.get(i).getFec_aceptacion()==null){
                             out.println("<td><form action=ControlEjercicios method=post><input  name=id type=hidden value="+i+"> <button type=submit> Aceptar </button></form></td>");}
                        else out.println("<td>"+lista.get(i).getFec_aceptacion()+"</td>");
                        if (lista.get(i).getFec_prop()==null){
                             out.println("<td>Default</td>");}
                        else out.println("<td>"+lista.get(i).getFec_prop()+"</td>");
                        if (lista.get(i).getFec_recha()!=null){
                             out.println("<td>"+lista.get(i).getFec_recha()+"</td>");}
                        else if (lista.get(i).getFec_recha()==null){
                                out.println("<td><form action=ControlEjercicios2 method=post><input  name=id type=hidden value="+i+"> <button type=submit> Rechazar </button></form></td>");}
                             
                        out.println("<td>"+lista.get(i).getId_usu()+"</td>");
                        out.println("<td>"+lista.get(i).getId_usuAdmin()+"</td>");
                        out.println("<td>"+lista.get(i).getCod_grupom()+"</td>");
                        out.println("</tr>");
                        }
              %>
</table>
          </div>
        </div>



      </div>
    </div>
  </section>

</body>

</html>
