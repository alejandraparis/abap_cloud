CLASS zcl_lab_03_contract_paris DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA cntr_type TYPE c LENGTH 2.

    METHODS set_create_date IMPORTING VALUE(iv_create_date) TYPE zdate.

  PROTECTED SECTION.
    DATA create_date TYPE zdate.

  PRIVATE SECTION.
    DATA client TYPE string.
ENDCLASS.



CLASS zcl_lab_03_contract_paris IMPLEMENTATION.
  METHOD set_create_date.
    create_date = iv_create_date.
  ENDMETHOD.

ENDCLASS.
