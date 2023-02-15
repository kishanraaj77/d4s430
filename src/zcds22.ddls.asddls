@AbapCatalog.sqlViewName: 'ZCDSE1122'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS22'
define view ZCDS22 as select from scustom{
    key id, 
    name
    
}
