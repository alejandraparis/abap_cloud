CLASS zcl_03_employee_paris DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS constructor IMPORTING iv_employee_id TYPE string.
    METHODS get_employee_id RETURNING VALUE(rv_employee_id) TYPE string.
    CLASS-METHODS class_constructor.
    CLASS-DATA company TYPE string READ-ONLY.
    CLASS-DATA log TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA employee_id TYPE string.
ENDCLASS.



CLASS zcl_03_employee_paris IMPLEMENTATION.
  METHOD constructor.
    me->employee_id = iv_employee_id.
    log = |{ log }-Instance Constructor { employee_id }-->|.
  ENDMETHOD.

  METHOD get_employee_id.
    rv_employee_id = me->employee_id.
  ENDMETHOD.

  METHOD class_constructor.
    zcl_03_employee_paris=>company = 'Paris-Group'.
    log = |{ log }-Static Constructor-->|.
  ENDMETHOD.

ENDCLASS.
