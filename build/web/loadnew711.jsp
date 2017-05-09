<%-- 
    Document   : new711
    Created on : May 31, 2016, 9:28:28 AM
    Author     : Emmanuel
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<!-- BEGIN HEAD -->
<head>
   <meta charset="utf-8" />
   <title>New MOH 711 Form</title>
  <link rel="shortcut icon" href="images/index.JPG"/>
   <meta content="width=device-width, initial-scale=1.0" name="viewport" />
   <meta content="" name="description" />
   <meta content="" name="author" />
    
     <script src="assets/js/jquery-1.8.3.min.js"></script>     
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
<style>
    
    
    .form-actions {
  
    padding: 4px 20px 4px;
}
</style>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="fixed-top"  >
   <!-- BEGIN HEADER -->
   <div class="header navbar navbar-inverse navbar-fixed-top">
      <!-- BEGIN TOP NAVIGATION BAR -->
      <div class="navbar-inner">
         <div class="container-fluid">
            <!-- BEGIN LOGO -->
           <div class="control-group">
                             <div style="float:right;"> 
                                 
                               <font color="white" size="3px"><b>Year: </b></font>  
                                <select required data-placeholder="Reporting Year" class="span4 m-wrap" tabindex="-1" onchange="sendtosessionyear();"  id="year" name="year" style="width: 100px;">
                                    <option value=""></option>                                 
                                   
                                 </select>

                                    <font color="white" size="3px"><b>Month: </b></font>  
                                  
                                  <select placeholder="Month" class="span4 m-wrap" tabindex="-1"  id="month" name="month" onchange="sendtosessionmonth();" style="width: 150px;">
                                    <option value=""></option>
                                 </select>
                                
                                    <font color="white" size="3px" margin-left="3px"><b>County : </b></font>
                              
                                <select placeholder="County" onchange="loadsubcounty();"  class="span4 m-wrap" tabindex="-1"  id="county" name="county" style="width: 150px;">
                                    <option value=""></option>
                                 </select>
                                   
                                    <font color="white" size="3px" margin-left="3px"><b>Sub-County : </b></font>
                              
                                <select data-placeholder="Sub-County" onchange="loadfacils();"  class="span6 m-wrap" tabindex="-1"  id="subcounty" name="subcounty">
                                    <option value="">Select County First</option>
                                 </select>
                                    
                                   
                                   <font color="white" size="3px" margin-left="3px"><b>            Activity Site : </b></font>
                              
                                 <select onchange="updatefacilsession();" style="width:240px;float:right;color:black;" data-placeholder="Facility" required class="span6" tabindex="-1"  id="facility" name="facility">
                                    <option value=""></option>
                                 </select>
                             </div>
                              
                           </div>
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
                     <li><a href="userProfile.html"><i class="icon-user"></i>User Profile</a></li>
                   
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
               <!--<h3>portlet Settings</h3>-->
            </div>
            <div class="modal-body">
               <!--<p>Here will be a configuration form</p>-->
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
<!--                     <li>
                        <i class="icon-home"></i>
                        <font color="#4b8df8" size="15px">MOH 711A </font>
                        
                     </li>-->
           <li style="margin-left:40%; font-size:20px;">
                    <p>MOH 711 <font color='green'>(New version rev. july 2015)</font></p>
                    </li>
                                      </ul>
               </div>
             <div class="modal fade" id="notifier" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><p style="text-align: center; color:red; font-weight: bolder;">Errors detected.</p></h4>
      </div>
      <div class="modal-body" id="errorBody">
    
      </div>
      <div class="modal-footer">
        <button type="button" class="btn-primary" data-dismiss="modal" style="height:40px;" id="viewErrors">view errors</button>
        <button type="button" class="btn-danger" id="submit" style="height:40px;">submit with errors</button>
      </div>
    </div>
  </div>
</div>
    <!--Modal unvalidated forms-->
    
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
            
<!--   <div id="dialog-confirm" hidden="true" title="Confirm Marking or editing for adherence">
    <p><font color="red"><b>NOTE :</b> </font><font color="black">Adherence message has been marked.</font><br>
    <br>1. Click <b>YES</b> if you want to mark adherence for the second or subsequent times. 
    <br>2.Click <b>NO</b> if want to edit the already marked data for adherence.</p>
</div>   -->
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="row-fluid">
               <div class="span12">
                  <!-- BEGIN SAMPLE FORM PORTLET-->   
                  <!--<div class="portlet box blue">-->
