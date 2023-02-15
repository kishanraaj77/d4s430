@AbapCatalog.sqlViewName: 'ZSE11SE11'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZCD234'
define view zcds34 as    select from sflight as a 
inner join sflconnpos as b 
on a.carrid = b.carrid
{
key a.carrid as MyFlightCarrier,
b.agencynum as MyAgencyNumber
}
