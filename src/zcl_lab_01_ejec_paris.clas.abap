CLASS zcl_lab_01_ejec_paris DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_01_ejec_paris IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

     out->write( zcl_lab_10_constructor_paris=>log ).

    DATA(lo_constructor) = NEW zcl_lab_10_constructor_paris( ).
    out->write( zcl_lab_10_constructor_paris=>log ).


    DATA(lo_person)   = NEW zcl_lab_04_person_paris(  ).
    DATA(lo_flight)   = NEW zcl_lab_05_flight_paris( ).
    DATA(lo_elements) = NEW zcl_lab_06_elements_paris( ).
    DATA(lo_student)  = NEW zcl_lab_07_student_paris( ).
    DATA(lo_account)  = NEW zcl_lab_09_account_paris( ).
    DATA ls_elem_objects TYPE zcl_lab_06_elements_paris=>ty_elem_objects.

    IF lo_person IS BOUND.
      lo_person->set_age( iv_age = 38 ).

      lo_person->get_age( IMPORTING ev_age = DATA(lv_age) ).

      out->write( lv_age ).

    ENDIF.

    IF lo_flight IS BOUND.
      lo_flight->get_validar_vuelo(
        EXPORTING
          iv_carrier_id    = 'AA'
          iv_connection_id = '0015'
        RECEIVING
          rv_existe        = DATA(lv_existe) ).

      out->write( lv_existe ).
    ENDIF.

    IF lo_elements IS BOUND.
      lo_elements->set_object( iv_object =  VALUE #( class = 'class01' instance = 'inst01' reference = 'ref01' ) ).
      out->write( lo_elements->ms_object ).
    ENDIF.

    out->write( | { zcl_lab_06_elements_paris=>cs_constants-cont1 }-{ zcl_lab_06_elements_paris=>cs_constants-cont2 }-{ zcl_lab_06_elements_paris=>cs_constants-cont3 }-{ zcl_lab_06_elements_paris=>cs_constants-cont4 } | ).

    lo_student->set_birth_date( iv_birth_date = '11102024' ).

    zcl_lab_08_work_record_paris=>open_new_record(
      iv_date       = '11102024'
      iv_first_name = 'Alejandra'
      iv_last_name  = 'Paris' ).

    IF lo_account IS BOUND.
    lo_account->set_iban( iban = 'iban01' ).
    lo_account->get_iban(
      IMPORTING
        iban = DATA(lv_iban) ).

     out->write( lv_iban ).
    ENDIF.
  ENDMETHOD.

ENDCLASS.
