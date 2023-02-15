@AbapCatalog.sqlViewName: 'ZSE11ASSO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds322'
@OData: {
    publish: true
}
define view zcds32 as select from spfli as a
association [0..*] to sflight as _sflight
    on $projection.Carrid = _sflight.carrid and 
    $projection.Connid = _sflight.connid {
    
      
   key a.carrid as Carrid,
   key a.connid as Connid,
   distance, 
   distid,
    
   
    
    
    _sflight // Make association public
}
