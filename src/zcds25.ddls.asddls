@AbapCatalog.sqlViewName: 'ZCDSE1125'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds25'
define view zcds25 as select   distinct from makt as a
{
key a.matnr as Mat_Num,
a.maktx as Mat_Desc,
length( a.maktx ) as Des_Len, 
instr( a.maktx, 'est' ) as Des_Find,
concat( a.maktx, a.spras ) as Des_Con,
concat_with_space( a.maktx, a.spras, 2 ) as Des_Con_space,
left( a.maktx, 3 ) as Des_left,
lower( a.maktx ) as Des_lower
}
