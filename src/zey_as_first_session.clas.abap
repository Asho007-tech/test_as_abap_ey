CLASS zey_as_first_session DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZEY_AS_FIRST_SESSION IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
out->write(
     EXPORTING
       data   = |Welcome to ABAP on Cloud|
*        name   =
*      RECEIVING
*        output =
   ).
 ENDMETHOD.
ENDCLASS.
