/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */






function loadqueries(){
  
        
      
        
         $.ajax({
            url:'loadQueryHistory',
            type:'post',
            dataType:'json',
            success:function (data){
                 var qrs="<option value=''>Select Query </value>";
                for(var as=0;as<data.length;as++){
               
            qrs+="<option data-qname=\""+data[as].queryname+"\" value=\""+data[as].qry+"\">"+data[as].queryname+"</option>";
            
            $("#queryhistory").html(qrs);
            $("#queryhistory").select2();
                
            }
            }

                                   });
            
            
                                 }
        
    loadqueries();


function showqry(){
    
    var vl1=$("#queryhistory").val();
    var qn=$("#queryhistory").find(':selected').attr('data-qname');
    qn=qn.replace("/"," or ");
    qn=qn.replaceAll(" ","_");
    qn=qn.substring(0,60);
    
   $("#query").val(vl1);
   $("#qname").val(qn);
    
    
}

