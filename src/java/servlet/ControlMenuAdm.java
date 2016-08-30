/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import db.Consultas;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Castblam-Note1
 */
public class ControlMenuAdm extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        HttpSession miSesion=request.getSession(false);
        int cantAdm = 0;
        int cantUsu = 0;
        int cantUsuBan = 0;
        int cantEjer = 0;
        int cantEjerPen = 0;
        int cantEjerBan = 0;
        
        Consultas con = new Consultas();
        cantAdm = con.TraerCantUsu("1","0");
        cantUsu = con.TraerCantUsu("0","0");
        cantUsuBan = con.TraerCantUsu("0","1") + con.TraerCantUsu("1","1");
        cantEjer = con.TraerCantEjer(" not "," ");
        cantEjerPen = con.TraerCantEjer(" "," ");
        cantEjerBan = con.TraerCantEjer(" not "," not ");
        
        String scantAdm = Integer.toString(cantAdm);
        String scantUsu = Integer.toString(cantUsu);
        String scantUsuBan = Integer.toString(cantUsuBan);
        String scantEjer = Integer.toString(cantEjer);
        String scantEjerPen = Integer.toString(cantEjerPen);
        String scantEjerBan = Integer.toString(cantEjerBan);
        
        miSesion.setAttribute("cantAdm", scantAdm);
        miSesion.setAttribute("cantUsu", scantUsu);
        miSesion.setAttribute("cantUsuBan", scantUsuBan);
        miSesion.setAttribute("cantEjer", scantEjer);
        miSesion.setAttribute("cantEjerPen", scantEjerPen);
        miSesion.setAttribute("cantEjerBan", scantEjerBan);
        
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ValidacionLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ValidacionLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
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