<!--                     <div class="portlet-title">
                        <h4><i class="icon-reorder"></i></h4>
                        <b style="color:white;text-align: center;font-size: 20px;">MOH 711A</b>
                     </div>-->
                     <div class="portlet-body form">
                        <!-- BEGIN FORM-->
                        <form action="validate711new" method="post" class="form-horizontal">
                           <%if (session.getAttribute("validate711") != null) { %>
                                <script type="text/javascript"> 
                    
                    var n = noty({text: '<%=session.getAttribute("validate711")%>',
                        layout: 'center',
                        type: 'Success',
 
                         timeout: 4800});
                    
                </script> <%
                session.removeAttribute("validate711");
                            }

                        %> 
                        
                        
                        
                        
                         <input type="hidden" name="data_elements" id="data_elements" value="">
                   <input type="hidden" name="description" id="description" value="">    
                        <div class="tabbable tabbable-custom boxless" id="711table" >
                   
                        
                       
                         <i style="margin-left: 450px; margin-top: 200px;">  loading data...<img src="images/utube.gif"></i>
                        
                       
                        <!-- END FORM-->           
                   
                            
                             
                           
                            
                         
                         
                        <!-- END FORM-->           
                     </div>
                           
                        </form>
                  </div>
                  <!-- END SAMPLE FORM PORTLET-->
               </div>
            <!--</div>-->
       
          
         
          
           
         
          
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
   <!--<script src="assets/js/jquery-1.8.3.min.js"></script>-->    
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
   
//               $('#facility').select2(); 
        
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
    url:'loadYear',
    type:'post',
    dataType:'html',
    success:function (data){
         $("#year").html(data);
         loadmonths();
//        document.getElementById("year").innerHTML=data;
        
    }
    
    
});
               
     
         
         $.ajax({
            url:'load711_new',
            type:'post',
            dataType:'html',
            success:function (data){
                $("#711table").html(data);
//            $("#FPMicrolutN").focus();   
            checkdispensary(); 
    
 var validity=$("#checkValidity").html();
$("#isValidated").html(validity);
  
var invalidatedData=$("#invalidatedData").html();
$("#allunValidated").html(invalidatedData);       
 
 $("#data_elements").val("");
$("#description").val("");
 
}
            
            
        }); 
       

           
  $('body').on('keydown', 'input, select, textarea', function(e) {
var self = $(this)
  , form = self.parents('form:eq(0)')
  , focusable
  , next
  , prev
  ;

if (e.shiftKey) {
 if (e.keyCode == 13) {
     focusable =   form.find('input,a,select,button,textarea').filter(function(){
    return !this.readOnly &&
           !this.disabled &&
           $(this).parentsUntil('form', 'div').css('display') != "none";
});
     prev = focusable.eq(focusable.index(this)-1); 

     if (prev.length) {
        prev.focus();
        $(prev).select();
     } else {
        form.submit();
    }
  }
}
  else
if (e.keyCode == 13) {
    focusable = form.find('input,a,select,button,textarea').filter(function(){
    return !this.readOnly &&
           !this.disabled &&
           $(this).parentsUntil('form', 'div').css('display') != "none";
});
    next = focusable.eq(focusable.index(this)+1);
    if (next.length) {
        next.focus();
       $(next).select();
    } else {
        form.submit();
    }
    return false;
}
});
            
 
                    
     });
      
 
             
             
             //AUTOUPDATING FUNCTION
             
             
             function autosave(col){
var totalsVariables =",VCTClient_Couns_TOT,VCTClient_Tested_TOT,VCTClient_HIV_TOT,DTCA_Couns_Out_Tot,DTCA_Couns_In_Tot,DTCB_Test_Out_Tot,DTCB_Test_In_Tot,DTCC_HIV_Out_Tot,DTCC_HIV_In_Tot,FPProgestinT,FPCocT,FPEcpT,FPINJECTIONST,FPIUCDT,FPIMPLANTST,FPBTLT,FPVasectomyT,FPCONDOMST,FPNaturalT,FPCLIENTST,FPADOLESCENT10_14T,FPADOLESCENT15_19T,FPADOLESCENT20_24T,PMCTANCClientsT,CHANIS0_5NormalweightT,CHANIS0_5UnderweightT,CHANIS0_5sevUnderweightT,CHANIS0_5OverweightT,CHANIS0_5ObeseT,CHANIS0_5TW,CHANIS6_23NormalweightT,CHANIS6_23UnderweightT,CHANIS6_23sevUnderweightT,CHANIS6_23OverweightT,CHANIS6_23ObeseT,CHANIS6_23TW,CHANIS24_59NormalweightT,CHANIS24_59UnderweightT,CHANIS24_59sevUnderweightT,CHANIS24_59OverweightT,CHANIS24_59ObeseT,CHANIS24_59TW,CHANISMUACNormalT,CHANISMUACModerateT,CHANISMUACSevereT,CHANISMUACMeasuredT,CHANIS0_5NormalHeightT,CHANIS0_5StuntedT,CHANIS0_5sevStuntedT,CHANIS0_5TMeas,CHANIS6_23NormalHeightT,CHANIS6_23StuntedT,CHANIS6_23sevStuntedT,CHANIS6_23TMeas,CHANIS24_59NormalHeightT,CHANIS24_59StuntedT,CHANIS24_59sevStuntedT,CHANIS24_59TMeas,CHANIS0_59NewVisitsT,CHANIS0_59KwashiakorT,CHANIS0_59MarasmusT,CHANIS0_59FalgrowthT,CHANIS0_59T,CHANIS0_5EXCLBreastT,CHANIS12_59DewormedT,CHANIS6_23MNPsT,CHANIS0_59DisabilityT,SGBVRape72T,SGBVinitPEPT,SGBVcompPEPT,SGBVPregnantT,SGBVseroconvertingT,SGBVsurvivorsT,";          
 
           
           var achieved=document.getElementById(col).value;
            
          
             $.ajax({
url:'save711new?col='+col+"&achieved="+achieved,
type:'post',
dataType:'html',
success:function (data){
   if(data.trim()!="success"){$("#error").html(data);
//     $("#"+col).css({'background-color' : 'red'});
        }
    else{
        $("#error").html("");
    if(achieved==""){}
  else if(totalsVariables.indexOf(","+col+",")>-1) {
   $("#"+col).css({'background-color' : 'plum'});    
  } else{
      $("#"+col).css({'background-color' : '#CCFFCC'});
}

$("#isValidated").html("<font color=\"red\"><b>Form Not Validated.<img style=\"margin-left:10px;\" src=\"images/notValidated.jpg\" width=\"20px\" height=\"20px\"></b></font>");
}
}
             
             });
             }
          
             
           
             
          
            function numbers(evt){
var charCode=(evt.which) ? evt.which : event.keyCode
if(charCode > 31 && (charCode < 48 || charCode>57)){
return false;
}

else{
 


 
return true;
}
}
     

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
 
