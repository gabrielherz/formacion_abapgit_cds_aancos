@AbapCatalog.sqlViewName: 'Z_ITEMS_000'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Invoice Items'
@Metadata.allowExtensions: true

define view Z_INVOICE_ITEMS_000
  as select from sepm_sddl_so_invoice_item
{

  key sales_order_invoice_item_key,

      sepm_sddl_so_invoice_item.sales_order_invoice_key,


      header.buyer.company_name,
      
      currency_code,

      gross_amount,

      cast(
            case header.payment_status
                when 'P' then 'X'
                else ' '
            end as zso_invoice_payment_status_000) as payment_status,

      //      * Associations *//
      header
}

where
  currency_code = 'EUR'
