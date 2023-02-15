@AbapCatalog.sqlViewName: 'ZSE11_VDM_SCUS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'SCUSTOMVDM'
define view ZVDM_SCUSTOM as select from  scustom
association [1] to I_Country as _COUNTRY  
    on $projection.country = _COUNTRY.Country {
    
    
    key id as Customer, 
    name as Custname, 
    country , 
    city ,
    _COUNTRY // Make association public
}