//    document.getElementById("checkblank").value='0';
      
 
      
  
       function Microluttotal(){
     
//     alert("called");
      var newvisits=0;
     newvisits= document.getElementById("FPMicrolutN").value;
      var revisits=0;
     revisits= document.getElementById("FPMicrolutR").value;
     
      if(newvisits==""){newvisits=0;}
      if(revisits==""){revisits=0;}
     
     
 
           
           var visitstotal=parseInt(newvisits)+parseInt(revisits);
           
           document.getElementById("FPMicrolutT").value=visitstotal;
         
                  TotalNewRev();     
            autosave('FPMicrolutT');
          
     
      }
      
      
  
       function FPMicrogynon(){
     
     
      var newvisits=document.getElementById("FPMicrogynonN").value;
      var revisits=document.getElementById("FPMicrogynonR").value;
     
      if(newvisits==""){newvisits=0;}
      if(revisits==""){revisits=0;}
     
     
 
           
           var visitstotal=parseInt(newvisits)+parseInt(revisits);
           
           document.getElementById("FPMicrogynonT").value=visitstotal;
         
                   TotalNewRev();    
            autosave('FPMicrogynonT');
          
     
      }
       function FPInjectionsTotal(){
     
     
      var newvisits=document.getElementById("FPINJECTIONSN").value;
      var revisits=document.getElementById("FPINJECTIONSR").value;
     
      if(newvisits==""){newvisits=0;}
      if(revisits==""){revisits=0;}
     
     
 
           
           var visitstotal=parseInt(newvisits)+parseInt(revisits);
           
           document.getElementById("FPINJECTIONST").value=visitstotal;
         
                   TotalNewRev();    
            autosave('FPINJECTIONST');
          
     
      }
       function FPIUCDTotal(){
     
     
      var newvisits=document.getElementById("FPIUCDN").value;
      var revisits=document.getElementById("FPIUCDR").value;
     
      if(newvisits==""){newvisits=0;}
      if(revisits==""){revisits=0;}
     
     
 
           
           var visitstotal=parseInt(newvisits)+parseInt(revisits);
           
           document.getElementById("FPIUCDT").value=visitstotal;
         
                 TotalNewRev();      
            autosave('FPIUCDT');
          
     
      }
       function FPIMPLANTSTotal(){
     
     
      var newvisits=document.getElementById("FPIMPLANTSN").value;
      var revisits=document.getElementById("FPIMPLANTSR").value;
     
      if(newvisits==""){newvisits=0;}
      if(revisits==""){revisits=0;}
     
     
 
           
           var visitstotal=parseInt(newvisits)+parseInt(revisits);
           
           document.getElementById("FPIMPLANTST").value=visitstotal;
         
                TotalNewRev();       
            autosave('FPIMPLANTST');
          
     
      }
       function FPBTLTotal(){
     
     
      var newvisits=document.getElementById("FPBTLN").value;
      var revisits=document.getElementById("FPBTLR").value;
     
      if(newvisits==""){newvisits=0;}
      if(revisits==""){revisits=0;}
     
     
 
           
           var visitstotal=parseInt(newvisits)+parseInt(revisits);
           
           document.getElementById("FPBTLT").value=visitstotal;
         
               TotalNewRev();        
            autosave('FPBTLT');
          
     
      }
       function FPVasectomyTotal(){
     
     
      var newvisits=document.getElementById("FPVasectomyN").value;
      var revisits=document.getElementById("FPVasectomyR").value;
     
      if(newvisits==""){newvisits=0;}
      if(revisits==""){revisits=0;}
     
     
 
           
           var visitstotal=parseInt(newvisits)+parseInt(revisits);
           
           document.getElementById("FPVasectomyT").value=visitstotal;
         
              TotalNewRev();         
            autosave('FPVasectomyT');
          
     
      }
       function FPCONDOMSTotal(){
     
     
      var newvisits=document.getElementById("FPCONDOMSN").value;
      var revisits=document.getElementById("FPCONDOMSR").value;
     
      if(newvisits==""){newvisits=0;}
      if(revisits==""){revisits=0;}
     
     
 
           
           var visitstotal=parseInt(newvisits)+parseInt(revisits);
           
           document.getElementById("FPCONDOMST").value=visitstotal;
         
               TotalNewRev();        
            autosave('FPCONDOMST');
          
     
      }
       function FPOTHERTotal(){
     
     
      var newvisits=document.getElementById("FPOTHERN").value;
      var revisits=document.getElementById("FPOTHERR").value;
     
      if(newvisits==""){newvisits=0;}
      if(revisits==""){revisits=0;}
     
     
 
           
           var visitstotal=parseInt(newvisits)+parseInt(revisits);
           
           document.getElementById("FPOTHERT").value=visitstotal;
         
               TotalNewRev();        
            autosave('FPOTHERT');
          
     
      }
       function FPCLIENTSTotal(){
     
     
      var newvisits=document.getElementById("FPCLIENTSN").value;
      var revisits=document.getElementById("FPCLIENTSR").value;
     
      if(newvisits==""){newvisits=0;}
      if(revisits==""){revisits=0;}
     
     
 
           
           var visitstotal=parseInt(newvisits)+parseInt(revisits);
           
           document.getElementById("FPCLIENTST").value=visitstotal;
         
              TotalNewRev();    
            autosave('FPCLIENTST');
          
     
      }
       function TotalNewRev(){
      var FPMicrolutN = 0;
      var  FPMicrolutR= 0;
      var FPMicrogynonN=0;
      var FPMicrogynonR=0;
      var FPINJECTIONSN=0;
      var FPINJECTIONSR=0;
      var FPIUCDN=0;
      var FPIUCDR=0;
       var FPIMPLANTSN=0;
      var FPIMPLANTSR=0;
       var FPBTLN=0;
      var FPBTLR=0;
         var FPVasectomyN=0;
      var FPVasectomyR=0;
      var FPOTHERN=0;
      var FPOTHERR=0;
      
           var FPMicrolutN = document.getElementById("FPMicrolutN").value;
      var  FPMicrolutR= document.getElementById("FPMicrolutR").value;
      var FPMicrogynonN=document.getElementById("FPMicrogynonN").value;
      var FPMicrogynonR=document.getElementById("FPMicrogynonR").value;
      var FPINJECTIONSN=document.getElementById("FPINJECTIONSN").value;
      var FPINJECTIONSR=document.getElementById("FPINJECTIONSR").value;
      var FPIUCDN=document.getElementById("FPIUCDN").value;
      var FPIUCDR=document.getElementById("FPIUCDR").value;
       var FPIMPLANTSN=document.getElementById("FPIMPLANTSN").value;
      var FPIMPLANTSR=document.getElementById("FPIMPLANTSR").value;
       var FPBTLN=document.getElementById("FPBTLN").value;
      var FPBTLR=document.getElementById("FPBTLR").value;
         var FPVasectomyN=document.getElementById("FPVasectomyN").value;
      var FPVasectomyR=document.getElementById("FPVasectomyR").value;
      var FPOTHERN=document.getElementById("FPOTHERN").value;
      var FPOTHERR=document.getElementById("FPOTHERR").value;
      
      var FPCONDOMSN=document.getElementById("FPCONDOMSN").value;
      var FPCONDOMSR=document.getElementById("FPCONDOMSR").value;
      
       if(FPMicrolutN==""){FPMicrolutN=0;}
       if(FPMicrolutR==""){FPMicrolutR=0;}
       if(FPMicrogynonN==""){FPMicrogynonN=0;}
       if(FPMicrogynonR==""){FPMicrogynonR=0;}
       if(FPINJECTIONSN==""){FPINJECTIONSN=0;}
       if(FPINJECTIONSR==""){FPINJECTIONSR=0;}
       if(FPIUCDN==""){FPIUCDN=0;}
       if(FPIUCDR==""){FPIUCDR=0;}
       if(FPIMPLANTSN==""){FPIMPLANTSN=0;}
       if(FPIMPLANTSR==""){FPIMPLANTSR=0;}
       if(FPBTLN==""){FPBTLN=0;}
       if(FPBTLR==""){FPBTLR=0;}
       if(FPVasectomyN==""){FPVasectomyN=0;}
       if(FPVasectomyR==""){FPVasectomyR=0;}
       if(FPOTHERN==""){FPOTHERN=0;}
       if(FPOTHERR==""){FPOTHERR=0;}
       if(FPCONDOMSN==""){FPCONDOMSN=0;}
       if(FPCONDOMSR==""){FPCONDOMSR=0;}
       
       var newvisitstotal=parseInt(FPMicrolutN)+parseInt(FPMicrogynonN)+ parseInt(FPCONDOMSN)+
               parseInt(FPINJECTIONSN)+parseInt(FPIUCDN)+parseInt(FPIMPLANTSN)+parseInt(FPBTLN)+parseInt(FPVasectomyN)+parseInt(FPOTHERN);
         
           var revisitstotal=parseInt(FPMicrolutR)+parseInt(FPMicrogynonR)+parseInt(FPCONDOMSR)+
               parseInt(FPINJECTIONSR)+parseInt(FPIUCDR)+parseInt(FPIMPLANTSR)+parseInt(FPBTLR)+parseInt(FPVasectomyR)+parseInt(FPOTHERR);
         var total=parseInt(newvisitstotal)+parseInt(revisitstotal);
         
           if(newvisitstotal==""){newvisitstotal=0;}
            if(revisitstotal==""){revisitstotal=0;}
            if(total==""){total=0;}

          document.getElementById("FPCLIENTSN").value=newvisitstotal;
         document.getElementById("FPCLIENTSR").value=revisitstotal;
         document.getElementById("FPCLIENTST").value=total;
                  
            autosave('FPCLIENTSN');
            autosave('FPCLIENTSR');
            autosave('FPCLIENTST');
          
     
      }
