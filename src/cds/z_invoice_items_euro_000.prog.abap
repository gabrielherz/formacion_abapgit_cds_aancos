*&---------------------------------------------------------------------*
*& Report z_invoice_items_euro_000
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_invoice_items_euro_000.

class lcl_main definition create private.

  public section.
    methods run.
    CLASS-METHODS create
      RETURNING
        value(r_result) TYPE REF TO lcl_main.

  protected section.
  private section.

endclass.

class lcl_main implementation.

  method create.
    create object r_result.
  endmethod.

  method run.
    WRITE: 'Welcome, ', sy-uname, / 'Today is the', sy-datum.

  endmethod.

endclass.

START-OF-SELECTION.
    lcl_main=>create( )->run( ).
