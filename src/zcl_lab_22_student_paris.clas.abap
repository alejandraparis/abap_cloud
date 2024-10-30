CLASS zcl_lab_22_student_paris DEFINITION INHERITING FROM zcl_lab_21_classroom_paris
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS assign_student.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_22_student_paris IMPLEMENTATION.
  METHOD assign_student.
      data(lo_classroom) = NEW zcl_lab_21_classroom_paris( ).
  ENDMETHOD.

ENDCLASS.
