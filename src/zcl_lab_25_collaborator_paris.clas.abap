CLASS zcl_lab_25_collaborator_paris DEFINITION INHERITING FROM zcl_lab_24_partner_paris
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_capital RETURNING VALUE(rv_capital) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_25_collaborator_paris IMPLEMENTATION.
  METHOD get_capital.
    data(lo_company) = NEW zcl_lab_23_company_paris(  ).
    lo_company->capital = 'Cap25'.
    rv_capital =  lo_company->capital.
  ENDMETHOD.

ENDCLASS.