//      PMCTA_1stVisit_ANC=PMCTA_ReVisit_ANC=PMCTANCClientsT
  function anctotal(){
     
     
      var newvisits=document.getElementById("PMCTA_1stVisit_ANC").value;
      var revisits=document.getElementById("PMCTA_ReVisit_ANC").value;
     
      if(newvisits==""){newvisits=0;}
      if(revisits==""){revisits=0;}
     
     
 
           
           var visitstotal=parseInt(newvisits)+parseInt(revisits);
           
           document.getElementById("PMCTANCClientsT").value=visitstotal;
         
           
            autosave('PMCTANCClientsT');
          
     
      }
      
      //  VCTClient_Couns_CM=VCTClient_Couns_CF=VCTClient_Couns_AM=VCTClient_Couns_AF=VCTClient_Couns_TOT=
  // VCTClient_Tested_CM=VCTClient_Tested_CF=VCTClient_Tested_AM=VCTClient_Tested_AF
//=VCTClient_Tested_TOT=VCTClient_HIV_CM=VCTClient_HIV_CF=VCTClient_HIV_AM=VCTClient_HIV_AF=VCTClient_HIV_TOT
  //=VCTPartner_Couns_TOT=VCTPartner_Tested_TOT=VCTPartner_HIV_TOT=VCTPartner_Disc_TOT="";
  function vctconstotal(){
     var cm=0;
     var cf=0;
     var am=0;
     var af=0;
     
       cm=document.getElementById("VCTClient_Couns_CM").value;
       cf=document.getElementById("VCTClient_Couns_CF").value;
       am=document.getElementById("VCTClient_Couns_AM").value;
       af=document.getElementById("VCTClient_Couns_AF").value;
     
      if(cm==""){cm=0;}
      if(cf==""){cf=0;}
      if(am==""){am=0;}
      if(af==""){af=0;}
     
     
 
           
           var visitstotal=parseInt(cm)+parseInt(cf)+parseInt(am)+parseInt(af);
           
           document.getElementById("VCTClient_Couns_TOT").value=visitstotal;
         
           
            autosave('VCTClient_Couns_TOT');
          
     
      }
  function vcttestedtotal(){
     var cm=0;
     var cf=0;
     var am=0;
     var af=0;
     
       cm=document.getElementById("VCTClient_Tested_CM").value;
       cf=document.getElementById("VCTClient_Tested_CF").value;
       am=document.getElementById("VCTClient_Tested_AM").value;
       af=document.getElementById("VCTClient_Tested_AF").value;
     
      if(cm==""){cm=0;}
      if(cf==""){cf=0;}
      if(am==""){am=0;}
      if(af==""){af=0;}
     
     
 
           
           var visitstotal=parseInt(cm)+parseInt(cf)+parseInt(am)+parseInt(af);
           
           document.getElementById("VCTClient_Tested_TOT").value=visitstotal;
         
           
            autosave('VCTClient_Tested_TOT');
          
     
      }
  function vcthivtotal(){
     var cm=0;
     var cf=0;
     var am=0;
     var af=0;
     
       cm=document.getElementById("VCTClient_HIV_CM").value;
       cf=document.getElementById("VCTClient_HIV_CF").value;
       am=document.getElementById("VCTClient_HIV_AM").value;
       af=document.getElementById("VCTClient_HIV_AF").value;
     
      if(cm==""){cm=0;}
      if(cf==""){cf=0;}
      if(am==""){am=0;}
      if(af==""){af=0;}
     
     
 
           
           var visitstotal=parseInt(cm)+parseInt(cf)+parseInt(am)+parseInt(af);
           
           document.getElementById("VCTClient_HIV_TOT").value=visitstotal;
         
           
            autosave('VCTClient_HIV_TOT');
          
     
      }
      
      
                 
