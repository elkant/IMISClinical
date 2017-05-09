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
   <title>Static Reports</title>
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

  
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="fixed-top">
   <!-- BEGIN HEADER -->
   <div class="header navbar navbar-inverse navbar-fixed-top">
      <!-- BEGIN TOP NAVIGATION BAR -->
      <div class="navbar-inner">
         <div class="container-fluid">
            <!-- BEGIN LOGO -->
            <h1 style="text-align:center;font-size: 50px;color:white;padding-bottom:16px ;font-weight: bolder;">IMIS REPORTS</h1><br/>
            
            <!-- END LOGO -->
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
            <img src="assets/img/menu-toggler.png" alt="" />
            </a>          
            <!-- END RESPONSIVE MENU TOGGLER -->            
            <!-- BEGIN TOP NAVIGATION MENU -->              
            <ul class="nav pull-right">
              
               <!-- END NOTIFICATION DROPDOWN -->
               <!-- BEGIN INBOX DROPDOWN -->
             
             
               <!-- END TODO DROPDOWN -->
               <!-- BEGIN USER LOGIN DROPDOWN -->
               
             <!--  
               <li class="dropdown user">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                 
                  <span class="username" style="background: ;">Welcome</span>
                  <i class="icon-angle-down"></i>
                  </a>
                  <ul class="dropdown-menu">
                     <li><a href="editProfile.jsp"><i class="icon-user"></i> User Profile</a></li>
                   
                     <li class="divider"></li>
                     <li><a href="logout.jsp"><i class="icon-key"></i>Log Out</a></li>
                  </ul>
               </li> -->
               
               
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
       <%@include file="/menu/minimenu.jsp"%>
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
                    
