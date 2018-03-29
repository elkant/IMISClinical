/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GapAnalysis;

import database.dbConnWeb;
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
 * @author GNyabuto
 */
public class gaps extends HttpServlet {
HttpSession session;
String output,where,query;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
          session = request.getSession();
        dbConnWeb conn = new dbConnWeb();
        
        where=" WHERE 1=1 AND ";
        if(request.getParameter("county")!=null){
         if(!request.getParameter("county").equals("")){
          where = where+ " county='"+request.getParameter("county")+"' AND ";  
        }   
        }
        
        if(request.getParameter("subcounty")!=null){
         if(!request.getParameter("subcounty").equals("")){
          where =where+ " sub_county='"+request.getParameter("subcounty")+"' AND ";  
        }   
        }
        
         if(request.getParameter("year")!=null){
         if(!request.getParameter("year").equals("")){
          where = where+ " year='"+request.getParameter("year")+"' AND ";  
        }   
        }
         
          if(request.getParameter("month")!=null){
         if(!request.getParameter("month").equals("")){
          where = where+ " month='"+request.getParameter("month")+"' AND ";  
        }   
        }
          if(request.getParameter("facility")!=null){
         if(!request.getParameter("facility").equals("")){
          where = where+ " facility='"+request.getParameter("facility")+"' AND ";  
        }   
        }
          
          
        where = removeLast(where, 5);
        
        output="<option value =\"\">Choose Gap</option>";
        String getgaps = "SELECT DISTINCT(gap) AS county,program_area FROM gaps "+where+" GROUP BY gap ORDER BY program_area,gap";
            System.out.println("getgaps : ");
        conn.rs = conn.st.executeQuery(getgaps);
        while(conn.rs.next()){
         output+="<option value =\""+conn.rs.getString(1)+"\">"+conn.rs.getString(2)+",  "+conn.rs.getString(1)+"</option>";   
        }   
            out.println(output);
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
    try {
        processRequest(request, response);
    } catch (SQLException ex) {
        Logger.getLogger(gaps.class.getName()).log(Level.SEVERE, null, ex);
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
        Logger.getLogger(gaps.class.getName()).log(Level.SEVERE, null, ex);
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

          public String removeLast(String str, int num) {
    if (str != null && str.length() > 0) {
        str = str.substring(0, str.length() - num);
    }
    return str;
    }
}