//           DTCA_Couns_In_CM=DTCA_Couns_In_CF=DTCA_Couns_In_AM=DTCA_Couns_In_AF=DTCA_Couns_In_Tot=
        //DTCA_Couns_Out_CM=DTCA_Couns_Out_CF=DTCA_Couns_Out_AM=DTCA_Couns_Out_AF=DTCA_Couns_Out_Tot=
       // DTCB_Test_In_CM=DTCB_Test_In_CF
//=DTCB_Test_In_AM=DTCB_Test_In_AF=DTCB_Test_In_Tot=DTCB_Test_Out_CM=DTCB_Test_Out_CF=DTCB_Test_Out_AM=DTCB_Test_Out_AF
      //  =DTCB_Test_Out_Tot=DTCC_HIV_In_CM=DTCC_HIV_In_CF=DTCC_HIV_In_AM
//=DTCC_HIV_In_AF= DTCC_HIV_In_Tot=
      //  DTCC_HIV_Out_CM=DTCC_HIV_Out_CF=DTCC_HIV_Out_AM=DTCC_HIV_Out_AF=DTCC_HIV_Out_Tot=Userid="";

   function counsintotal(){
     var cm=0;
     var cf=0;
     var am=0;
     var af=0;
     
       cm=document.getElementById("DTCA_Couns_In_CM").value;
       cf=document.getElementById("DTCA_Couns_In_CF").value;
       am=document.getElementById("DTCA_Couns_In_AM").value;
       af=document.getElementById("DTCA_Couns_In_AF").value;
     
      if(cm==""){cm=0;}
      if(cf==""){cf=0;}
      if(am==""){am=0;}
      if(af==""){af=0;}
     
     
 
           
           var visitstotal=parseInt(cm)+parseInt(cf)+parseInt(am)+parseInt(af);
           
           document.getElementById("DTCA_Couns_In_Tot").value=visitstotal;
         
           
            autosave('DTCA_Couns_In_Tot');
          
     
      }        
   function counsouttotal(){
     var cm=0;
     var cf=0;
     var am=0;
     var af=0;
     
       cm=document.getElementById("DTCA_Couns_Out_CM").value;
       cf=document.getElementById("DTCA_Couns_Out_CF").value;
       am=document.getElementById("DTCA_Couns_Out_AM").value;
       af=document.getElementById("DTCA_Couns_Out_AF").value;
     
      if(cm==""){cm=0;}
      if(cf==""){cf=0;}
      if(am==""){am=0;}
      if(af==""){af=0;}
     
     
 
           
           var visitstotal=parseInt(cm)+parseInt(cf)+parseInt(am)+parseInt(af);
           
           document.getElementById("DTCA_Couns_Out_Tot").value=visitstotal;
         
           
            autosave('DTCA_Couns_Out_Tot');
          
     
      }        
   function testedintotal(){
     var cm=0;
     var cf=0;
     var am=0;
     var af=0;
     
       cm=document.getElementById("DTCB_Test_In_CM").value;
       cf=document.getElementById("DTCB_Test_In_CF").value;
       am=document.getElementById("DTCB_Test_In_AM").value;
       af=document.getElementById("DTCB_Test_In_AF").value;
     
      if(cm==""){cm=0;}
      if(cf==""){cf=0;}
      if(am==""){am=0;}
      if(af==""){af=0;}
     
     
 
           
           var visitstotal=parseInt(cm)+parseInt(cf)+parseInt(am)+parseInt(af);
           
           document.getElementById("DTCB_Test_In_Tot").value=visitstotal;
         
           
            autosave('DTCB_Test_In_Tot');
          
     
      }        
           
   function testedouttotal(){
     var cm=0;
     var cf=0;
     var am=0;
     var af=0;
     
       cm=document.getElementById("DTCB_Test_Out_CM").value;
       cf=document.getElementById("DTCB_Test_Out_CF").value;
       am=document.getElementById("DTCB_Test_Out_AM").value;
       af=document.getElementById("DTCB_Test_Out_AF").value;
     
      if(cm==""){cm=0;}
      if(cf==""){cf=0;}
      if(am==""){am=0;}
      if(af==""){af=0;}
     
     
 
           
           var visitstotal=parseInt(cm)+parseInt(cf)+parseInt(am)+parseInt(af);
           
           document.getElementById("DTCB_Test_Out_Tot").value=visitstotal;
         
           
            autosave('DTCB_Test_Out_Tot');
          
     
      }        
         function hivouttotal(){
     var cm=0;
     var cf=0;
     var am=0;
     var af=0;
     
       cm=document.getElementById("DTCC_HIV_Out_CM").value;
       cf=document.getElementById("DTCC_HIV_Out_CF").value;
       am=document.getElementById("DTCC_HIV_Out_AM").value;
       af=document.getElementById("DTCC_HIV_Out_AF").value;
     
      if(cm==""){cm=0;}
      if(cf==""){cf=0;}
      if(am==""){am=0;}
      if(af==""){af=0;}
     
     
 
           
           var visitstotal=parseInt(cm)+parseInt(cf)+parseInt(am)+parseInt(af);
           
           document.getElementById("DTCC_HIV_Out_Tot").value=visitstotal;
         
           
            autosave('DTCC_HIV_Out_Tot');
          
     
      }    
         function hivintotal(){
     var cm=0;
     var cf=0;
     var am=0;
     var af=0;
     
       cm=document.getElementById("DTCC_HIV_In_CM").value;
       cf=document.getElementById("DTCC_HIV_In_CF").value;
       am=document.getElementById("DTCC_HIV_In_AM").value;
       af=document.getElementById("DTCC_HIV_In_AF").value;
     
      if(cm==""){cm=0;}
      if(cf==""){cf=0;}
      if(am==""){am=0;}
      if(af==""){af=0;}
     
     
 
           
           var visitstotal=parseInt(cm)+parseInt(cf)+parseInt(am)+parseInt(af);
           
           document.getElementById("DTCC_HIV_In_Tot").value=visitstotal;
         
           
            autosave('DTCC_HIV_In_Tot');
          
     
      }    
      function maternitytotals(){
      var normaldeliveries=0;
     var csdeliveries=0;
     var breechdeliveries=0;
     var assisteddeliveries=0;
     
       normaldeliveries=document.getElementById("MATNormalDelivery").value;
       csdeliveries=document.getElementById("MATCSection").value;
       breechdeliveries=document.getElementById("MATBreech").value;
       assisteddeliveries=document.getElementById("MATAssistedVag").value;
     
      if(normaldeliveries==""){normaldeliveries=0;}
      if(csdeliveries==""){csdeliveries=0;}
      if(breechdeliveries==""){breechdeliveries=0;}
      if(assisteddeliveries==""){assisteddeliveries=0;}
     
     
 
           
           var deliveriestotal=parseInt(normaldeliveries)+parseInt(csdeliveries)+parseInt(breechdeliveries)+parseInt(assisteddeliveries);
                if(deliveriestotal==""){deliveriestotal=0;}
           document.getElementById("MATDeliveryT").value=deliveriestotal;
         
           
            autosave('MATDeliveryT');
            
          
          
          
      }
      
      
      function autosum(sourceindicators,destinationindicator){
    var sourceindicatorsarray=sourceindicators.split("@");
  
   
    var destinationelement=destinationindicator;
    var total=0;
    var allblanks=true;
    for(b=0;b<sourceindicatorsarray.length;b++){
        //check if there
        if($("#"+sourceindicatorsarray[b]).val()!==''){
      total=parseInt(total)+parseInt($("#"+sourceindicatorsarray[b]).val()); 
        
            $("#"+destinationelement).val(total);
             allblanks=false;
            }
                                               
        }
          if(allblanks===true){  $("#"+destinationelement).val("");   }                                    
       autosave(destinationindicator);                                      
    
}
      
      
   </script>   
     <script type="text/javascript" src="js/validate711.js"></script>
   <script type="text/javascript">
 $(document).ready(function(){
   var errorsFP=0,errorsVCT=0,errorsDTC=0;

//    $('#myModal').modal();
   $("form").submit(function(){
//       alert("mmmm");
       var errors=0;
       $("#data_elements").val("");
$("#description").val("");
       $(":text").css({'background-color' : 'white'});        
var totalsVariables ="FPMicrolutT,FPMicrogynonT,FPINJECTIONST,MATDeliveryT,FPIUCDT,FPIMPLANTST,FPBTLT,FPVasectomyT,FPOTHERT,FPCONDOMST,FPCLIENTST,FPCLIENTSN,FPCLIENTSR,PMCTANCClientsT,VCTClient_Couns_TOT,VCTClient_Tested_TOT,VCTClient_HIV_TOT,DTCA_Couns_Out_Tot,DTCA_Couns_In_Tot,DTCB_Test_Out_Tot,DTCB_Test_In_Tot,DTCC_HIV_Out_Tot,DTCC_HIV_In_Tot,";          

var arrayTotals=totalsVariables.split(",");  
var arrayLength=arrayTotals.length;
var i=0;
//alert("length : "+arrayLength);
while(i<arrayLength){
 $("#"+arrayTotals[i]).css({'background-color' : '#DDDDDD'});          
 i++;   
}
var allErrors="The following errors were found : <br><br>";
  var returned;
//   if ( $( "#HV0101" ).length ) {    
//   errorsHCT=validateHCT();
//   if(parseInt(errorsHCT)>0){
//   allErrors+=" "+errorsHCT+" errors in HIV Counselling and Testing.<br>";
//   }
//   }
   
   if ( $( "#FPMicrolutN" ).length ) {
   errorsFP=validateFP();
//   alert("errors"+errorsPMTCT);
if(parseInt(errorsFP)>0){
   allErrors+=" "+errorsFP+" error(s) were found in FP section.<br>";
errors+=parseInt(errorsFP);
}
}
   if ( $( "#VCTClient_Couns_CF" ).length ) {
  
   errorsVCT=validateVCT();
//   alert("errors"+errorsPMTCT);
if(parseInt(errorsVCT)>0){
   allErrors+=" "+errorsVCT+" error(s) were found in VCT section.<br>";
errors+=parseInt(errorsVCT);
}
}
   if ( $( "#DTCA_Couns_Out_CF" ).length ) {
  
   errorsDTC=validateDTC();
//   alert("errors"+errorsPMTCT);
if(parseInt(errorsDTC)>0){
   allErrors+=" "+errorsDTC+" error(s) were found in DTC section.<br>";
errors+=parseInt(errorsDTC);
}
}

//if ( $( "#HV0301" ).length ) {
//   errorsCT=validateCT();
////   alert("errors"+errorsCT);
//if(parseInt(errorsCT)>0){
//   allErrors+=" "+errorsCT+" error(s) were found in Care and Treatment section.<br>";
//errors+=parseInt(errorsCT);
//}
//}
//
////if ( $( "#HV0401" ).length ) {
////   errorsVMMC=validateVMMC();
//////   alert("errors"+errorsVMMC);
////if(parseInt(errorsVMMC)>0){
////   allErrors+=" "+errorsVMMC+" errors in VMMC.<br>";
////}
////}
//
//if ( $( "#HV0501" ).length ) {
//   errorsPEP=validatePEP();
////   alert("errors"+errorsPEP);
//if(parseInt(errorsPEP)>0){
//   allErrors+=" "+errorsPEP+" error(s) were found in Post-Exposure Prophylaxis (PEP) section.<br>";
//errors+=parseInt(errorsPEP);
//}
//}

//if ( $( "#HV0601" ).length ) {
//   errorBLOOD=validateBlood();
////   alert("errors"+errorBLOOD);
//if(parseInt(errorBLOOD)>0){
//   allErrors+=" "+errorBLOOD+" errors in Blood safety.<br>";
//}
//} 

//alert("errors : "+allErrors);


if(errors>0){
    $("#errorBody").html(allErrors);
     $('#notifier').modal();
$("#submit").click(function(){
//  alert("to submit");  
$('#notifier').modal('hide');
$.ajax({
        url: 'validate711',
        type: 'post',
        dataType: 'html',
        data: $('form').serialize(),
        success: function() {
//                alert("submitted");
       location.reload();
      
       
                 }
         
    });
  });    
 $("#viewErrors").click(function(){
//alert("to view errors");
  });
  
  returned = false;
}
else{
    returned=true;
}
 $('[data-toggle="tooltip"]').tooltip();
return returned;
 });});
 
// $("#demo").onload = function() {checkdispensary()};  
 function checkdispensary(){

    var facil=document.getElementById("facility");
    var faci= facil.options[facil.selectedIndex].innerHTML;
    var facilityname = facil.options[facil.selectedIndex].text;
//     alert(faci+"___"+facilityname);
   if(facilityname.contains("Dispensary"))  {
       
//       alert("entered facilty");
      
        if ( $( "#DTCA_Couns_Out_CF" ).length ) {
//                alert("entered facilty")
       
   document.getElementById("DTCB_Test_In_CF").disabled=true;
  document.getElementById("DTCC_HIV_In_CF").disabled=true;
   
 document.getElementById("DTCB_Test_In_CM").disabled=true;
  document.getElementById("DTCC_HIV_In_CM").disabled=true;


document.getElementById("DTCB_Test_In_AM").disabled=true;
  document.getElementById("DTCC_HIV_In_AM").disabled=true;
  
 document.getElementById("DTCC_HIV_In_AF").disabled=true;
 document.getElementById("DTCB_Test_In_AF").disabled=true;
        }
   }
 }
  
 


    </script>

   <!-- END JAVASCRIPTS -->  
   
   
   </div>
</body>
<!-- END BODY -->
</html>

