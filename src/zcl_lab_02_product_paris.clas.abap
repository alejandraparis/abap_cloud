CLASS zcl_lab_02_product_paris DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS set_product IMPORTING VALUE(iv_product) TYPE matnr.
    METHODS set_create_date IMPORTING VALUE(iv_create_date) TYPE zdate.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: product     TYPE matnr,
          create_date TYPE zdate.
ENDCLASS.



CLASS zcl_lab_02_product_paris IMPLEMENTATION.
  METHOD set_product.
    product = iv_product.
  ENDMETHOD.

  METHOD set_create_date.
    create_date = iv_create_date.
  ENDMETHOD.

ENDCLASS.
