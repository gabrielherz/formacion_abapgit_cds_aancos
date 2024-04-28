*&---------------------------------------------------------------------*
*& Report z_use_cds_view_000
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_use_cds_view_000.

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
    cl_salv_gui_table_ida=>create_for_cds_view( 'Z_Invoice_Items_000' )->fullscreen( )->display( ).

  endmethod.

endclass.

START-OF-SELECTION.
    lcl_main=>create( )->run( ).
