/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ppprev;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author EKaunda
 */
public class loadwizard extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
           
            String tabheader="<ul>"
	  	+"<li><a href='#tab1' data-toggle='tab'><i class='icon-group'></i> Group Details</a></li>"
		+"<li><a href='#tab2' data-toggle='tab'><i class='icon-time'></i> Session Details</a></li>"
		+"<li><a href='#tab3' data-toggle='tab'><i class='icon-user'></i> Participants</a></li>"
		+"<li><a href='#tab4' data-toggle='tab'><i class='icon-calendar'></i> Attendance</a></li></ul>";
            
            
            String groupdetails=
                    "<table style='' class='table table-responsive'>"
                    //--------------start of a row ------
                    + "<tr>"
                    +" <td class='span2'> "
                    + "<label><b> Implementing Partner </b><font color='red'><b>*</b></font></label>"
                    + ""
                    + "</td>"
                    + "<td class='span3'>"
                    + " <select  onchange='getPopulation();' class='span12' required    id='partner' name='partner'>"
                    + " <option value=''></option>"
                    + " </select>"
                    + " </td>"
                   
                    +" <td class='span2'>"
                    + " <label><b>Sub-county</b><font color='red'><b>*</b></font></label>"
                    + " </td>"
                    + "<td class='span3'>"
                    + " <select  onchange='loadgroup();'  class='span12' required    id='subcounty' name='subcounty'>"
                    + " <option value=''></option>"
                    + " </select>"
                    + " </td>"
                    + "</tr>"
                    //--------------end of a row ------
                    
                    
                    //--------------start of a row ------
                    + "<tr>"
                    +" <td class='span2'> "
                    + " <label><b>Target Population</b><font color='red'><b>*</b></font></label>"
                    + ""
                    + "</td>"
                    + "<td class='span3'>"
                    + " <select  onchange='loadpartner();' class='span12 ' required    id='targetpop' name='targetpop'>"
                    + " <option value=''></option>"
                    + " </select>"
                    + " </td>"
                   
                    +" <td class='span2'>"
                    + "<label> <b>Curriculum/Standards<font color='red'><b>*</b></font></b></label>"
                    + " </td>"
                    + "<td class='span3'>"
                    + " <select  onchange='loadsessions();' class='span12 ' required    id='curriculum' name='curriculum'>"
                    + " <option value=''></option>"
                    + " </select>"
                    + " </td>"
                    + "</tr>"
                    //--------------end of a row ------
                    
                    
                     //--------------start of a row ------
                    + "<tr>"
                    +" <td class='span2'> "
                    + " <label><b>Name of group</b><font color='red'><b>*</b></font></label>"
                    + ""
                    + "</td>"
                    + "<td class='span3'>"
                    + " <select  onchange='loadfacilitators();' class='span12 ' required    id='group' name='group'>"
                    + " <option value=''></option>"
                    + " </select>"
                    + " </td>"
                   
                    +" <td class='span2'>"
                    + "<label> <b>Expected number of sessions<font color='red'><b>*</b></font></b></label>"
                    + " </td>"
                    + "<td class='span3'>"
                    + " <select  onchange='loadsessions();' class='span12 ' required    id='lessons' name='lessons'>"
                    + " <option value=''></option>"
                    + " </select>"
                    + " </td>"
                    + "</tr>"
                    //--------------end of a row ------
                    
                    
                    
                    
                     //--------------start of a row ------
                    + "<tr>"
                    +" <td class='span2'> "
                    + " <label><b>Name of facilitator/Peer Educator</b><font color='red'><b>*</b></font></label>"
                    + ""
                    + "</td>"
                    + "<td class='span3'>"
                    + " <select  class='span12 ' required    id='facilitator' name='facilitator'>"
                    + " <option value=''></option>"
                    + " </select>"
                    + " </td>"
                   
                    +"<td class='span2'>"
                    + "<label> <b>Name of Co-facilitator<font color='red'><b>*</b></font></b></label>"
                    + " </td>"
                    + "<td class='span3'>"
                    + " <select   class='span12 ' required    id='cofacilitator' name='cofacilitator'>"
                    + " <option value=''></option>"
                    + " </select>"
                    + " </td>"
                    + "</tr>"
                    //-
                    
                      
                     //--------------start of a row ------
                    + "<tr>"
                    +" <td class='span2'> "
                    + " <label><b>Start date</b><font color='red'><b>*</b></font></label>"
                    + ""
                    + "</td>"
                    + "<td class='span3'>"
                    + " <input  class='span12 tarehe' required type='text' readonly    id='startdate' name='startdate'>"
                   
                    + " </td>"
                   
                    +"<td class='span2'>"
                    + "<label> <b>End date<font color='red'><b>*</b></font></b></label>"
                    + " </td>"
                    + "<td class='span3'>"
                  + " <input  class='span12 tarehe' required type='text' readonly    id='enddate' name='enddate'>"
                    
                    + " </td>"
                    
                    + "</tr>"
                       + "<tr>"
                    +"<td class='span2'>"
                    + "<label> <b>Age group<font color='red'><b>*</b></font></b></label>"
                    + " </td>"
                    
                    
                    + "<td class='span3'>"
                 + " <select   class='span12 ' required    id='agegroup' name='agegroup'>"
                    + " <option value=''></option>"
                    + " </select>"
                    + " </td>"
                    + "</tr>"
                   
                    + "</table>"
                    ;
            
            
            
	
                String tabcontent="<div class='tab-content'>"
	    +"<div class='tab-pane' id='tab1'>"+groupdetails+"</div>"
	    +"<div class='tab-pane' id='tab2'> 2</div>"
	    +"<div class='tab-pane' id='tab3'> 3</div>"
	    +"<div class='tab-pane' id='tab4'> 4</div>";
	   
		String tabpager="<ul class='pager wizard'>"
			+"<li class='previous first' style='display:none;'><a href='#'>First</a></li>"
			+"<li class='previous'><a href='#'>Previous</a></li>"
			+"<!--<li class='next last' style='display:none;'><a href='#'>Last</a></li>-->"
		  	+"<li class='next'><a href='#'>Next</a></li>"
                        +"<li class='next finish' style='display:none;'><a href='javascript:;'>Finish</a></li>"
		+"</ul>";

            
            String wizard=tabheader+tabcontent+tabpager;
            
            out.println(wizard);
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
