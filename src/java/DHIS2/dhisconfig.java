/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DHIS2;

/**
 *
 * @author EKaunda
 */



public class dhisconfig {
  
String dhis2_Name =null;
String dhis2_Home_URL =null;

    
String dhis2_username=null; 
String dhis2_Password=null;

String  dhis2_API_URL=null; 

String  dhis2_API_URL_orgUnits=null;  
String  dhis2_API_URL_dataElements=null;  
String  dhis2_API_URL_CategoryCombinations=null;  
String  dhis2_API_URL_Dataset=null;  
String  dhis2_API_URL_OrgunitGroup=null;  
String  dhis2_API_URL_F1a=null;  
String  dhis2_API_URL_DailyART=null;  
String  dhis2_API_URL_UploadF1a=null;  

  public dhisconfig()
  {
  
  dhis2_Name ="Afya Nyota Ya Bonde";
  dhis2_Home_URL ="https://dhis-afyanyota.fhi360.org/";
  //dhis2_Home_URL ="https://hiskenya.org/";
  dhis2_username="ekaunda";
  dhis2_Password="Plusaphia2013!";
  //dhis2_Password="Otenyo27108382";
  dhis2_API_URL="api/";
  
  dhis2_API_URL_orgUnits="organisationUnits.json?fields=id,name,level,parent,path,shortName&paging=false&links=false";  
  dhis2_API_URL_dataElements="dataElements.json?paging=false&links=false";  
  dhis2_API_URL_CategoryCombinations="categoryOptionCombos.json?paging=false&links=false";  
  dhis2_API_URL_Dataset="dataSets.json?paging=false&links=false";  
  dhis2_API_URL_OrgunitGroup="organisationUnitGroups.json?paging=false&links=false";  
  dhis2_API_URL_F1a="dataValueSets.json?dataSet=kwoxlVdwR8d&orgUnitGroup=lWgRU0sXJ87&links=false&paging=false&startDate=2020-03-01&endDate=2020-03-31";
  dhis2_API_URL_DailyART="dataValueSets.json?dataSet=LFO4FCdCY4g&orgUnitGroup=lWgRU0sXJ87&links=false&paging=false&startDate=2020-03-01&endDate=2020-03-31";
  dhis2_API_URL_UploadF1a="dataValueSets";
  
  }  
  
public String getDhis2_username() {
        return dhis2_username;
    }

    public void setDhis2_username(String dhis2_username) {
        this.dhis2_username = dhis2_username;
    }

    public String getDhis2_Password() {
        return dhis2_Password;
    }

    public void setDhis2_Password(String dhis2_Password) {
        this.dhis2_Password = dhis2_Password;
    }
  
}
