CLASS lhc_Order DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Order RESULT result.
    METHODS setApproved FOR MODIFY
      IMPORTING keys FOR ACTION Order~setApproved RESULT result.



ENDCLASS.

CLASS lhc_Order IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.


  METHOD setApproved.

  MODIFY ENTITIES OF ZCHOBANI_HEAD IN LOCAL MODE
  ENTITY Order
  UPDATE
  FIELDS ( Status )
  WITH VALUE #( FOR key in keys ( %tky = key-%tky Status = abap_true ) )

  FAILED failed  REPORTED reported.

  ENDMETHOD.

ENDCLASS.
