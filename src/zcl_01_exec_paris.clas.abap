CLASS zcl_01_exec_paris DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_exec_paris IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA(lo_collaborator) = NEW zcl_lab_25_collaborator_paris(  ).
    DATA(lv_capital2) =  lo_collaborator->get_capital( ).
    out->write( lv_capital2 ).

    DATA(lo_partner) = NEW  zcl_lab_24_partner_paris(  ).
    DATA(lv_capital) =  lo_partner->get_company_capital( ).
    out->write( lv_capital ).

    DATA(lo_lab_animal) = NEW zcl_lab_18_animal_paris(  ).
    DATA(lo_lab_lion) = NEW zcl_lab_19_lion_paris(  ).
    DATA(lo_lab_lion2) = NEW zcl_lab_19_lion_paris(  ).

    out->write( lo_lab_animal->walk( ) ).
    out->write( lo_lab_lion->walk( ) ).

    lo_lab_animal = lo_lab_lion.
    out->write( lo_lab_animal->walk( ) ).
    out->write( lo_lab_lion->walk( ) ).

    TRY.
        lo_lab_lion2 ?= lo_lab_animal .
      CATCH cx_sy_move_cast_error.
        out->write( 'Casting error ' ).
    ENDTRY.

    out->write( lo_lab_animal->walk( ) ).
    out->write( lo_lab_lion2->walk( ) ).

*    lo_lab_animal = lo_lab_lion.
*    out->write( lo_lab_animal->walk( ) ).
*    out->write( lo_lab_lion->walk( ) ).

    DATA(lo_flight_price) = NEW zcl_lab_15_flight_price_paris(  ).

    lo_flight_price->add_price( IMPORTING  et_flights = DATA(it_flights) ).
    out->write( it_flights ).

    DATA(lo_price_discount) = NEW zcl_lab_16_price_discount_pari(  ).

    lo_price_discount->add_price( IMPORTING  et_flights = DATA(it_flights2) ).
    out->write( it_flights2 ).

    DATA(lo_super_discount) = NEW zcl_lab_17_super_discount_pari(  ).

    lo_super_discount->add_price( IMPORTING  et_flights = DATA(it_flights3) ).
    out->write( it_flights3 ).

    DATA(lo_grid) = NEW zcl_lab_14_grid_paris( iv_view_type = 'VT' iv_box = 'box' ).

    DATA(lo_linux) = NEW zcl_lab_12_linux_paris(  ).

    lo_linux->get_architecture( IMPORTING ev_architecture =  DATA(lv_architecture) ).
    out->write( lv_architecture ).

    DATA(lo_animal) = NEW zcl_07_animal_paris(  ).
    DATA(lo_lion) = NEW zcl_08_lion_paris(  ).

    out->write( lo_animal->walk( ) ).
    out->write( lo_lion->walk( ) ).

    lo_animal = lo_lion.
    out->write( 'Narrow Casting (Up Cast)' ).
    out->write( lo_animal->walk( ) ).
    out->write( lo_lion->walk( ) ).

    TRY.
        lo_lion ?= lo_animal .
      CATCH cx_sy_move_cast_error.
        out->write( 'Casting error ' ).
    ENDTRY.
    out->write( 'Widening Casting (Down Cast)' ).
    out->write( lo_animal->walk( ) ).
    out->write( lo_lion->walk( ) ).

    DATA(lo_company)          = NEW zcl_04_company_paris( iv_quotation = 'Q1' ).
    DATA(lo_plant)            = NEW zcl_05_plant_paris( iv_quotation = 'Q2' iv_products = 'P2' ).
    DATA(lo_storage_location) = NEW zcl_06_storage_paris( iv_quotation = 'Q3' iv_products = 'P3' ).

    lo_company->set_company_code( '1234' ).
    lo_company->set_currency( 'USD' ).

    lo_company->get_company_code( IMPORTING ev_company_code = DATA(lv_company_code)  ).
    lo_company->get_currency( IMPORTING ev_currency = DATA(lv_currency)  ).
    out->write( |Company: { lv_company_code }-{ lv_currency }| ).

    lo_plant->set_company_code( '5678' ).
    lo_plant->set_currency( 'EUR' ).

    lo_plant->get_company_code( IMPORTING ev_company_code = lv_company_code  ).
    lo_plant->get_currency( IMPORTING ev_currency = lv_currency  ).
    out->write( |Plant: { lv_company_code }-{ lv_currency }| ).

    lo_storage_location->set_company_code( '9012' ).
    lo_storage_location->set_currency( 'VES' ).

    lo_storage_location->get_company_code( IMPORTING ev_company_code = lv_company_code  ).
    lo_storage_location->get_currency( IMPORTING ev_currency = lv_currency  ).
    out->write( |Storage Location: { lv_company_code }-{ lv_currency }| ).


    out->write( zcl_03_employee_paris=>log ).

    DATA(lo_employee) = NEW zcl_03_employee_paris( iv_employee_id = '01' ).
* out->write( lo_employee->get_employee_id(  )  ).
    out->write( zcl_03_employee_paris=>log ).

    DATA(lo_employee2) = NEW zcl_03_employee_paris( iv_employee_id = '02' ).
*    out->write( lo_employee2->get_employee_id(  )  ).
    out->write( zcl_03_employee_paris=>log ).

    out->write( zcl_03_employee_paris=>company ).

*    data lo_contract TYPE REF TO zcl_02_contract_paris.
*
*    create OBJECT lo_contract.
*
*    lo_contract = new #(  ).

    DATA lv_process TYPE string.
    DATA(lo_contract)  = NEW zcl_02_contract_paris(  ).
    DATA(lo_contract2) = NEW zcl_02_contract_paris(  ).

    DATA: lt_address TYPE zcl_02_contract_paris=>tty_address,
          ls_address TYPE zcl_02_contract_paris=>ty_address.

    IF lo_contract IS BOUND.
      lo_contract->set_client(
        EXPORTING
          iv_client   = 'Paris'
*          iv_location = space
        IMPORTING
          ev_status   = DATA(lv_status)
        CHANGING
          cv_process  = lv_process ).


      lo_contract->get_client( IMPORTING ev_client = DATA(lv_client) ).
      lo_contract->region = 'US'.

*        lo_contract->get_client_name(
*          EXPORTING
*            iv_client_id   = '01'
*          RECEIVING
*            rv_client_name = DATA(lv_client_name)
*        ).

      DATA(lv_client_name) = lo_contract->get_client_name( iv_client_id  = '01' ).

      IF NOT lo_contract->get_client_name( iv_client_id  = '01' ) IS INITIAL.
        out->write( lo_contract->get_client_name( iv_client_id  = '01' ) ).
      ENDIF.

    ENDIF.

    zcl_02_contract_paris=>set_cntr_type( iv_cntr_type = 'Construction' ).
    zcl_02_contract_paris=>get_cntr_type(
      IMPORTING
        ev_cntr_type = DATA(lv_cntr_type)
    ).

    zcl_02_contract_paris=>currency = zcl_02_contract_paris=>cs_currency-usd.

    out->write( zcl_02_contract_paris=>currency ).
    out->write( |{ lv_client }-{ lv_status }-{ lv_process }-{ lo_contract->region }| ).
    out->write( lv_cntr_type ).
    out->write( zcl_02_contract_paris=>company ).

  ENDMETHOD.

ENDCLASS.
