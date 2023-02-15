@AbapCatalog.sqlViewAppendName: 'ZCDSE1121'
@EndUserText.label: 'CDS21'
extend view  ZA4D430_EXTENDED with ZCDS21  
    
 
 association[1] to spfli as _connection
 on b.carrid = _connection.carrid
 and b.connid = _connection.connid
 {
 b.class,
 b.counter,
 _connection
 }
