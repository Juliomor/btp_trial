CLASS zcl_ce_t100042 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_rap_query_provider .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ce_t100042 IMPLEMENTATION.

  METHOD if_rap_query_provider~select.

    TRY.
        DATA(lv_top) = io_request->get_paging( )->get_page_size( ).
        DATA(lv_skip) = io_request->get_paging( )->get_offset( ).

        SELECT FROM zemployee_julio
        FIELDS *
        ORDER BY id ASCENDING
        INTO TABLE @DATA(lt_results)
        OFFSET @lv_skip UP TO @lv_top ROWS.

        IF sy-subrc = 0.
          io_response->set_total_number_of_records( lines( lt_results ) ).
          io_response->set_data( lt_results ).
        ENDIF.

      CATCH cx_rap_query_response_set_twic INTO DATA(ox_ex).
    ENDTRY.
  ENDMETHOD.
ENDCLASS.
