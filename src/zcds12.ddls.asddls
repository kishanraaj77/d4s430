@AbapCatalog.sqlViewName: 'ZCDSE112'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS2'

@UI.headerInfo: { typeName: 'Flight Booking', 
            typeNamePlural: 'Flight Bookings'}
@Search.searchable: true
 
define root view ZCDS12 as select 
  from sbook     
  association[1] to scustom as _customer
                 on customid = _customer.id 
     {
                
          @UI.selectionField.position: 30 
        @UI.lineItem: [{
             
            position:10  ,
             
            importance: #HIGH,
            type: #STANDARD,
            label: 'CARRID '
             
        }]  
      key carrid,
               
            @UI.lineItem: [{
             
            position:20  }]   
      key connid,
                @UI.lineItem: [{
             
            position:30  }] 
      key fldate,
              @UI.lineItem: [{
             
            position:40  }] 
      key bookid,
          customid,
          @UI.lineItem: { position: 50, importance: #LOW }      
          _customer.name,
          @UI.selectionField.position: 20    
          _customer.city,
          @UI.selectionField.position: 10      
          @Search.defaultSearchElement: true          
          _customer.country,
          @UI.hidden: true    
          agencynum,
          class,
          @UI.lineItem: { position: 60 }      
          @Semantics.amount.currencyCode: 'currency'
          @DefaultAggregation: #SUM        
          currency_conversion( 
                  amount             => loccuram, 
                  source_currency    => loccurkey, 
                  target_currency    => cast( 'USD' as s_curr), 
                  exchange_rate_date => order_date
                   ) as price,
          @Semantics.currencyCode: true                  
          @UI.lineItem: { position: 70 }      
          cast( 'USD' as s_curr ) as currency,      
//          @DefaultAggregation: #SUM
          dats_days_between(fldate, order_date) as days_ahead                        
     } 
