@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Pedidos importe'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZMM7_00 as select from I_PurchaseOrderCalcFields
{
    key PurchaseOrder,
    PurchaseOrderType,
    PurchasingOrganization,
    PurchasingGroup,
    @Semantics.amount.currencyCode: 'currencylocal'
    _PurchaseOrderNetAmount.PurchaseOrderNetAmount,
    _PurchaseOrderNetAmount.DocumentCurrency as currencylocal,
    /* Associations */

    _PurchaseOrderNetAmount
}
