/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package InternalSystem;

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
 * @author Geofrey Nyabuto
 */
public class loadNutrition extends HttpServlet {

    HttpSession session=null;
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
    response.setContentType("text/html;charset=UTF-8");
    session=request.getSession();
    
    
    dbConn conn=new dbConn();
    //get the existing data for the month, year and facility that is already on session
    
    String month="";      
    String year="";      
    String facil="";
    
    if(session.getAttribute("year")!=null){        
   year=session.getAttribute("year").toString();
    }
      if(session.getAttribute("monthid")!=null){        
   month=session.getAttribute("monthid").toString();
    }
   
        if(session.getAttribute("facilityid")!=null){        
   facil=session.getAttribute("facilityid").toString();
    }
    String tableid=year+"_"+month+"_"+facil;
        
        
    String getexistingdata="select * from nutrition where tableid='"+tableid+"'";
    
    
    
String MCHCCNtrTM="";
String MCHCCNtrTF="";
String MCHCCNtrTT="";
String MCHNtrnCHWTrain="";
String MCHNutChRch="";
String MCHNtrnWasted="";
String MCHNtrnUnderweight="";
String MCHChild5D="";
String MCHNtrnHealthFacility="";
String MCHVaccVitA="";
String MCHNtrnFoodOVC="";
String MCHNtrnFoodPLHIV="";
String MCHNtrnFood="";
String C51DCM="";
String C51DCF="";
String C51DC="";
String C51DAM="";
String C51DAF="";
String C51DA="";
String C51DP="";
String C51DMT="";
String C51DFT="";
String C51DT="";

    
   

    
    conn.rs=conn.st.executeQuery(getexistingdata);
    while(conn.rs.next()){
    
        //now load the column values here
       
MCHCCNtrTM=conn.rs.getString("MCHCCNtrTM");
if(MCHCCNtrTM==null){MCHCCNtrTM=""; }

MCHCCNtrTF=conn.rs.getString("MCHCCNtrTF");
if(MCHCCNtrTF==null){MCHCCNtrTF=""; }

MCHCCNtrTT=conn.rs.getString("MCHCCNtrTT");
if(MCHCCNtrTT==null){MCHCCNtrTT=""; }

MCHNtrnCHWTrain=conn.rs.getString("MCHNtrnCHWTrain");
if(MCHNtrnCHWTrain==null){MCHNtrnCHWTrain=""; }

MCHNutChRch=conn.rs.getString("MCHNutChRch");
if(MCHNutChRch==null){MCHNutChRch=""; }

MCHNtrnWasted=conn.rs.getString("MCHNtrnWasted");
if(MCHNtrnWasted==null){MCHNtrnWasted=""; }

MCHNtrnUnderweight=conn.rs.getString("MCHNtrnUnderweight");
if(MCHNtrnUnderweight==null){MCHNtrnUnderweight=""; }

MCHChild5D=conn.rs.getString("MCHChild5D");
if(MCHChild5D==null){MCHChild5D=""; }

MCHNtrnHealthFacility=conn.rs.getString("MCHNtrnHealthFacility");
if(MCHNtrnHealthFacility==null){MCHNtrnHealthFacility=""; }

MCHVaccVitA=conn.rs.getString("MCHVaccVitA");
if(MCHVaccVitA==null){MCHVaccVitA=""; }

MCHNtrnFoodOVC=conn.rs.getString("MCHNtrnFoodOVC");
if(MCHNtrnFoodOVC==null){MCHNtrnFoodOVC=""; }
        
MCHNtrnFoodPLHIV=conn.rs.getString("MCHNtrnFoodPLHIV");
if(MCHNtrnFoodPLHIV==null){MCHNtrnFoodPLHIV=""; }
        
MCHNtrnFood=conn.rs.getString("MCHNtrnFood");
if(MCHNtrnFood==null){MCHNtrnFood=""; }
        
C51DCM=conn.rs.getString("C51DCM");
if(C51DCM==null){C51DCM=""; }
        
C51DCF=conn.rs.getString("C51DCF");
if(C51DCF==null){C51DCF=""; }
        
C51DC=conn.rs.getString("C51DC");
if(C51DC==null){C51DC=""; }
        
C51DAM=conn.rs.getString("C51DAM");
if(C51DAM==null){C51DAM=""; }
        
C51DAF=conn.rs.getString("C51DAF");
if(C51DAF==null){C51DAF=""; }
        
C51DA=conn.rs.getString("C51DA");
if(C51DA==null){C51DA=""; }
        
C51DP=conn.rs.getString("C51DP");
if(C51DP==null){C51DP=""; }
        
C51DMT=conn.rs.getString("C51DMT");
if(C51DMT==null){C51DMT=""; }
        
C51DFT=conn.rs.getString("C51DFT");
if(C51DFT==null){C51DFT=""; }
        
C51DT=conn.rs.getString("C51DT");
if(C51DT==null){C51DT=""; }
        
    }
    
    String createdtable=" <fieldset class='formatter'><legend class='formatter'><b style='text-align:center;'>3.1.9: Nutrition</b></legend><table  cellpadding='2px' border='0' style='border-color: #e5e5e5;margin-bottom: 3px;'><tr class='form-actions'><th colspan='7'><b></b></th></tr>";
    
