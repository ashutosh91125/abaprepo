CLASS ztrl_cls DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
protected section.
private section.
ENDCLASS.



CLASS ZTRL_CLS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    TRY.
        DATA(lo_mail) = cl_bcs_mail_message=>create_instance( ).

        lo_mail->set_sender( 'BTP-noreply@CONNECT.com' ).
        lo_mail->add_recipient( 'amishra@neuvays.com' ).

        lo_mail->set_subject( 'Test Mail' ).

        lo_mail->set_main( cl_bcs_mail_textpart=>create_instance(
            iv_content      = '<h1>Hello</h1><p>Hello world send from RAP!</p>'
            iv_content_type = 'text/html' ) ).

        lo_mail->send( IMPORTING et_status = DATA(lt_status) ).

        out->write( lt_status ).

      CATCH cx_bcs_mail INTO DATA(lo_err).
        out->write( lo_err->get_longtext( ) ).
    ENDTRY.
  ENDMETHOD.
ENDCLASS.
