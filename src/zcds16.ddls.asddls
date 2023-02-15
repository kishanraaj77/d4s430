@AbapCatalog.sqlViewName: 'ZCDSE116'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS16'
define view ZCDS16 as select from    S4d430_Booking_And_Customer as c
{
 key c.customid as id,
 c.name,
 c.street,
 c.postcode,
 c.city,
 c.country,
 @Semantics.amount.currencyCode: 'currency'
 sum(c.amount) as amount,
// @Semantics.currencyCode: true
 c.currency,
 avg(c.days_ahead) as days_ahead
}
group by
 c.customid,
 c.name,
 c.postcode,
 c.street,
 c.city,
 c.country,
 c.currency
