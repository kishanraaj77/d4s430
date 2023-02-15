@AbapCatalog.sqlViewName: 'ZSQL_VIEW_FLBOOK'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Flight Booking Information'

@VDM : {viewType: #COMPOSITE}
@Analytics: {dataCategory: #CUBE, dataExtraction: {enabled: true}}

define view zvdm_master  as select from sbook
association [1] to I_CalendarDate    as _CalendarDate on  $projection.FlightDate       = _CalendarDate.CalendarDate
association [1] to ZVDM_SCARR as _Airline      on  $projection.Airline          = _Airline.AIRLINE 
association [1] to ZVDM_SPFLI   as _Connection   on  $projection.Airline          = _Connection.AIRLINE
                                                      and $projection.FlightConnection = _Connection.FLCONNECTNO
association [1] to ZVDM_SCUSTOM    as _Customer     on  $projection.Customer         = _Customer.Customer
                                                                                                          
{
    
    /** DIMENSIONS **/

  key carrid                 as Airline,
  key connid                 as FlightConnection,
  key fldate                 as FlightDate,
  key bookid                 as BookNumber,
  key customid               as Customer,
  key agencynum              as TravelAgency,

  _CalendarDate.CalendarYear,

  _CalendarDate.CalendarMonth,

  _Customer.country      as CustomerCountry,

  _Customer.city         as CustomerCity,

 
  /** MEASURES **/
  @EndUserText.label: 'Booking Price'
  @DefaultAggregation: #SUM
  @Semantics.amount.currencyCode: 'Currency'
  forcuram               as BookingPrice,

  @EndUserText.label: 'Currency'
  @Semantics.currencyCode: true
  forcurkey              as Currency,
  
  @EndUserText.label: 'Luggage Weight'
  @DefaultAggregation: #SUM
  @Semantics.quantity.unitOfMeasure: 'WeightUOM'
  luggweight             as WeightOfLuggage,

  @EndUserText.label: 'Weight Unit'
  @Semantics.unitOfMeasure: true
  wunit                  as WeightUOM,


  // Associations
  _Airline,
  _CalendarDate,
  _CalendarDate._CalendarMonth,
  _CalendarDate._CalendarYear,
  _Connection,
  _Customer,
  
  _Customer._COUNTRY     as _CustomerCountry
}
