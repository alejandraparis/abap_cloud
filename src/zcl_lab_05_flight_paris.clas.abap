CLASS zcl_lab_05_flight_paris DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_validar_vuelo IMPORTING iv_carrier_id    TYPE /dmo/flight-carrier_id
                                        iv_connection_id TYPE /dmo/flight-connection_id
                              RETURNING VALUE(rv_existe) TYPE abap_bool.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_05_flight_paris IMPLEMENTATION.
  METHOD get_validar_vuelo.

    rv_existe = abap_false.

    SELECT SINGLE * FROM /dmo/flight
    WHERE carrier_id EQ @iv_carrier_id AND connection_id EQ @iv_connection_id
    INTO @DATA(ls_flight) .
    IF sy-subrc EQ 0.
      rv_existe = abap_true.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
