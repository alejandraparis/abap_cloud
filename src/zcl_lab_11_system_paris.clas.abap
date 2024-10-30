CLASS zcl_lab_11_system_paris DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA architecture TYPE string VALUE '64BITS'.

    METHODS GET_ARCHITECTURE EXPORTING ev_architecture TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_11_system_paris IMPLEMENTATION.
  METHOD get_architecture.
        ev_architecture = me->architecture.
  ENDMETHOD.

ENDCLASS.
