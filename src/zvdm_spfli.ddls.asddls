@AbapCatalog.sqlViewName: 'ZSE11_SPFLI_VDM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'SPFLIVDM'



@Analytics: {
    dataExtraction: {
        enabled: true
    },
 
 
     dataCategory: #DIMENSION                       
 }
 
 @VDM: {
     viewType: #BASIC
 }

define view ZVDM_SPFLI as select from spfli
association [1] to ZVDM_SCARR as _AIRLINE
    on $projection.AIRLINE = _AIRLINE.AIRLINE {
    
    
    key carrid as AIRLINE ,
    key connid as FLCONNECTNO, 
    cityfrom as SOURCECITY, 
    cityto as DESTCITY ,
   
    _AIRLINE // Make association public
}
