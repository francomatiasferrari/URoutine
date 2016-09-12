package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<html>\n");
      out.write("<head>  \n");
      out.write("  <meta charset=\"UTF-8\">\n");
      out.write("  <meta name=\"gym\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("  <title>URoutine</title>\n");
      out.write("  <link rel=\"stylesheet\" href=\"css/estilos.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"css/components.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"css/responsee.css\">\n");
      out.write("  <link href='css/fonts.css' rel='stylesheet' type='text/css'>\n");
      out.write("  <script type=\"text/javascript\" src=\"js/jquery-1.8.3.min.js\"></script>\n");
      out.write("  <script type=\"text/javascript\" src=\"js/jquery-ui.min.js\"></script>\n");
      out.write("  <script type=\"text/javascript\" src=\"js/modernizr.js\"></script>\n");
      out.write("  <script type=\"text/javascript\" src=\"js/responsee.js\"></script>\n");
      out.write("  <!--[if lt IE 9]>\n");
      out.write("    <script src=\"http://html5shiv.googlecode.com/svn/trunk/html5.js\"></script>\n");
      out.write("    <script src=\"http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js\"></script>\n");
      out.write("  <![endif]-->\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("  <header>\n");
      out.write("    <div class=\"line margin-bottom\">\n");
      out.write("       <div class=\"box\">\n");
      out.write("          <div class=\"s-6 l-2\">\n");
      out.write("             <img src=\"images/logo.svg\">\n");
      out.write("          </div>\n");
      out.write("       </div>\n");
      out.write("    </div>\n");
      out.write("  <header>\n");
      out.write("\n");
      out.write("  <section>\n");
      out.write("    <div class=\"size-960\">\n");
      out.write("      <div class=\"line\">\n");
      out.write("\n");
      out.write("        <div class=\"margin\">\n");
      out.write("          <div class=\"box margin-bottom\">\n");
      out.write("\n");
      out.write("             <form name=\"login\" class=\"customform\" action=\"ValidacionLogin\" method=\"post\">\n");
      out.write("               <div class=\"line\">\n");
      out.write("                 <div class=\"margin\">\n");
      out.write("                   <div class=\"s-12 m-8 l-6 center\">\n");
      out.write("                     <input required name=\"username\" placeholder=\"Usuario\" title=\"Usuario\" type=\"text\" />\n");
      out.write("                   </div>\n");
      out.write("                   <div class=\"s-12 m-8 l-6 center\">\n");
      out.write("                     <input required name=\"password\" placeholder=\"ContraseÃ±a\" title=\"ContraseÃ±a\" type=\"password\" />\n");
      out.write("                   </div>\n");
      out.write("                 </div>\n");
      out.write("               </div>\n");
      out.write("               <div class=\"s-12 m-8 l-4 center\"><button class=\"submit-form button background-primary border-radius text-white\" type=\"submit\">Ingresar</button></div>\n");
      out.write("               \n");
      out.write("             </form>\n");
      out.write("\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"margin margin-bottom\">\n");
      out.write("          <div class=\"box\">\n");
      out.write("            <div class=\"line\">\n");
      out.write("              <div class=\"s-12 m-8 l-4 center\">Â¿Todavia no te registrate?<a href=\"registro.jsp\" class=\"vinculos\"> Â¡Registrarme!<a/></div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </section>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
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