    if(session.getAttribute("forms_holder")!=null){ if(session.getAttribute("forms_holder").toString().contains("Nutrition")){
    
    createdtable+="<tr><td rowspan='10' colspan='2'><b> 3.1.9.2 population-based Nutrition Service Delivery </b></td><td colspan='5'>Number of People trained in child health care and nutrition through USG-supported health area programs</td></tr>";
    createdtable+="<tr><td colspan='5'>No of Men </td><td><input readonly tabindex='-1' style='width:100px;' type='text' onclick=\"this.select();\" onkeypress=\"return numbers(event,this);\"   value='"+MCHCCNtrTM+"' name='MCHCCNtrTM' id='MCHCCNtrTM' ></td></tr>";
    createdtable+="<tr><td colspan='5'>No of Women </td><td><input style='width:100px;' type='text' readonly onclick=\"this.select();\" tabindex='-1' onkeypress=\"return numbers(event,this);\" value='"+MCHCCNtrTF+"' name='MCHCCNtrTF' id='MCHCCNtrTF' ></td></tr>";
    createdtable+="<tr><td colspan='5'>Total Number of people trained in child health care and nutrition through USG-supported health area programs</td><td><input tabindex='-1' style='width:100px;' type='text' readonly onclick=\"this.select();\"  onkeypress=\"return numbers(event,this);\"  value='"+MCHCCNtrTT+"' name='MCHCCNtrTT' id='MCHCCNtrTT' ></td></tr>";
    createdtable+="<tr><td colspan='5'>Number of Community health workers trained in child health and/or nutrition</td><td><input style='width:100px;' type='text'  onclick=\"this.select();\"  onkeypress=\"return numbers(event,this);\" onblur=\"autosave('MCHNtrnCHWTrain');\" value='"+MCHNtrnCHWTrain+"' name='MCHNtrnCHWTrain' id='MCHNtrnCHWTrain' ></td></tr>";
    createdtable+="<tr><td colspan='5'>Number of children reached by USG-supported nutrition programs</td><td><input style='width:100px;' type='text'  onclick=\"this.select();\"  onkeypress=\"return numbers(event,this);\" onblur=\"autosave('MCHNutChRch');\" value='"+MCHNutChRch+"' name='MCHNutChRch' id='MCHNutChRch' ></td></tr>";
    createdtable+="<tr><td colspan='5'>Total number of children under five who are wasted (with weight for height Z score < - 2)</td><td><input style='width:100px;' type='text'  onclick=\"this.select();\"  onkeypress=\"return numbers(event,this);\" onblur=\"autosave('MCHNtrnWasted');\" value='"+MCHNtrnWasted+"' name='MCHNtrnWasted' id='MCHNtrnWasted' ></td></tr>";
    createdtable+="<tr><td colspan='5'>Total number of children under five who are underweight (with weight for age Z score < - 2) (SEE Indicator </td><td><input style='width:100px;' type='text'  onclick=\"this.select();\"  onkeypress=\"return numbers(event,this);\" onblur=\"autosave('MCHNtrnUnderweight');\" value='"+MCHNtrnUnderweight+"' name='MCHNtrnUnderweight' id='MCHNtrnUnderweight' ></td></tr>";
    createdtable+="<tr><td colspan='5'>Total number of children under five years</td><td><input style='width:100px;' type='text'  onclick=\"this.select();\"  onkeypress=\"return numbers(event,this);\" onblur=\"autosave('MCHChild5D');\" value='"+MCHChild5D+"' name='MCHChild5D' id='MCHChild5D' ></td></tr>";
    createdtable+="<tr><td colspan='5'>Number of health facilities with established capacity to manage acute under-nutrition</td><td><input style='width:100px;' type='text'  onclick=\"this.select();\"  onkeypress=\"return numbers(event,this);\" onblur=\"autosave('MCHNtrnHealthFacility');\" value='"+MCHNtrnHealthFacility+"' name='MCHNtrnHealthFacility' id='MCHNtrnHealthFacility' ></td></tr>";
    
    createdtable+="<tr><td rowspan='9' colspan='1' ><b> Hiv and Nutrition  </b></td><td></td> <td colspan='5'> <b>Number of children under 5 years of age who received Vitamin A from USG-supported programs</b> </td><td><input style='width:100px;' type='text'  onclick=\"this.select();\"  onkeypress=\"return numbers(event,this);\" onblur=\"autosave('MCHVaccVitA');\" value='"+MCHVaccVitA+"' name='MCHVaccVitA' id='MCHVaccVitA' ></td></tr>";
    createdtable+="<tr><td rowspan='3'>C2.3.D</td><td colspan='5'>Number of HIV – positive clinically malnourished clients who received therapeutic and/or supplementary food < 18</td><td><input style='width:100px;' type='text'  onclick=\"this.select();\"  onkeypress=\"return numbers(event,this);\" onblur=\"autosave('MCHNtrnFoodOVC');c23dtotal();\" value='"+MCHNtrnFoodOVC+"' name='MCHNtrnFoodOVC' id='MCHNtrnFoodOVC' ></td></tr>";
    createdtable+="<tr><td colspan='5'>Number of HIV – positive clinically malnourished clients who received therapeutic and/or supplementary food 18+ (PLHIV)</td><td><input style='width:100px;' type='text'  onclick=\"this.select();\"  onkeypress=\"return numbers(event,this);\" onblur=\"autosave('MCHNtrnFoodPLHIV');c23dtotal();\" value='"+MCHNtrnFoodPLHIV+"' name='MCHNtrnFoodPLHIV' id='MCHNtrnFoodPLHIV' ></td></tr>";
    createdtable+="<tr><td colspan='5'>Number of HIV – positive clinically malnourished clients who received therapeutic and/or supplementary food -<b> Total</b></td><td><input readonly tabindex='-1'  style='width:100px;' type='text'  onclick=\"this.select();\"  onkeypress=\"return numbers(event,this);\" onblur=\"autosave('MCHNtrnFood');\" value='"+MCHNtrnFood+"' name='MCHNtrnFood' id='MCHNtrnFood' ></td></tr>";
    createdtable+="<tr><td></td><td colspan='3'></td><td>Male</td><td>Female</td><td>Total</td></tr>";
    createdtable+="<tr><td rowspan='4'>C5.1.D</td><td colspan='2' rowspan='4'>Number of eligible clients who received food and / or other nutrition Services</td><td> <b><18</b> </td><td><input style='width:100px;' type='text'  onclick=\"this.select();\"  onkeypress=\"return numbers(event,this);\" onblur=\"autosave('C51DCM');c51dtotal();\" value='"+C51DCM+"' name='C51DCM' id='C51DCM' ></td><td><input style='width:100px;' type='text'  onclick=\"this.select();\"  onkeypress=\"return numbers(event,this);\" onblur=\"autosave('C51DCF');c51dtotal();\" value='"+C51DCF+"' name='C51DCF' id='C51DCF' ></td><td><input readonly tabindex='-1' style='width:100px;' type='text'  onclick=\"this.select();\"  onkeypress=\"return numbers(event,this);\"  value='"+C51DC+"' name='C51DC' id='C51DC' ></td></tr>";
    createdtable+="<tr><td> <b> >=18</b> </td><td><input tabindex='-1' readonly style='width:100px;' type='text'  onclick=\"this.select();\"  onkeypress=\"return numbers(event,this);\"  value='"+C51DAM+"' name='C51DAM' id='C51DAM' ></td><td><input tabindex='-1' readonly style='width:100px;' type='text'  onclick=\"this.select();\"  onkeypress=\"return numbers(event,this);\" onblur=\"autosave('C51DAF');c51dtotal();\" value='"+C51DAF+"' name='C51DAF' id='C51DCF' ></td><td><input tabindex='-1' readonly style='width:100px;' type='text'  onclick=\"this.select();\"  onkeypress=\"return numbers(event,this);\"  value='"+C51DA+"' name='C51DA' id='C51DA' ></td></tr>";
    createdtable+="<tr><td colspan='3'> <b> Pregnant/Lactating (PMTCT 1.5)</b> </td><td><input style='width:100px;' type='text'  onclick=\"this.select();\"  onkeypress=\"return numbers(event,this);\" onblur=\"autosave('C51DP');\" value='"+C51DP+"' name='C51DP' id='C51DP' ></td></tr>";
    createdtable+="<tr><td> <b> Total</b> </td><td><input tabindex='-1' readonly style='width:100px;' type='text'  onclick=\"this.select();\"  onkeypress=\"return numbers(event,this);\"  value='"+C51DMT+"' name='C51DMT' id='C51DMT' ></td><td><input tabindex='-1' readonly style='width:100px;' type='text'  onclick=\"this.select();\"  onkeypress=\"return numbers(event,this);\"  value='"+C51DFT+"' name='C51DFT' id='C51DFT' ></td><td><input tabindex='-1' readonly style='width:100px;' type='text'  onclick=\"this.select();\"  onkeypress=\"return numbers(event,this);\" onblur=\"autosave('C51DT');\" value='"+C51DT+"' name='C51DT' id='C51DT' ></td></tr>"
            + "   </table></fieldset><div class='form-actions'><input type='submit' class='btn blue' value='Run Validation' name='validate' id='validate'/></div>";
    
    }
    
    else {
    createdtable="<tr ><td colspan='4'><font color=\"red\" size=\"6px;\" style=\"margin-left: 0%;\"><b>sorry :</b> </font><font color=\"black\" size=\"5px;\"> Facility Does not Support  Nutrition module.</font></td></tr>";
    }
    
    }
    
    
    
    
      System.out.println(createdtable);
      
    PrintWriter out = response.getWriter();
    try {
        /* TODO output your page here. You may use following sample code. */
  
        out.println(createdtable);
    } finally {
        out.close();
    }
}       catch (SQLException ex) {
            Logger.getLogger(loadNutrition.class.getName()).log(Level.SEVERE, null, ex);
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
