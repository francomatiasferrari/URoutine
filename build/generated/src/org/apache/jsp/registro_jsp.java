package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class registro_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"UTF-8\">\r\n");
      out.write("  <meta name=\"gym\" content=\"gym, exercise, routines, fitness\" />\r\n");
      out.write("  <link type=\"images/ico\" rel=\"icon\" href=\"images/logo_fav.ico\">\r\n");
      out.write("  <title>URoutine</title>\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"css/components.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"css/responsee.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"owl-carousel/owl.carousel.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"owl-carousel/owl.theme.css\">\r\n");
      out.write("  <link href='css/fonts.css' rel='stylesheet' type='text/css'>\r\n");
      out.write("  <script type=\"text/javascript\" src=\"js/jquery-1.8.3.min.js\"></script>\r\n");
      out.write("  <script type=\"text/javascript\" src=\"js/jquery-ui.min.js\"></script>\r\n");
      out.write("  <script type=\"text/javascript\" src=\"js/modernizr.js\"></script>\r\n");
      out.write("  <script type=\"text/javascript\" src=\"js/responsee.js\"></script>\r\n");
      out.write("  <!--[if lt IE 9]>\r\n");
      out.write("    <script src=\"http://html5shiv.googlecode.com/svn/trunk/html5.js\"></script>\r\n");
      out.write("    <script src=\"http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js\"></script>\r\n");
      out.write("  <![endif]-->\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("  <header>\r\n");
      out.write("    <div class=\"line margin-bottom\">\r\n");
      out.write("       <div class=\"box\">\r\n");
      out.write("          <div class=\"s-6 l-2\">\r\n");
      out.write("             <img src=\"images/logo.svg\">\r\n");
      out.write("          </div>\r\n");
      out.write("       </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  <header>\r\n");
      out.write("\r\n");
      out.write("  <section>\r\n");
      out.write("    <div class=\"size-960\">\r\n");
      out.write("      <div class=\"line\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"margin\">\r\n");
      out.write("          <div class=\"box margin-bottom\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"s-12 m-8 l-8  padding\">\r\n");
      out.write("              <h2>Formulario de registro<h2>\r\n");
      out.write("            </div>\r\n");
      out.write("             <form name=\"registro\" class=\"customform padding\" action=\"RegistroUsuario\" method=\"post\">\r\n");
      out.write("\r\n");
      out.write("               <div class=\"s-12 m-8 l-6 padding\">\r\n");
      out.write("                <input required name=\"nombre\" placeholder=\"Nombre\" title=\"Nombre\" type=\"text\" />\r\n");
      out.write("               </div>\r\n");
      out.write("               <div class=\"s-12 m-8 l-6 padding\">\r\n");
      out.write("                <input required name=\"apellido\" placeholder=\"Apellido\" title=\"Apellido\" type=\"text\" />\r\n");
      out.write("               </div>\r\n");
      out.write("\r\n");
      out.write("               <div class=\"line\">\r\n");
      out.write("                 <div class=\" s-12 m-8 l-3 padding\">\r\n");
      out.write("                   Fecha de nacimiento:\r\n");
      out.write("                 </div>\r\n");
      out.write("                 <div class=\" s-12 m-8 l-9 padding\">\r\n");
      out.write("                   <input required name=\"birthdate\" type=\"date\" title=\"Fecha de nacimiento\"/>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("               <div class=\"s-12 m-8 l-12 padding\">\r\n");
      out.write("                 <input required name=\"username\" placeholder=\"Usuario\" title=\"Usuario\" type=\"text\" />\r\n");
      out.write("               </div>\r\n");
      out.write("\r\n");
      out.write("               <div class=\"s-12 m-8 l-6 padding \">\r\n");
      out.write("                 <input required name=\"password1\" placeholder=\"ContraseÃ±a\" type=\"password\" title=\"ContraseÃ±a\"/>\r\n");
      out.write("               </div>\r\n");
      out.write("               <div class=\"s-12 m-8 l-6  padding\">\r\n");
      out.write("                 <input required name=\"password2\" placeholder=\"Confirme contraseÃ±a\" type=\"password\" title=\"ContraseÃ±a\"/>\r\n");
      out.write("               </div>\r\n");
      out.write("\r\n");
      out.write("               <div class=\"s-12 m-8 l-12 padding \">\r\n");
      out.write("                 <input required name=\"mail\" placeholder=\"Email\" type=\"email\" title=\"E-mail\"/>\r\n");
      out.write("               </div>\r\n");
      out.write("\r\n");
      out.write("               <div class=\"line s-12 m-8 l-6 right \">\r\n");
      out.write("                 <button class=\"submit-form button background-primary border-radius text-white\" type=\"submit\">Registrar</button>\r\n");
      out.write("               </div>\r\n");
      out.write("\r\n");
      out.write("             </form>\r\n");
      out.write("\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </section>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
