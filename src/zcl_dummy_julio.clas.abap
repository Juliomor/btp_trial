CLASS zcl_dummy_julio DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_dummy_julio IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA: lt_results TYPE TABLE OF zemployee_julio.

    lt_results = VALUE #( ( id = '65748937' name = 'Martin' )
                          ( id = '87564738' name = 'Mathew' ) ).

    MODIFY zemployee_julio FROM TABLE @lt_results.
    IF sy-subrc = 0.
      out->write( 'Datos insertados').
    ENDIF.
  ENDMETHOD.

ENDCLASS.
