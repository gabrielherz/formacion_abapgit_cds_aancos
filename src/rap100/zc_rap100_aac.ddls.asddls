@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_RAP100_AAC'
@ObjectModel.semanticKey: [ 'TravelID' ]
@Search.searchable: true

define root view entity ZC_RAP100_AAC
  provider contract transactional_query
  as projection on ZR_RAP100_AAC
{
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.80
  key TravelID,
       @Search.defaultSearchElement: true
      
      @ObjectModel.text.element: ['AgencyName']
      @Consumption.valueHelpDefinition: [{ entity : {name: '/DMO/I_Agency', element: 'AgencyID' } }]
      AgencyID,
      _Agency.Name              as AgencyName,
      @Search.defaultSearchElement: true
     
      @ObjectModel.text.element: ['CustomerName']
      @Consumption.valueHelpDefinition: [{ entity : {name: '/DMO/I_Customer', element: 'CustomerID'  } }]
      CustomerID,
      _Customer.LastName        as CustomerName,
      BeginDate,
      EndDate,
      BookingFee,
      TotalPrice,
      @Consumption.valueHelpDefinition: [{ entity: {name: 'I_Currency', element: 'Currency' } }]
      CurrencyCode,
      Description,
      @ObjectModel.text.element: ['OverallStatusText']
      @Consumption.valueHelpDefinition: [{ entity: {name: '/DMO/I_Overall_Status_VH', element: 'OverallStatus' } }]
      OverallStatus,
      _OverallStatus._Text.Text as OverallStatusText : localized,
      Attachment,
      MimeType,
      FileName,
      LocalLastChangedAt

}
