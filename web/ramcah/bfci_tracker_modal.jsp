<%-- 
    Document   : bfci_tracker_modal
    Created on : Oct 15, 2023, 1:53:20 PM
    Author     : Emmanuel Kaunda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
         
          
    <body>
            <button type="button" class="btn  btn-success" data-toggle="modal" data-target="#exampleModalCenter">Reporting Rate</button>
				
					
						<div id="exampleModalCenter" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalCenterTitle">BFCI Reporting Rates</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									</div>
									<div class="modal-body">
									
                                                                        
<div class='form-group col-md-12'>
<label for='donor_name'><b>Start Year Month<font color='red'>*</font></b></label>
<select required="true" type='select'  class='form-control' id='startdate' name='startdate'  >  
</select>
</div>
                                                                            
                                                                            
<div class='form-group col-md-12'>
<label for='donor_name'><b>End Year Month<font color='red'>*</font></b></label>
<select required="true" type='select'  class='form-control' id='enddate' name='enddate'  >  
</select>
</div>
                                                                        
                                                                        </div>
									<div class="modal-footer">
										<button type="button" class="btn  btn-secondary" data-dismiss="modal">Close</button>
										                                                                               
                                                                                  <label id="generaterpt" class="btn btn-success" onclick="getReport('bfci_tracker','startdate','enddate');">Generate report</label>
                                                                                  
                                                                                  <button  style="display:none;"  class="btn  btn-primary m-2 loading" type="button" disabled>
									<span class="spinner-border spinner-border-sm" role="status"></span>
									Loading...
								</button>
									</div>
								</div>
							</div>
						</div>
       
            </body>
                                                       
</html>
