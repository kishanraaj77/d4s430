@AbapCatalog.sqlViewName: 'ZSE11_SCARR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'SCARR'


@VDM: {
    viewType:   #BASIC
}

@Analytics: {
    dataExtraction: {
        enabled: true },
    dataCategory:               #DIMENSION
}


define view ZVDM_SCARR as select from scarr {
    key carrid as AIRLINE, 
    carrname as AIRLINENAME, 
    @Semantics: {
        currencyCode: true
    }
    currcode as CURRENCY 
}
