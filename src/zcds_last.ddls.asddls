@AbapCatalog.sqlViewName: 'ZSQL_VIEW_FRPRT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Flight Details Report'
@OData.publish: true

@VDM: {viewType: #CONSUMPTION}
@Analytics.query: true
define view ZCDS_LAST as select from zvdm_master

{
    //ZCDS_VIEW_FLBOOK
    
    key Airline,
    key FlightConnection,
    key FlightDate,
    key BookNumber,
    key Customer,
    --key TravelAgency,
    
    CalendarYear,
    CalendarMonth,
    CustomerCountry,
    CustomerCity,
    WeightOfLuggage,
    WeightUOM,
    BookingPrice,
    Currency,
    /* Associations */
    //ZCDS_VIEW_FLBOOK
    _Airline,
    _CalendarDate,
    _CalendarMonth,
    _CalendarYear,
    _Connection,
    _Customer,
    _CustomerCountry
}
