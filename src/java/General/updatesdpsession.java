/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package General;

import database.dbConn;
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
 * @author EKaunda
 */
public class updatesdpsession extends HttpServlet {

   HttpSession session;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
        session= request.getSession();
        String sdp="";
        String sdplist="<option title='Service Delivery point' value=''>---Select SDP--</option>";
        
        if(request.getParameter("sdp")!=null){
        sdp=request.getParameter("sdp");
        }
        
           String getsdp="select * from hts_sdp";
           dbConn conn = new dbConn();
           
           conn.rs=conn.st.executeQuery(getsdp);
           
           while(conn.rs.next()){
           if(conn.rs.getString("sdpid").equalsIgnoreCase("sdp")){
           sdplist+="<option selected value='"+conn.rs.getString("sdpid")+"'>"+conn.rs.getString("sdp")+"</option>";
           }
           else{
           sdplist+="<option  value='"+conn.rs.getString("sdpid")+"'>"+conn.rs.getString("sdp")+"</option>";
           }
           
           
           }
           
           
           session.setAttribute("sdp", sdplist);
         out.println(sdplist);
           
        } catch (SQLException ex) {
           Logger.getLogger(updatesdpsession.class.getName()).log(Level.SEVERE, null, ex);
       } finally {
            out.close();
        }
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
