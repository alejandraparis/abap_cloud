CLASS zcl_lab_16_price_discount_pari DEFINITION INHERITING FROM zcl_lab_15_flight_price_paris
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS add_price REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_16_price_discount_pari IMPLEMENTATION.
  METHOD add_price.
    super->add_price( IMPORTING et_flights = et_flights  ).
    READ TABLE et_flights INTO DATA(ls_flights) INDEX 1.
    IF sy-subrc EQ 0.
      ls_flights-price = ls_flights-price - ( ( ls_flights-price * 10 ) / 100 ).
      MODIFY et_flights FROM ls_flights INDEX 1.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
