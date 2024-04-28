@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_TVIAJES_AAC'
@ObjectModel.semanticKey: [ 'TravelID' ]
define root view entity ZC_TVIAJES_AAC
  provider contract transactional_query
  as projection on ZR_TVIAJES_AAC
{
  key TravelID,
  AgencyID,
  CustomerID,
  BeginDate,
  EndDate,
  BookingFee,
  TotalPrice,
  CurrencyCode,
  Description,
  Status,
  Createdby,
  Createdat,
  Lastchangedby,
  Lastchangedat,
  Ejemplo,
  LocalLastChanged
  
}
