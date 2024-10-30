CLASS zcl_lab_10_constructor_paris DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS constructor.
    CLASS-METHODS class_constructor.

    CLASS-DATA log TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_10_constructor_paris IMPLEMENTATION.
  METHOD class_constructor.
    log = |{ log }-Static Constructor-->|.
  ENDMETHOD.

  METHOD constructor.
     log = |{ log }-Instance Constructor-->|.
  ENDMETHOD.

ENDCLASS.
