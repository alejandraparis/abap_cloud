CLASS zcl_lab_19_lion_paris DEFINITION INHERITING FROM zcl_lab_18_animal_paris
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS walk REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_19_lion_paris IMPLEMENTATION.
  METHOD walk.
    rv_walk = 'The Lion walks'.
  ENDMETHOD.

ENDCLASS.