<!--                    Internal System-->
                  </h3>
                  <ul class="breadcrumb">
                     <li>
                        <i class="icon-home"></i>
                        <a href="#">Reports </a> 
                        <span class="icon-angle-right"></span>
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
                       
                     </div>
                     <div class="portlet-body form">
                        <!-- BEGIN FORM-->
                        <form action="sessionsHolder" class="form-horizontal">
                          
                            
                            
                              <div class="control-group">
                              <label class="control-label">Select Form<font color='red'><b>*</b></font></label>
                              <div class="controls">
                                 <select required data-placeholder="Form" multiselect class="span6 m-wrap" tabindex="-1"  id="form" name="form">
                                 <option value="">Select Form</option>                                
                                 <option value="moh731">MOH 731</option>                                
                                 <option value="moh711">MOH 711</option>                                
                                 <option value="kmmp">KMMP</option>                                
                                 <option value="vmmc">VMMC</option>                                
                                 <option value="nutrition">NUTRITION</option>                                
                                 <option value="gender">GENDER</option>                                
                                   
                                 </select>
                              </div>
                             </div>
                         
                           <div class="control-group">
                              <label class="control-label">Reporting Year<font color='red'><b>*</b></font></label>
                              <div class="controls">
                                 <select required data-placeholder="Reporting Year" class="chosen-with-diselect span6" tabindex="-1" onchange="loadmonths(this);"  id="year" name="year">
                                    <option value=""></option>                                 
                                   
                                 </select>
                              </div>
                           </div>
                            
                            <div class="control-group">
                              <label class="control-label">Reporting Rate<font color='red'><b>*</b></font></label>
                              <div class="controls">
                                 <select required data-placeholder="Reporting Rate" onchange="deciderate();" class="chosen-with-diselect span6" tabindex="-1"  id="reportingrate" name="reportingrate">
                                    <option value="">Reporting Rate</option>                                 
                                    <option selected title="covers data summation/avg/cumulatives for the selected month" value="monthly">Monthly</option>                                 
                                    <option tittle="covers data summation/avg/cumulatives for the selected quarter" value="quarterly">Quarterly</option>                                 
                                    <option tittle="covers data summation/avg/cumulatives for the selected semi-annual period" value="semiannually">Semi Annually</option>                                 
                                    <option  title="covers data summation/avg/cumulatives for the selected year" value="annually">Annually</option>                                 
                                   
                                 </select>
                              </div>
                           </div>
                            
                          <div id="monthdiv" style="display:none;">
                             <div class="control-group"  >
                              <label class="control-label">Reporting Month<font color='red'><b>*</b></font></label>
                              <div class="controls">
                                 <select  data-placeholder="Reporting Month" class="span6 m-wrap" tabindex="-1"  id="month" name="month">
                                    <option value="">Choose reporting year first</option>                                 
                                   
                                 </select>
                              </div>
                           </div>
                           </div>
                            <div id="qtrdiv" style="display:none;">
                            
                              <div class="control-group" id="quarterdiv">
                              <label class="control-label">Reporting Quarter<font color='red'><b>*</b></font></label>
                              <div class="controls">
                              <select   data-placeholder="Reporting Quarter" class="chosen span6 chzn-done"  tabindex="-1"  id="quarter" name="quarter">
                                    <!--<option value="jan"></option>-->                                 
                                   
                              </select>
                              </div>
                              </div>
                             </div>
                            
                            
                             <div id="semianndiv" style="display:none;">
                            
                              <div class="control-group" id="quarterdiv">
                              <label class="control-label">Reporting Semi-Annual<font color='red'><b>*</b></font></label>
                              <div class="controls">
                                  <select   data-placeholder="Reporting Semi Annual" class="chosen span6 chzn-done"  tabindex="-1"  id="semiannual" name="semiannual">
                                    
                                  </select>
                              </div>
                              </div>
                             </div>
                            
                            
                              <div class="control-group" style=" width:277px;">
                                   <label class="control-label">Specify Organizational Unit</label>
                             <div class="controls">
                                 
                                <input style="margin-left: 0px;"  type="checkbox" id="orgunitbox" >
                                 
                                 
                              </div>
                           </div>
                            
                            
                            <div id="orgunit" style="display:none;width:500px;">
                            
                              <div class="control-group">
                              <label class="control-label">County </label>
                              <div class="controls">
                                 <select placeholder="Type name to search" multiple="multiple" onchange="loadsubcounty();"  class="span6 m-wrap" tabindex="-1"  id="county" name="county">
                                    <option value="">Type to search county</option>
                                 </select>
                                  
                                  <input type="checkbox" id="countybox" >  Select All
                              </div>
                           </div>
                            
                            <div class="control-group">
                              <label class="control-label">Sub-County </label>
                              <div class="controls">
                                 <select multiple="multiple" data-placeholder="Type a sub-county name to search it" onchange="loadfacils();"  class="span6 m-wrap" tabindex="-1"  id="subcounty" name="subcounty">
                                    <option value="">Select County First</option>
                                 </select>
                              </div>
                           </div> 
                            
                            
                              <div class="control-group">
                              <label class="control-label">Activity Site<font color='red'><b>*</b></font></label>
                              <div class="controls">
                                 <select data-placeholder="Type a Facility Name to search it." onchange="updatefacilsession();" class="span6 m-wrap" required tabindex="-1"  id="facility" name="facility">
                                    <option value=""></option>
                                 </select>
                              </div>
                           </div>
                            
                           </div>
                            
                         
                           <div class="form-actions">
                              <button type="submit" class="btn blue">Generate Report</button>
<!--                              <button type="button" class="btn">Cancel</button>-->
                           </div>
                        </form>
                        <!-- END FORM-->           
                     </div>
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
   <script src="assets/js/jquery-1.8.3.min.js"></script>    
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

       // FormComponents.init();
        
      
      //load all the facilities first to enable one to filter by county
                 $.ajax({
url:'loadFacilities',
type:'post',
dataType:'html',
success:function (data){
       $("#facility").html(data);
         if(document.getElementById("facility").value!==''){
      updatefacilsession();
      
      $('#facility').select2();  
      }  
     
         // $("#facility").chosen();
       
       
}


}); 
      
      
         
