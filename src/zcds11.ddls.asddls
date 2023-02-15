@AbapCatalog.sqlViewName: 'ZCDSE11'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS1'
define view ZCDS11
  as select from sflight as a
{
  abs(-2)           as Abs_Op,
  /*Ceil and Floor*/
  ceil(25.3)        as Ceil_Op,
  floor(25.3)       as Floor_Op,
  /*Division*/
  div(5,3)          as Div_Op,
  division(5,3,5)   as Div_Op2,
  mod(5,3)          as Mod_Op,
  a.price           as Flg_Price,
  round( a.price,1) as Round_Op
}
