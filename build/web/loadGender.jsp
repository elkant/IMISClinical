<%-- 
    Document   : Form731
    Created on : May 11, 2015, 10:09:28 AM
    Author     : Maureen
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<!-- BEGIN HEAD -->
<head>
   <meta charset="utf-8" />
   <title>Gender Form</title>
      <script src="assets/js/jquery-1.8.3.min.js"></script>   
     <link rel="shortcut icon" href="images/index.JPG"/>
   <meta content="width=device-width, initial-scale=1.0" name="viewport" />
   <meta content="" name="description" />
   <meta content="" name="author" />
   <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
   <link href="assets/css/metro.css" rel="stylesheet" />
   <link href="assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
   <link href="assets/bootstrap-fileupload/bootstrap-fileupload.css" rel="stylesheet" />
   <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
   <link href="assets/css/style.css" rel="stylesheet" />
   <link href="assets/css/style_responsive.css" rel="stylesheet" />
   <link href="assets/css/style_default.css" rel="stylesheet" id="style_color" />
   <link rel="stylesheet" type="text/css" href="assets/gritter/css/jquery.gritter.css" />
   <link rel="stylesheet" type="text/css" href="assets/chosen-bootstrap/chosen/chosen.css" />
   <link rel="stylesheet" type="text/css" href="assets/jquery-tags-input/jquery.tagsinput.css" />
   <link rel="stylesheet" type="text/css" href="assets/clockface/css/clockface.css" />
   <link rel="stylesheet" type="text/css" href="assets/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />
   <link rel="stylesheet" type="text/css" href="assets/bootstrap-datepicker/css/datepicker.css" />
   <link rel="stylesheet" type="text/css" href="assets/bootstrap-timepicker/compiled/timepicker.css" />
   <link rel="stylesheet" type="text/css" href="assets/bootstrap-colorpicker/css/colorpicker.css" />
   <link rel="stylesheet" href="assets/bootstrap-toggle-buttons/static/stylesheets/bootstrap-toggle-buttons.css" />
   <link rel="stylesheet" href="assets/data-tables/DT_bootstrap.css" />
   <link rel="stylesheet" type="text/css" href="assets/bootstrap-daterangepicker/daterangepicker.css" />
   <link rel="stylesheet" type="text/css" href="assets/uniform/css/uniform.default.css" />
    
   <link rel="stylesheet" href="select2/css/select2.css">
   

      <script type="text/javascript" src="js/noty/jquery.noty.js"></script>
<script type="text/javascript" src="js/noty/layouts/top.js"></script>
<script type="text/javascript" src="js/noty/layouts/center.js"></script>
<script type="text/javascript" src="js/noty/themes/default.js"></script>

 <style>
fieldset.formatter {
    border: 2px groove black !important;
   
    /*padding: 0 1.4em 1.4em 1.4em !important;*/
    margin: 0 0 1.5em 0 !important;
    -webkit-box-shadow:  0px 0px 0px 0px #000;
            box-shadow:  0px 0px 0px 0px #000;
   
}

legend.formatter {
    border: 0px groove black !important;
    margin: 0 0 0.0em 0 !important;
    -webkit-box-shadow:  0px 0px 0px 0px #000;
            box-shadow:  0px 0px 0px 0px #000;
    font-size: 1.2em !important;
    /*font-weight: bold !important;*/
    text-align: center !important;
    width:inherit; /* Or auto */
    padding:0 10px; /* To give a bit of padding on the left and right */
    border-bottom:none;
    margin-left:50px;

}
</style>
  
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="fixed-top" onkeydown="if (event.keyCode==13) {event.keyCode=9; return event.keyCode }">
    
   <!-------------------------------------------dialog box for unvalidated facils-------------------------------------------------->  
    <div class="modal fade" id="unvalidatedModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
        <h4 class="modal-title" id="myModalLabel"><p style="text-align: center; color:red; font-weight: bolder;">Unvalidated Forms.</p></h4>
      </div>
      <div class="modal-body" id="allunValidated" style="font-size: 16px;">
    
      </div>
      <div class="modal-footer">
        <button type="button" class="btn-danger" data-dismiss="modal" style="height:30px;" id="viewErrors">Close</button>
      </div>
    </div>
  </div>
