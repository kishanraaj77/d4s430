@AbapCatalog.sqlViewName: 'ZCDSE1130'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds28'
define view zcds28  
as select from sflight as a
{
key a.carrid as FlgCarr,
max( a.price ) as MaxPrice,
min( a.price ) as MinPrice,
avg( a.price ) as AvgPrice,
sum( a.price ) as SumPrice,
count( * ) as TotalCount
} 
group by 
a.carrid, 
a.connid
having a.carrid = 'AA'
 