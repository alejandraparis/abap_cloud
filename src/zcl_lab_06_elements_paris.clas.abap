CLASS zcl_lab_06_elements_paris DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_elem_objects,
             class     TYPE string,
             instance  TYPE string,
             reference TYPE string,
           END OF ty_elem_objects.

    CONSTANTS: BEGIN OF cs_constants,
                 cont1 TYPE string VALUE 'CONTS_01',
                 cont2 TYPE string VALUE 'CONTS_02',
                 cont3 TYPE string VALUE 'CONTS_03',
                 cont4 TYPE string VALUE 'CONTS_04',
               END OF cs_constants.

    METHODS set_object IMPORTING iv_object TYPE ty_elem_objects.

    DATA ms_object TYPE ty_elem_objects.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_06_elements_paris IMPLEMENTATION.
  METHOD set_object.
    ms_object = iv_object.
  ENDMETHOD.

ENDCLASS.
