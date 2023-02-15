@AbapCatalog.sqlViewName: 'ZCDS234'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds31'
define view zcds31  
 with parameters p_to_cuur : abap.cuky( 5 ), 
     
    @Environment.systemField: #SYSTEM_DATE
@EndUserText.label: 'Todays Date'

@Consumption.hidden: true
 
    

@Consumption.derivation: { lookupEntity: 'ZCDS18', 
resultElement : 'days_ahead', 
binding: [{ targetElement: 'exchange_rate_date', 
type:#PARAMETER , 
value: 'p_keydate' }]
}
 p_conv_date :   abap.dats
as select from  sflight as S {
    
    key S.carrid as Carrid,
    key S.connid as Connid,
    S.fldate as Fldate,
    S.price as Price,
    S.currency as Currency, 
    currency_conversion( amount => S.price, 
    source_currency =>  S.currency , 
    
   // target_currency => cast ('INR' as abap.cuky), 
    target_currency =>  $parameters.p_to_cuur,  
   
    exchange_rate_date  =>   $parameters.p_conv_date ) 
 
    as currcprice, 
    
    cast( 'INR' as abap.cuky) as targtcurr, 
    
    seatsmax, 
    seatsocc, 
     seatsmax - seatsocc as remseat 
    //seatsocc_b + seatsocc_f + remseat as higseat
     
}

 
where S.carrid = 'AA'
 