/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FPT;

import General.IdGenerator;
import database.dbConn;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.json.JSONArray;
import org.json.JSONObject;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable;


/**
 *
 * @author EKaunda
 */
public class ReportsTracker extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try  {
            /* TODO output your page here. You may use following sample code. */
            
       IdGenerator IG = new IdGenerator();
        String createdOn = IG.CreatedOn();
        
        
            
        dbConn conn = new dbConn();
            
     //________________________________________________________________________________________
        
  
            
            
            
            
            
       String year="";
       IdGenerator dats= new IdGenerator();
        
        String startdate="2019-10-01";
        String enddate=IG.toDay();
      
        String county="";
        if(request.getParameter("startdate")!=null)
        {
        startdate=request.getParameter("startdate");
        }
        
        if(request.getParameter("enddate")!=null)
        {
            enddate=request.getParameter("enddate");
        }
        

        if(request.getParameter("county")!=null)
        {
         county=request.getParameter("county");
        }
        
        
        //========Query 1=================
        
        String orgunits="  ( `date` between  '"+startdate+"' and '"+enddate+"' )  ";
        
        
        
        if(!county.trim().equals(""))
        {
        orgunits+=" and  countyid in ('"+county+"') ";
        }
        
     
        String subcounty="(";
        String subcountyar[]=null;
        
       subcountyar=request.getParameter("subcounty").split(","); 
       
       if(request.getParameter("subcounty")!=null)
       {
           if(!request.getParameter("subcounty").equals("")){
       
       for(int a=0;a<subcountyar.length;a++)
       {
       
           if(a==subcountyar.length-1)
           {
               
            subcounty+="'"+subcountyar[a]+"')";  
            
           }
     else {
               
       subcounty+="'"+subcountyar[a]+"',"; 
       
          }
           
           
       }
           System.out.println(" array length "+subcountyar.length);
       }
       }
        
        if(!subcounty.equals("(") )
        {
         orgunits+=" and `subcountyid` in "+subcounty+" ";
        }
        
       
        //_______________________________________________________________________________________________
        
        
        String mfl="(";
        String facilityar[]=null;
        
       facilityar=request.getParameter("facility").split(","); 
       
       if(request.getParameter("facility")!=null)
       {
           if(!request.getParameter("facility").equals("")){
       
       for(int a=0;a<facilityar.length;a++)
       {
       
           if(a==facilityar.length-1)
           {
               
            mfl+="'"+facilityar[a]+"')";  
            
           }
     else {
               
       mfl+="'"+facilityar[a]+"',"; 
       
          }
           
           
       }
           System.out.println(" facility array length "+facilityar.length);
       
       }}
        
        
        if(!mfl.equals("(") )
        {
            
         orgunits+=" and `MFLcode` in "+mfl+" ";
        
        }
        
        
        
        //_______________________________________________________________________________________________
        
               
                int count1  = 1;
        
       JSONArray ar= new JSONArray(); 
        
        //========Query two====Facility Details==============
        
        String qry = "SELECT * FROM fpt_tracker where "+orgunits+" ;";
        System.out.println(qry);
        conn.rs = conn.st.executeQuery(qry);
        
         ResultSetMetaData metaData = conn.rs.getMetaData();
        int columnCount = metaData.getColumnCount();

         metaData = conn.rs.getMetaData();
         columnCount = metaData.getColumnCount();
         int count = count1;
         ArrayList mycolumns = new ArrayList();

         while (conn.rs.next()) {

//County
//Sub-county
//Facility Name
//MFLCode
//Date
//Day
//weekday 
//indicator
//reports_count
  
        JSONObject obj = new JSONObject();

            
          obj.put("County",conn.rs.getString("county"));
          obj.put("Subcounty",conn.rs.getString("Subcounty"));
          obj.put("facility",conn.rs.getString("Facility"));
          obj.put("mflcode",conn.rs.getString("MFLcode"));
          obj.put("date",conn.rs.getString("date"));
          obj.put("month",conn.rs.getString("Month"));          
          obj.put("indicator",conn.rs.getString("indicator"));
          obj.put("report",conn.rs.getString("reports_count"));
             
          ar.put(obj);
      
            count++;
        }

 

     
        
        if(conn.rs!=null){conn.rs.close();}
        if(conn.rs1!=null){conn.rs1.close();}
        if(conn.st!=null){conn.st.close();}
        if(conn.st1!=null){conn.st1.close();}
        if(conn.conn!=null){conn.conn.close();}
        
        
       out.println(ar);

            
            
            //________________________________________________________________________________________
        } catch (SQLException ex) {
            Logger.getLogger(ReportsTracker.class.getName()).log(Level.SEVERE, null, ex);
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
