*&---------------------------------------------------------------------*
*& Report ztblfuncpro
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztblfuncpro.

DATA IT TYPE STANDARD TABLE OF  ZTFCDS .
PARAMETERS AIRLINEE TYPE  S_CARR_ID.

SELECT FROM ZTFCDS( AIRLINE = @AIRLINEE )
FIELDS CARRID, CONNID, FLDATE, PRICE
INTO TABLE  @IT.

CL_DEMO_OUTPUT=>display_data(  IT  ).
