*&---------------------------------------------------------------------*
*& Report zassoprog
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zassoprog.

SELECT FROM ZCDS32 FIELDS
 Carrid, Connid  , sum(  distance ) as distance
 where carrid = 'AA' and connid = '0017'
 group by carrid, connid
  INTO TABLE @DATA(IT).

*LOOP AT  IT INTO DATA(WA).
*WRITE : / WA-CARRID, WA-CONNID .
*ENDLOOP.
 cl_demo_output=>display_data(
   EXPORTING
     value = it
*     name  =
 ).
