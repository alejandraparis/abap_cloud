CLASS zcl_lab_14_grid_paris DEFINITION INHERITING FROM zcl_lab_13_view_paris
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS constructor IMPORTING iv_view_type TYPE string
                                  iv_box       TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_14_grid_paris IMPLEMENTATION.

  METHOD constructor.

    super->constructor( iv_view_type = iv_view_type ).
    me->box = iv_box.

  ENDMETHOD.

ENDCLASS.
