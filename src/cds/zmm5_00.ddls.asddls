@AbapCatalog.sqlViewName: 'ZV_MM5_00'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ejemplo Compras'
define view ZMM5_00 as select from I_PurchaseOrderTP
{
    key PurchaseOrder,
    PurchaseOrderType,
    PurchaseOrderTypeName,
    CompanyCode,
    PurchasingOrganization,
    PurchasingGroup,
    Supplier,
    DocumentCurrency,
    ReleaseIsNotCompleted,
    PurchasingProcessingStatus,
    /* Associations */
    _PurchaseOrderItemTP,
    _PurchaseOrderPartnerTP
}
