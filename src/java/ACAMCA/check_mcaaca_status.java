/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ACAMCA;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.simple.JSONObject;

/**
 *
 * @author GNyabuto
 */
public class check_mcaaca_status extends HttpServlet {

    HttpSession session;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String load_type,message;
int pos=0;
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        session = request.getSession();
        
        int filesngapi=0;
        
        try {
            
         load_type = request.getParameter("load_type");
         
         filesngapi = new Integer(request.getParameter("idadiyafiles"));
         
         session.setAttribute("filesngapi", filesngapi);
         
            JSONObject obj = new JSONObject();
         pos = 0;
         message = "Uknown Excel Loads";
         

         if(load_type.equalsIgnoreCase("mcaaca"))
         {
             if(session.getAttribute("acamcapos")!=null)
             {
             message = session.getAttribute("acamcapos").toString();
             if(isNumeric(session.getAttribute("acamcapos_count").toString()))
             {
             pos = Integer.parseInt(session.getAttribute("acamcapos_count").toString());
             }
             }
         }
         
         
          if(load_type.equalsIgnoreCase("hca"))
         {
             if(session.getAttribute("hcapos")!=null)
             {
             message = session.getAttribute("hcapos").toString();
             if(isNumeric(session.getAttribute("hcapos_count").toString()))
             {
             pos = Integer.parseInt(session.getAttribute("hcapos_count").toString());
             }
             }
         }
         
//        if(load_type.equalsIgnoreCase("covid"))
//        {
//             if(session.getAttribute("covidpos")!=null){
//             message = session.getAttribute("covidpos").toString();
//             if(isNumeric(session.getAttribute("covidpos_count").toString())){
//             pos = Integer.parseInt(session.getAttribute("covidpos_count").toString());
//             }
//             }
//         }
//       
         
         obj.put("count", pos);
         obj.put("message", message);
         
            out.println(obj);
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

public boolean isNumeric(String s) {  
    return s != null && s.matches("[-+]?\\d*\\.?\\d+");  
}
}
