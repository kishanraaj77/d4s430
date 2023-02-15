@EndUserText.label: 'TFCDS'
define table function ZTFCDS
with parameters AIRLINE : s_carr_id
returns {
            key  mandt   : mandt;
            key     CARRID      : s_carr_id;
             key  CONNID    : s_conn_id; 
                FLDATE   : s_date;
                PRICE : s_price;
  
}
implemented by method ZCLTBL=>TBLFUNC;
