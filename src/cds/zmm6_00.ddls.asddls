@AbapCatalog.sqlViewName: 'ZV_MM6_00'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ejemplo Compras'
define view ZMM6_00 as select from I_PurchaseOrderNetAmount
{
    @UI.lineItem: [{ position: 10 }]
    @UI.selectionField: [{ position: 10 }]
    key PurchaseOrder,
    
    //@UI.lineItem: [{ position: 30 }]
    //@UI.hidden: true
    DocumentCurrency,
    @UI.lineItem: [{ position: 20 }]
    PurchaseOrderNetAmount,
    /* Associations */
    _Currency,
    _PurchaseOrder
}
