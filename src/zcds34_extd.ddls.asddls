@AbapCatalog.sqlViewAppendName: 'ZCDSEEXTD11'
@EndUserText.label: 'EXTD'
extend view ZCDS33_EXTA with ZCDS34_EXTD {
     c.airpfrom,
       c.countryfr,
       c.airpto,
       c.countryto
     } 
