@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_TABLA_TEST_AAC'
@ObjectModel.semanticKey: [ 'TravelID' ]
define root view entity ZC_TABLA_TEST_AAC
  provider contract transactional_query
  as projection on ZR_TABLA_TEST_AAC
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
  OverallStatus,
  LocalLastChangedAt
  
}
