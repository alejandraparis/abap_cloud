CLASS zcl_lab_15_flight_price_paris DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES:  mt_flights TYPE TABLE OF /dmo/flight.

    METHODS add_price EXPORTING et_flights TYPE mt_flights.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_15_flight_price_paris IMPLEMENTATION.
  METHOD add_price.
    APPEND VALUE #( client        = '100'
                    carrier_id    = 'AA'
                    connection_id = '0017'
                    flight_date   = '20241022'
                    price         = '100' ) TO et_flights.


  ENDMETHOD.

ENDCLASS.
