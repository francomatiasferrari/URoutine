/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import modelo.Usuario;

/**
 *
 * @author Carlos
 */
@WebServlet
@MultipartConfig
public class ControlPerfil extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        //------ empieza lineas de carga de foto
        //InputStream inputStream = null;
        HttpSession miSesion=request.getSession(false);
        Usuario miUsuario = (Usuario)miSesion.getAttribute("usuarioActual");
        Part filePart = request.getPart("foto");
        InputStream foto = filePart.getInputStream();
        
        if (filePart != null) 
        {
            //System.out.println(filePart.getName());
            //System.out.println(filePart.getSize());
            //System.out.println(filePart.getContentType());
                        
            miUsuario.setFoto(foto);            
            Boolean b;
            try {
                b = miUsuario.actualiza();
                miSesion.setAttribute("cambios",b);
                response.sendRedirect("perfil.jsp");
            } catch (SQLException ex) {
                Logger.getLogger(ControlPerfil.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        //------- termina lineas de carga de foto
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
