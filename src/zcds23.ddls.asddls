@AbapCatalog.sqlViewName: 'ZCDSE1124'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds23'
define view zcds23 as select from scarr{
    key carrid, 
    carrname, 
    @EndUserText: {
        label: 'Currency Code '
      
    }
    currcode, 
    @EndUserText: {
        label: 'URL',
        quickInfo: 'Wht ever u LIKE '
    }
    url
}
