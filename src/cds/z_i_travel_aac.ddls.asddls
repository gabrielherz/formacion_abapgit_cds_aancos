@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Viajes Antonio'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
//@Search.searchable: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity Z_I_TRAVEL_AAC
  as select from /DMO/I_Travel_U
  composition [0..*] of Z_I_BOOKING_AAC as _Booking
  association [1..1] to /DMO/I_Agency   as _Agency   on $projection.AgencyID = _Agency.AgencyID
  association [1..1] to /DMO/I_Customer as _Customer on $projection.CustomerID = _Customer.CustomerID
{

  key TravelID,
      @Consumption.valueHelpDefinition: [{  entity: {name: '/DMO/I_Agency', element: 'AgencyID'}  }]
      @ObjectModel.text.association: '_Agency'
      AgencyID,
      @Consumption.valueHelpDefinition: [{  entity: {name: '/DMO/I_Customer', element: 'CustomerID'}  }]
      @ObjectModel.text.association: '_Customer'
      CustomerID,
      @UI.lineItem: [{ position: 35 }]
      concat_with_space(_Customer.Title, _Customer.LastName, 1) as Addressee,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      @DefaultAggregation: #AVG
      TotalPrice,
      CurrencyCode,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      currency_conversion(
      amount => TotalPrice,
      source_currency => CurrencyCode,
      round => 'X',
      target_currency => cast('USD' as abap.cuky( 5 )),
      exchange_rate_date => cast('20200429' as abap.dats),
      error_handling => 'SET_TO_NULL' )                         as PriceInUSD,
      
      //@Search.defaultSearchElement: true
      //@Search.fuzzinessThreshold: 0.90
      Memo,
      Status,
      LastChangedAt,
      /* Associations */
      _Agency,
      _Booking,
      _Currency,
      _Customer,
      _TravelStatus
}
