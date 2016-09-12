<%-- 
    Document   : menuAdm
    Created on : 15/05/2016, 16:19:54
    Author     : Castblam-Note1
--%>


<%@page language="java" %>
<%@page import= "db.Consultas"%>
<%@page import = "modelo.Usuario"%> 
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
              <h1>Lista de usuarios</h1>
            <table border="1">
                <tr>
                    <td>Id</td>
                    <td>Usuario</td>
                    <td>Nombre</td>
                    <td>Apellido</td>
                    <td>Mail</td>
                    <td>Admin</td>
                    <td>Cuenta activada</td>
                </tr>
                <input  name=id type=hidden value="+i+" />
              <%
                        Consultas c = new Consultas();
                        Usuario u = new Usuario();
                LinkedList<Usuario> lista = c.getUsuarios();
                    for (int i=0;i<lista.size();i++)
                       {
                        out.println("<tr>");
                        out.println("<td>"+lista.get(i).getId()+"</td>");
                        out.println("<td>"+lista.get(i).getUsername()+"</td>");
                        out.println("<td>"+lista.get(i).getNombre()+"</td>");
                        out.println("<td>"+lista.get(i).getApellido()+"</td>");
                        out.println("<td>"+lista.get(i).getMail()+"</td>");
                        if (lista.get(i).getEstado_adm())
                        out.println("<td>Si</td>");
                        else out.println("<td>No</td>");
                        if (lista.get(i).getEstado_cuenta()){
                             out.println("<td>No<form action=ControlUsuarios method=post><input  name=id type=hidden value="+i+"> <button type=submit> Activar </button></form></td>");}
                        else {
                            out.println("<td>Si<form action=ControlUsuarios method=post><input  name=id type=hidden value="+i+"> <button type=submit> Desactivar </button></form></td>");
                        
                        }
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
