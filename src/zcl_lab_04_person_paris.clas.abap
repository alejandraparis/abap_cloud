CLASS zcl_lab_04_person_paris DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS set_age IMPORTING iv_age TYPE int1.
    METHODS get_age EXPORTING ev_age TYPE int1.

  PROTECTED SECTION.

  PRIVATE SECTION.
    DATA age TYPE int1.
ENDCLASS.



CLASS zcl_lab_04_person_paris IMPLEMENTATION.
  METHOD set_age.
    age = iv_age.
  ENDMETHOD.

  METHOD get_age.
    ev_age = age.
  ENDMETHOD.

ENDCLASS.
