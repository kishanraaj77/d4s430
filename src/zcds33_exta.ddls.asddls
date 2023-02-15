@AbapCatalog.sqlViewName: 'ZCDS35CDS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'EXTA'
define view ZCDS33_EXTA  as select 
    from spfli as c 
       inner join scarr as a
               on c.carrid = a.carrid 
       {
         key c.carrid,
         key c.connid,
             c.cityfrom,
             c.cityto,
             a.carrname,
             a.currcode
       } 
 