</div> 
  <!-------------------------------------------dialog box for unvalidated facils-------------------------------------------------->  
  
    
   <!-- BEGIN HEADER -->
   <div class="header navbar navbar-inverse navbar-fixed-top">
      <!-- BEGIN TOP NAVIGATION BAR -->
      <div class="navbar-inner">
         <div class="container-fluid">
            <!-- BEGIN LOGO -->
           <div class="control-group">
           <div style="float:right;"> 
                                 
                                <font color="white" size="3px"><b>Year: </b></font>  
                                <select required data-placeholder="Reporting Year" style="width:100px;" class="span4 m-wrap" tabindex="-1" onchange="sendtosessionyear();"  id="year" name="year">
                                    <option value=""></option>                                 
                                   
                                 </select>
<!--                                   <font color="#4b8df8" size="3px"><b><%if(session.getAttribute("year")!=null){out.println(session.getAttribute("year").toString()+" | ");}%></b></font>
                                    <input type="hidden" name="year" id="year" value="<%=session.getAttribute("year").toString()%>">
                                  -->
                                    <font color="white" size="3px"><b>Month: </b></font>  
                                  
                                  <select placeholder="Month"   style="width:150px;" class="span4 m-wrap" tabindex="-1"  id="month" name="month" onchange="sendtosessionmonth();">
                                    <option value=""></option>
                                 </select>
                                    <font color="white" size="3px" margin-left="3px"><b>County : </b></font>
                              
                                <select placeholder="County" style="width:150px;" onchange="loadsubcounty();"  class="span4 m-wrap" tabindex="-1"  id="county" name="county">
                                    <option value=""></option>
                                 </select>
                                   
                                    <font color="white" size="3px" margin-left="3px"><b>Sub-County : </b></font>
                              
                                <select data-placeholder="Sub-County" onchange="loadfacils();"  class="span6 m-wrap" tabindex="-1"  id="subcounty" name="subcounty">
                                    <option value="">Select County First</option>
                                 </select>
                                    
                                   
                                   <font color="white" size="3px" margin-left="3px"><b>            Activity Site : </b></font>
                              
                                 <select onchange="updatefacilsession();" style="width:240px;float:right;color:black;" data-placeholder="Facility" required class="span6" tabindex="-1"  id="facility" name="facility">
                                    <option value=""></option>
                                 </select></div>
                              
                           </div>
                                   
                                   
                                    <%if (session.getAttribute("genderresponse") != null) { %>
                                <script type="text/javascript"> 
                    
                    var n = noty({text: '<%=session.getAttribute("genderresponse")%>',
                        layout: 'center',
                        type: 'Success',
 
                         timeout: 4800});
                    
                </script> <%
                session.removeAttribute("genderresponse");
                            }

                        %>
                                   
            <!-- END LOGO -->
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
            <img src="assets/img/menu-toggler.png" alt="" />
            </a>          
            <!-- END RESPONSIVE MENU TOGGLER -->            
            <!-- BEGIN TOP NAVIGATION MENU -->              
            <ul class="nav pull-left">
              
               <li class="dropdown user">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                 
                  <span class="username">Welcome</span>
                  <i class="icon-angle-down"></i>
                  </a>
                  <ul class="dropdown-menu">
                     <li><a href="editProfile.jsp"><i class="icon-user"></i>User Profile</a></li>
                   
                     <li class="divider"></li>
                     <li><a href="logout.jsp"><i class="icon-key"></i> Log Out</a></li>
                  </ul>
               </li>
               <!-- END USER LOGIN DROPDOWN -->
            </ul>
            <!-- END TOP NAVIGATION MENU --> 
         </div>
      </div>
      <!-- END TOP NAVIGATION BAR -->
   </div>
   <!-- END HEADER -->
   <!-- BEGIN CONTAINER -->
   <div class="page-container row-fluid">
      <!-- BEGIN SIDEBAR -->
      <div class="page-sidebar nav-collapse collapse">
         <!-- BEGIN SIDEBAR MENU -->         
       <%@include file="/menu/menu.jsp"%>
         <!-- END SIDEBAR MENU -->
      </div>
      <!-- END SIDEBAR -->
      <!-- BEGIN PAGE -->  
      <div class="page-content">
         <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
         <div id="portlet-config" class="modal hide">
            <div class="modal-header">
               <button data-dismiss="modal" class="close" type="button"></button>
               <h3>portlet Settings</h3>
            </div>
            <div class="modal-body">
               <p>Here will be a configuration form</p>
            </div>
         </div>
         <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
         <!-- BEGIN PAGE CONTAINER-->
         <div class="container-fluid">
            <!-- BEGIN PAGE HEADER-->   
            <div class="row-fluid">
               <div class="span12">
                  <!-- BEGIN STYLE CUSTOMIZER -->
               
                  <!-- END BEGIN STYLE CUSTOMIZER -->   
                  <h3 class="page-title" style="text-align: center;">
                    
             
                  </h3>
                  <ul class="breadcrumb">
                     <li>
                        <i class="icon-home"></i>
                        <font color="#4b8df8">Prevention</font>
                        
                     </li>
           
                  </ul>
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="row-fluid">
               <div class="span12">
                  <!-- BEGIN SAMPLE FORM PORTLET-->   
                  <div class="portlet box blue">
                     <div class="portlet-title">
                        <h4><i class="icon-reorder"></i></h4>
                        <b style="color:white;text-align: center;font-size: 20px;">GENDER</b>
                        <span id="recordcounter" style="margin-left:9%;color:yellow;font-size:15px;"><b></b></span>
                        <span id="newform" style="margin-left: 17%;background-color: white;padding: 2px;"><b></b></span>
                    
                     
                     </div>
                     <div class="portlet-body form">
                        <!-- BEGIN FORM-->
                        <form action="validateGender" class="form-horizontal">
                    
                            <div id="gendertable">
                              <i style="margin-left: 450px; margin-top: 200px;">  loading data...<img src="images/utube.gif"></i>
                        
