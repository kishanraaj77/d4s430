@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS ok new one now '
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@AbapCatalog.sqlViewName: 'ZCDSAE11'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
 
 
define view ZCDS1
 as select from sbook
{
  key carrid,
  key  connid,
 key fldate,
  key  bookid,
 class,
 forcuram,
 forcurkey,
 luggweight,
 wunit,
 order_date,
 agencynum,
 counter,
 customid
} 
