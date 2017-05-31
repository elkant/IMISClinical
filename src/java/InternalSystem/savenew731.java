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
 * @author GNyabuto
 */
public class savenew731 extends HttpServlet {
HttpSession session;
String columnName,value;
String facilityID,year,month,userid,tableid;
String error;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
          session=request.getSession();
           dbConn conn = new dbConn();
        int quarter=0;     
     userid="unknown";
     facilityID=year=month="";error="";

        columnName=request.getParameter("columnName").trim();
        value=request.getParameter("value").trim();
        if(value.equals("")){value=null;}
    System.out.println("col : "+columnName+" value : "+value);
    if(session.getAttribute("userid")!=null){        
userid=session.getAttribute("userid").toString();
}

if(session.getAttribute("year")!=null){        
year=session.getAttribute("year").toString();
}
  if(session.getAttribute("monthid")!=null){        
month=session.getAttribute("monthid").toString();
}

    if(session.getAttribute("facilityid")!=null){        
facilityID=session.getAttribute("facilityid").toString();
}
//    year="";
    if(year.equals("") || month.equals("") ||facilityID.equals("") ){error="<font color=\"red\">ERROR : Please select year and facility.</font>";}
    else{
        error="success";
    
    String yearmonth="";
String tempmonth=month;
int pepfaryear=Integer.parseInt(year);
if(Integer.parseInt(month)<10){ tempmonth="0"+month; }
else {pepfaryear--;}


if(Integer.parseInt(month)>=10 && Integer.parseInt(month)<=12){
    quarter=1;
}
else if(Integer.parseInt(month)>=1 && Integer.parseInt(month)<=3){
    quarter=2;
}
else if(Integer.parseInt(month)>=4 && Integer.parseInt(month)<=6){
    quarter=3;
}
else if(Integer.parseInt(month)>=7 && Integer.parseInt(month)<=9){
    quarter=4;
}

yearmonth=pepfaryear+""+tempmonth;

tableid=year+"_"+month+"_"+facilityID;
       System.out.println("value is : "+value);
String Insertqr= "insert into moh731_new  set SubPartnerID='"+facilityID+"',Annee='"+year+"',Mois='"+month+"', "+columnName+"="+value+" , id='"+tableid+"' , user_id='"+userid+"', yearmonth='"+yearmonth+"',quarter='"+quarter+"'";
String updateqr="update moh731_new set "+columnName+"="+value+",isValidated='0', yearmonth='"+yearmonth+"' where id='"+tableid+"'";
//check whether data for that month, year and facility has been saved

String checker="select "+columnName+" from moh731_new where id='"+tableid+"'";     
     
conn.rs=conn.st.executeQuery(checker);

if(conn.rs.next()){
    conn.st.executeUpdate(updateqr);
    System.out.println("~~ "+updateqr);
}
else {
    System.out.println(">> "+Insertqr);
     int inserted=conn.st.executeUpdate(Insertqr);
if(inserted==0){
  conn.st.executeUpdate(updateqr);   
}
}
    }
    if(conn.st!=null){conn.st.close();}
     if(conn.st1!=null){conn.st1.close();}
     if(conn.st2!=null){conn.st2.close();}
     
     if(conn.rs!=null){conn.rs.close();}
     if(conn.rs1!=null){conn.rs1.close();}
     if(conn.rs2!=null){conn.rs2.close();}
     if(conn.conn!=null){conn.conn.close();}
     
System.out.println("error : "+error);
 out.println(error);
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
        Logger.getLogger(savenew731.class.getName()).log(Level.SEVERE, null, ex);
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
        Logger.getLogger(savenew731.class.getName()).log(Level.SEVERE, null, ex);
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