<fieldset class='formatter'><legend class='formatter'><b style='text-align:center;'> Prevention Sub Area 12:Gender</b></legend><table  cellpadding='2px' border='0' style='border-color: #e5e5e5;margin-bottom: 3px;'>
                             
</table></fieldset><div class='form-actions'><input type='submit' class='btn blue' value='Run Validation' name='validate' id='validate'/></div>
                        
                            
                            </div>
                            <input type="hidden" name="checkblank" id="checkblank" value="0"/>
                        </form>
                        <!-- END FORM-->           
                    
                  </div>
                  <!-- END SAMPLE FORM PORTLET-->
               </div>
            </div>
       
          
         
          
           
         
          
            <!-- END PAGE CONTENT-->         
         </div>
         <!-- END PAGE CONTAINER-->
      </div>
      <!-- END PAGE -->  
   </div>
   <!-- END CONTAINER -->
   <!-- BEGIN FOOTER -->
   <div class="footer">
       <%

              Calendar cal = Calendar.getInstance();
                    int year = cal.get(Calendar.YEAR);       
%>
       
       &copy; APHIAplus | USAID <%=year%>.
      <div class="span pull-right">
         <span class="go-top"><i class="icon-angle-up"></i></span>
      </div>
   </div>
   <!-- END FOOTER -->
   <!-- BEGIN JAVASCRIPTS -->    
   <!-- Load javascripts at bottom, this will reduce page load time -->
 
   <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>  
   <script src="assets/breakpoints/breakpoints.js"></script>       
   <script src="assets/bootstrap/js/bootstrap.min.js"></script>   
   <script type="text/javascript" src="assets/bootstrap-fileupload/bootstrap-fileupload.js"></script>
   <script src="assets/js/jquery.blockui.js"></script>
   <script src="assets/js/jquery.cookie.js"></script>
   <!-- ie8 fixes -->
   <!--[if lt IE 9]>
   <script src="assets/js/excanvas.js"></script>
   <script src="assets/js/respond.js"></script>
   <![endif]-->
   <script type="text/javascript" src="assets/chosen-bootstrap/chosen/chosen.jquery.min.js"></script>
   <script type="text/javascript" src="assets/uniform/jquery.uniform.min.js"></script>
   <script type="text/javascript" src="assets/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script> 
   <script type="text/javascript" src="assets/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
   <script type="text/javascript" src="assets/jquery-tags-input/jquery.tagsinput.min.js"></script>
   <script type="text/javascript" src="assets/bootstrap-toggle-buttons/static/js/jquery.toggle.buttons.js"></script>
   <script type="text/javascript" src="assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
   <script type="text/javascript" src="assets/clockface/js/clockface.js"></script>
   <script type="text/javascript" src="assets/bootstrap-daterangepicker/date.js"></script>
   <script type="text/javascript" src="assets/bootstrap-daterangepicker/daterangepicker.js"></script> 
   <script type="text/javascript" src="assets/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>  
   <script type="text/javascript" src="assets/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
   <script src="assets/js/app.js"></script>    
      
 <script src="select2/js/select2.js"></script>
   
   
   
   <script>
      jQuery(document).ready(function() {       
         // initiate layout and plugins
               $('#facility').select2(); 
         
                    $.ajax({
url:'loadFacilities',
type:'post',
dataType:'html',
success:function (data){
       $("#facility").html(data);
      $('#facility').select2(); 
      // App.init();   
}


}); 
         
         
         $.ajax({
            url:'loadGender',
            type:'post',
            dataType:'html',
            success:function (data){
                $("#gendertable").html(data);
                $("#newform").html($("#formstatus").html());
                $("#recordcounter").html($("#rc").html());
                $("#allunValidated").html($("#ufs").html());
                
            //$("#P121DM0").focus();   
            }
            
            
        }); 
       
         
$.ajax({
    url:'loadYear',
    type:'post',
    dataType:'html',
    success:function (data){
         $("#year").html(data);
         loadmonths();
//        document.getElementById("year").innerHTML=data;
        
    }
    
    
});
 
               
     });
      
      
      
