@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: '##GENERATED ZTVIAJES_AAC'
define root view entity ZR_TVIAJES_AAC
  as select from ztviajes_aac
{
  key travel_id as TravelID,
  @UI.selectionField: [{ position: 10 }]
  agency_id as AgencyID,
  customer_id as CustomerID,
  begin_date as BeginDate,
  end_date as EndDate,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  booking_fee as BookingFee,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  total_price as TotalPrice,
  currency_code as CurrencyCode,
  description as Description,
  status as Status,
  createdby as Createdby,
  createdat as Createdat,
  lastchangedby as Lastchangedby,
  lastchangedat as Lastchangedat,
  ejemplo as Ejemplo,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed as LocalLastChanged,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed as LastChanged
  
}
