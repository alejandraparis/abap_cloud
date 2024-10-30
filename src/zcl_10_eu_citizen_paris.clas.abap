CLASS zcl_10_eu_citizen_paris DEFINITION INHERITING FROM zcl_09_citizen_paris
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS get_parent_instance RETURNING VALUE(ro) TYPE REF TO zcl_09_citizen_paris.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_10_eu_citizen_paris IMPLEMENTATION.


  METHOD get_parent_instance.
        ro = new zcl_09_citizen_paris(  ).
  ENDMETHOD.

ENDCLASS.
