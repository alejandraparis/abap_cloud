CLASS zcl_lab_24_partner_paris DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS GET_COMPANY_CAPITAL RETURNING VALUE(rv_capital) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_24_partner_paris IMPLEMENTATION.
  METHOD get_company_capital.
    data(lo_company) = NEW zcl_lab_23_company_paris(  ).
    lo_company->capital = 'Cap01'.
    rv_capital = lo_company->capital.
  ENDMETHOD.

ENDCLASS.