$.ajax({
    url:'loadYear',
    type:'post',
    dataType:'html',
    success:function (data){
        //alert("_");
        // $("#year").html(data);
        document.getElementById("year").innerHTML=data;
        loadmonths();
        loadqtr();
    }
    
    
}); 
               
      });
      
      
      
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
      
    
    function updatefacilsession(){
          
        var facil=document.getElementById("facility").value;
        $.ajax({
url:'updatefacilitysession?facil='+facil,
type:'post',
dataType:'html',
success:function (data){      
    
    //  $("#"+col).css({'background-color' : '#CCFFCC'});
     
     //now load the forms
     
    
     
}
             
             });    
          
          
          
      }
    
    
    
         function deciderate(){
         
         if(document.getElementById("reportingrate").value=='monthly'){
             
          
             document.getElementById("monthdiv").style.display='block';
             document.getElementById("qtrdiv").style.display='none';
             document.getElementById("semianndiv").style.display='none';
         }
         else  if(document.getElementById("reportingrate").value=='quarterly'){
             
             document.getElementById("monthdiv").style.display='none';
             document.getElementById("qtrdiv").style.display='block';
             document.getElementById("semianndiv").style.display='none';
             
         }
         else  if(document.getElementById("reportingrate").value=='semiannually'){
             
             document.getElementById("monthdiv").style.display='none';
             document.getElementById("qtrdiv").style.display='none';
             document.getElementById("semianndiv").style.display='block';
             
                                                                                 }  
                                                                                 
         else {
             document.getElementById("monthdiv").style.display='none';
             document.getElementById("qtrdiv").style.display='none';
             document.getElementById("semianndiv").style.display='none';     
                                                                                     
                                                                                 }
     }
    
    
    function loadfrms(){
        
        
        $.ajax({
            url:'loadReportedForms',
            type:'post',
            dataType:'html',
            success:function (data){
                $("#form").html(data);
                
              //  App.init(); 
              
              //also load county and facility
              loadcounty();
              //loadsubcounty();
            }
            
            
        });
        
    }
    
    $("#countybox").click(function(){
    if($("#countybox").is(':checked') ){
        $("#county > option").prop("selected","selected");
        $("#county").trigger("change");
    }else{
        $("#county > option").removeAttr("selected");
         $("#county").trigger("change");
     }
});
   
   
     $("#orgunitbox").click(function(){
    if($("#orgunitbox").is(':checked') ){
     document.getElementById("orgunit").style.display='block';
               
        
    }else{
        document.getElementById("orgunit").style.display='none'; 
       
     }
});
   
     
    function loadcounty(){
        
        
        $.ajax({
            url:'loadCounty',
            type:'post',
            dataType:'html',
            success:function (data){
                $("#county").html(data);
                 $('#county').select2(); 
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
                  $('#subcounty').select2();  
              //  App.init();   
            }
            
            
        });
        
    }
    
    
    
      function loadmonths(){
      //alert("");
      var yr=document.getElementById("year").value;
      
              $.ajax({
url:'loadMonth?year='+yr,
type:'post',
dataType:'html',
success:function (data){
    $("#month").html(data);     
    
       //document.getElementById("month").innerHTML=data;
      // App.init();  
        
}


});  
      
      
      }
      
       
      function loadqtr(){
      //alert("");
      var yr=document.getElementById("year").value;
      
              $.ajax({
url:'loadQuarter?year='+yr,
type:'post',
dataType:'html',
success:function (data){



var tmplist = data.split('#');
var hashlist =[];
var nonhashlist = [];
for(var w in tmplist){
    if(tmplist[ w ].indexOf('#') == 0)
        hashlist.push(tmplist[ w ]);
    else
        nonhashlist.push(tmplist[ w ]);
}

  
    $("#quarter").html(tmplist[0]);     
    $("#semiannual").html(tmplist[1]);     
    
       //document.getElementById("month").innerHTML=data;
      // App.init();  
        
}


});  
      
      
      }
      
      //load default facilities
     loadcounty();
       loadfrms();
       deciderate();
   </script>
   <!-- END JAVASCRIPTS -->   
</body>
<!-- END BODY -->
</html>

