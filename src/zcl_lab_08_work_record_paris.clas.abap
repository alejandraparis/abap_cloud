CLASS zcl_lab_08_work_record_paris DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS open_new_record IMPORTING VALUE(iv_date)       TYPE zdate
                                            VALUE(iv_first_name) TYPE string
                                            VALUE(iv_last_name)  TYPE string
                                            VALUE(iv_surname)    TYPE string OPTIONAL.

  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA: date       TYPE zdate,
                first_name TYPE string,
                last_name  TYPE string,
                surname    TYPE string.
ENDCLASS.



CLASS zcl_lab_08_work_record_paris IMPLEMENTATION.
  METHOD open_new_record.
    date       = iv_date.
    first_name = iv_first_name.
    last_name  = iv_last_name.
    surname    = iv_surname.
  ENDMETHOD.

ENDCLASS.
