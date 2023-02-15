@AbapCatalog.sqlViewName: 'ZCDSE1127'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds26'
define view zcds26  
// with parameters p_add_days  : abap.int4,  
//                 p_add_months: abap.int4,
//                 @Environment.systemField: #SYSTEM_DATE
//                 p_curr_date : abap.dats 
 as select from sflight as a {
     key a.carrid as FlgId,
     key a.connid as FlgConnId,
     key a.fldate as FlgDate,
     dats_add_days     (a.fldate, 5 , 'INITIAL') as Added_DT,
     dats_add_months   (a.fldate, 6, 'NULL'   ) as Added_MT,
     dats_days_between (a.fldate, '20230214' ) as Days_BTW,
     dats_is_valid     (a.fldate)                           as Is_Valid                               
 } 
