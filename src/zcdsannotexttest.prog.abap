*&---------------------------------------------------------------------*
*& Report zcdsannotexttest
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcdsannotexttest.

data(gv) = cl_dd_ddl_annotation_service=>get_label_4_element(
             entityname  =  'ZCDS23'
             elementname = 'URL'
             language    = 'D'
*             extend      = abap_false
           ).

WRITE : / GV.