function loadmonths(){
      
      var yr=document.getElementById("year").value;
//      alert(yr);
              $.ajax({
url:'loadMonth?year='+yr,
type:'post',
dataType:'html',
success:function (data){
    $("#month").html(data);
//    if($("#month").val('')){
//        
//    }
// location.reload();
    
       //document.getElementById("month").innerHTML=data;
      // App.init();  
        
}


});  
      
      
      }
             
       function sendtosessionyear(){
      
      var yr=document.getElementById("year").value;
  
     
    
              $.ajax({
url:'monthyearsession?year='+yr,
type:'post',
dataType:'html',
success:function (data){
//    $("#month").html(data);     
     loadmonths(); 
     location.reload();
       //document.getElementById("month").innerHTML=data;
      // App.init();  
        
}


});  
      
      
      }
	  
	  
	  

        function sendtosessionmonth(){
      
    
      var month=document.getElementById("month").value;
    
  
              $.ajax({
url:'monthyearsession?month='+month,
type:'post',
dataType:'html',
success:function (data){
//    $("#month").html(data);     
      location.reload();
       //document.getElementById("month").innerHTML=data;
      // App.init();  
        
}


});  
      
      
      }
	        
             
             //AUTOUPDATING FUNCTION
           
           String.prototype.endsWith = function(suffix) {
    return this.match(suffix+"$") == suffix;
};
             
             function autosave(col){
            var achieved=document.getElementById(col).value;
              document.getElementById("newform").innerHTML="<font color='red'><b>Form Not Validated.<img width='20px' height='20px' src='images/notValidated.jpg' style='margin-left:10px;'></b></font>"; 
         //if(document.getElementById("checkblank").value=='1'){
            
             $.ajax({
url:'saveGender?col='+col+"&achieved="+achieved,
type:'post',
dataType:'html',
success:function (data){      
    document.getElementById("checkblank").value='0'; 
      //if the col being autoseved is a total, show a different color 
      if(col.endsWith("T")||col=='GEND_GBVM'||col=='GEND_GBVF'||col=='GEND_GBV'||col=='GEND_GBV25'||col=='GEND_GBV24'||col=='GEND_GBV17'||col=='GEND_GBV14'||col=='GEND_GBV9'||col=='P121D0'||col=='P121D10'||col=='P121D15'||col=='P121D20'||col=='P121D25'||col=='P122D0'||col=='P122D15'||col=='P122D25'||col=='P123D0'||col=='P123D15'||col=='P123D25'||col=='P124D0'||col=='P124D15'||col=='P124D25'){
       
       $("#"+col).css({'background-color' : 'plum'});
          
      }
      else {
          
        $("#"+col).css({'background-color' : '#CCFFCC'});  
      }
        
                       }
             
             });
             
             
            // }
             
             }
             
             
           
             
          
            function numbers(evt){
var charCode=(evt.which) ? evt.which : event.keyCode
if(charCode > 31 && (charCode < 48 || charCode>57)){



return false;
}
else{   

document.getElementById("checkblank").value='1'; 
 
return true;
}
}
          
      
      //a function to update the selected session
      
      function updatefacilsession(){
          
        var facil=document.getElementById("facility").value;
        $.ajax({
url:'updatefacilitysession?facil='+facil,
type:'post',
dataType:'html',
success:function (data){      
    location.reload();
    //  $("#"+col).css({'background-color' : '#CCFFCC'});
        
}
             
             });    
          
          
          
      }
   
      //______________________________________________________________________________________________________________   
      
      function p121total(){
      
      
      var one=document.getElementById("P121DM0").value;
      var two=document.getElementById("P121DF0").value;
      
      var three=document.getElementById("P121DM10").value;
      var four=document.getElementById("P121DF10").value;
      
      var five=document.getElementById("P121DM15").value;
      var six=document.getElementById("P121DF15").value;
      
      var seven=document.getElementById("P121DM20").value;
      var eight=document.getElementById("P121DF20").value;
      
      var nine=document.getElementById("P121DM25").value;
      var ten=document.getElementById("P121DF25").value;
   
      if(one==""){one=0;}
      if(two==""){two=0;}
      if(three==""){three=0;}
      if(four==""){four=0;}
      if(five==""){five=0;}
      if(six==""){six=0;}
      if(seven==""){seven=0;}
      if(eight==""){eight=0;}
      if(nine==""){nine=0;}
      if(ten==""){ten=0;}
      
  var mid1=parseInt(one)+parseInt(two);
       document.getElementById("P121D0").value=mid1;
  var mid2=parseInt(three)+parseInt(four);
  document.getElementById("P121D10").value=mid2;
  var mid3=parseInt(five)+parseInt(six);
  document.getElementById("P121D15").value=mid3;
  var mid4=parseInt(seven)+parseInt(eight);
  document.getElementById("P121D20").value=mid4;
  var mid5=parseInt(nine)+parseInt(ten);
  document.getElementById("P121D25").value=mid5;
     autosave('P121D0');  
     autosave('P121D10');  
     autosave('P121D15');  
     autosave('P121D20');  
     autosave('P121D25');  
    
           var fttl=parseInt(two)+parseInt(four)+parseInt(six)+parseInt(eight)+parseInt(ten);
           var mttl=parseInt(one)+parseInt(three)+parseInt(five)+parseInt(seven)+parseInt(nine);
           var tttl=parseInt(fttl)+parseInt(mttl);
           document.getElementById("P121DFT").value=fttl;
           document.getElementById("P121DMT").value=mttl;
           document.getElementById("P121DTT").value=tttl;
            //now calculate the percentage and call a save           
            autosave('P121DFT'); 
            autosave('P121DMT'); 
            autosave('P121DTT');       
        
      
      }
      
      //______________________________________________________________________________________________________________
      
      function p122total(){
     

  var one=document.getElementById("P122DM0").value;
      var two=document.getElementById("P122DF0").value;
      
      var three=document.getElementById("P122DM15").value;
      var four=document.getElementById("P122DF15").value;
      
      var five=document.getElementById("P122DM25").value;
      var six=document.getElementById("P122DF25").value;
      
   
      if(one==""){one=0;}
      if(two==""){two=0;}
      if(three==""){three=0;}
      if(four==""){four=0;}
      if(five==""){five=0;}
      if(six==""){six=0;}
      
  var mid1=parseInt(one)+parseInt(two);
  document.getElementById("P122D0").value=mid1;
  autosave('P122D0'); 
      
   var mid2=parseInt(three)+parseInt(four);
  document.getElementById("P122D15").value=mid2;
  autosave('P122D15'); 
     
  var mid3=parseInt(five)+parseInt(six);
  document.getElementById("P122D25").value=mid3;
  autosave('P122D25'); 
            
           var fttl=parseInt(two)+parseInt(four)+parseInt(six);
           var mttl=parseInt(one)+parseInt(three)+parseInt(five);
           var tttl=parseInt(fttl)+parseInt(mttl);
           document.getElementById("P122DFT").value=fttl;
           document.getElementById("P122DMT").value=mttl;
           document.getElementById("P122DTT").value=tttl;
            //now calculate the percentage and call a save           
            autosave('P122DFT'); 
            autosave('P122DMT'); 
            autosave('P122DTT');          
        

          
      }
      function p123total(){
     



 
      var one=document.getElementById("P123DM0").value;
      var two=document.getElementById("P123DF0").value;
      
      var three=document.getElementById("P123DM15").value;
      var four=document.getElementById("P123DF15").value;
      
      var five=document.getElementById("P123DM25").value;
      var six=document.getElementById("P123DF25").value;
      
   
      if(one==""){one=0;}
      if(two==""){two=0;}
      if(three==""){three=0;}
      if(four==""){four=0;}
      if(five==""){five=0;}
      if(six==""){six=0;}
      
      var mid1=parseInt(one)+parseInt(two);
  document.getElementById("P123D0").value=mid1;
  autosave('P123D0'); 
      
   var mid2=parseInt(three)+parseInt(four);
  document.getElementById("P123D15").value=mid2;
  autosave('P123D15'); 
     
  var mid3=parseInt(five)+parseInt(six);
  document.getElementById("P123D25").value=mid3;
  autosave('P123D25'); 
  
            
           var fttl=parseInt(two)+parseInt(four)+parseInt(six);
           var mttl=parseInt(one)+parseInt(three)+parseInt(five);
           var tttl=parseInt(fttl)+parseInt(mttl);
           document.getElementById("P123DFT").value=fttl;
           document.getElementById("P123DMT").value=mttl;
           document.getElementById("P123DTT").value=tttl;
            //now calculate the percentage and call a save           
            autosave('P123DFT'); 
            autosave('P123DMT'); 
            autosave('P123DTT');       
        


          
      }
      function p124total(){
          
       
       
      var one=document.getElementById("P124DM0").value;
      var two=document.getElementById("P124DF0").value;
      
      var three=document.getElementById("P124DM15").value;
      var four=document.getElementById("P124DF15").value;
      
      var five=document.getElementById("P124DM25").value;
      var six=document.getElementById("P124DF25").value;
      
   
      if(one==""){one=0;}
      if(two==""){two=0;}
      if(three==""){three=0;}
      if(four==""){four=0;}
      if(five==""){five=0;}
      if(six==""){six=0;}
      
       var mid1=parseInt(one)+parseInt(two);
  document.getElementById("P124D0").value=mid1;
  autosave('P124D0'); 
      
   var mid2=parseInt(three)+parseInt(four);
  document.getElementById("P124D15").value=mid2;
  autosave('P124D15'); 
     
  var mid3=parseInt(five)+parseInt(six);
  document.getElementById("P124D25").value=mid3;
  autosave('P124D25'); 
  
  
            
           var fttl=parseInt(two)+parseInt(four)+parseInt(six);
           var mttl=parseInt(one)+parseInt(three)+parseInt(five);
           var tttl=parseInt(fttl)+parseInt(mttl);
           document.getElementById("P124DFT").value=fttl;
           document.getElementById("P124DMT").value=mttl;
           document.getElementById("P124DTT").value=tttl;
            //now calculate the percentage and call a save           
            autosave('P124DFT'); 
            autosave('P124DMT'); 
            autosave('P124DTT');       
        


       
       
      }
      function gbvtotal(){
    
    



















    
    
      var one=document.getElementById("GEND_GBV9M").value;
      var two=document.getElementById("GEND_GBV9F").value;
      
      var three=document.getElementById("GEND_GBV14M").value;
      var four=document.getElementById("GEND_GBV14F").value;
      
      var five=document.getElementById("GEND_GBV17M").value;
      var six=document.getElementById("GEND_GBV17F").value;
      
      var seven=document.getElementById("GEND_GBV24M").value;
      var eight=document.getElementById("GEND_GBV24F").value;
      
      var nine=document.getElementById("GEND_GBV25M").value;
      var ten=document.getElementById("GEND_GBV25F").value;
   
      if(one==""){one=0;}
      if(two==""){two=0;}
      if(three==""){three=0;}
      if(four==""){four=0;}
      if(five==""){five=0;}
      if(six==""){six=0;}
      if(seven==""){seven=0;}
      if(eight==""){eight=0;}
      if(nine==""){nine=0;}
      if(ten==""){ten=0;}
      
  //total of middle values
  
  //total per ages
  
  var mid1=parseInt(one)+parseInt(two);
  var mid2=parseInt(three)+parseInt(four);
  var mid3=parseInt(five)+parseInt(six);
  var mid4=parseInt(seven)+parseInt(eight);
  var mid5=parseInt(nine)+parseInt(ten);
    
   document.getElementById("GEND_GBV9").value=mid1;  
   document.getElementById("GEND_GBV14").value=mid2;  
   document.getElementById("GEND_GBV17").value=mid3;  
   document.getElementById("GEND_GBV24").value=mid4;  
   document.getElementById("GEND_GBV25").value=mid5;  
    
      autosave('GEND_GBV9'); 
      autosave('GEND_GBV14'); 
      autosave('GEND_GBV17'); 
      autosave('GEND_GBV24'); 
      autosave('GEND_GBV25'); 
    
    
           var fttl=parseInt(two)+parseInt(four)+parseInt(six)+parseInt(eight)+parseInt(ten);
           var mttl=parseInt(one)+parseInt(three)+parseInt(five)+parseInt(seven)+parseInt(nine);
           var tttl=parseInt(fttl)+parseInt(mttl);
           document.getElementById("GEND_GBVF").value=fttl;
           document.getElementById("GEND_GBVM").value=mttl;
           document.getElementById("GEND_GBV").value=tttl;
            //now calculate the percentage and call a save           
            autosave('GEND_GBVF'); 
            autosave('GEND_GBVM'); 
            autosave('GEND_GBV');    
    
    
          
      }
    
    
    
     $('body').on('keydown', 'input, select, textarea', function(e) {
var self = $(this)
  , form = self.parents('form:eq(0)')
  , focusable
  , next
  , prev
  ;

if (e.shiftKey) {
 if (e.keyCode == 13) {
     focusable =   form.find(':input:visible,a,select,button,textarea').filter(':not([readonly])');
     prev = focusable.eq(focusable.index(this)-1); 

     if (prev.length) {
        prev.focus();
        prev.select();
     } else {
        form.submit();
    }
  }
}
  else
if (e.keyCode == 13) {
    focusable = form.find(':input:visible,a,select,button,textarea').filter(':not([readonly])');
    next = focusable.eq(focusable.index(this)+1);
    if (next.length ) {
      //  if ( next.is('[readonly]') ) {}
      
        next.focus();
        next.select();
        
    } else {
        form.submit();
    }
    return false;
}
});
 
 
 
 
 //a function to monitor if data has been entered or its just enter and 
 
 function isIntegerPressed(status){
 if(status=="1"){    
     document.getElementById("checkblank").value='1';
 }
 else {
       document.getElementById("checkblank").value='0'; 
     
 }
     
 }
 
 
 
 
    function loadcounty(){
        
        
        $.ajax({
            url:'loadCounty',
            type:'post',
            dataType:'html',
            success:function (data){
                $("#county").html(data);
                loadsubcounty();
              //  App.init();   
            }
            
            
        });
        
    }
    
    
       function loadsubcounty(){
        
        var county=document.getElementById("county").value;
        $.ajax({
            url:'loadSubcounty?county='+county,
            type:'post',
            dataType:'html',
            success:function (data){
                $("#subcounty").html(data);
                
              //  App.init();   
            }
            
            
        });
        
    }
    
    function loadfacils(){
      var subcounty=document.getElementById("subcounty").value;  
                    $.ajax({
url:'loadFacilities?subcounty='+subcounty,
type:'post',
dataType:'html',
success:function (data){
       $("#facility").html(data);
         if(document.getElementById("facility").value!==''){
      updatefacilsession();
      
     
      }  
      $('#facility').select2();  
         // $("#facility").chosen();
       
       
}


}); 
         
         
        }
    
 
 loadcounty();
 
 
    document.getElementById("checkblank").value='0';
      
   </script>
   <!-- END JAVASCRIPTS -->   
</body>
<!-- END BODY -->
</html>

