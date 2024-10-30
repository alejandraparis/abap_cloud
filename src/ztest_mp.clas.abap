CLASS ztest_mp DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
    DATA name TYPE string VALUE 'Tim'.

  PROTECTED SECTION.

    CLASS-DATA base_rate TYPE i.
  PRIVATE SECTION.
   TYPES: BEGIN OF ty_tt,
           camp1 TYPE string,
           END OF ty_tt.
ENDCLASS.



CLASS ztest_mp IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA lo_test TYPE REF TO ztest_mp.

    lo_test = NEW #(  ).

    out->write( lo_test->name ).


  ENDMETHOD.



ENDCLASS.
