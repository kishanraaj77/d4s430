@AbapCatalog.sqlViewName: 'ZCDSE1126'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds24'
define view zcds24 
//with parameters p_to_curr : abap.cuky( 5 ), 
//                p_conv_date : abap.dats
as select distinct from sflight as a{
 
key a.carrid as Carrid,
    a.connid as Connid,
    a.fldate as Fldate,
    a.price as Price,
    a.currency as Currency,
    currency_conversion( amount => a.price, 
    source_currency => a.currency ,
    target_currency => cast( 'INR' as abap.cuky),
    exchange_rate_date => a.fldate ) as conprice,
    @Semantics.currencyCode: true   
       cast('INR' as abap.cuky) as tarcurrency   
} where a.carrid = 'AZ' and a.fldate > '20160101';
