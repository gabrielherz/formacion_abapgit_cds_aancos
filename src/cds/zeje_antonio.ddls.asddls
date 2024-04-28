@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ejemplo Antonio'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZEJE_ANTONIO as select from /DMO/I_Connection
{
    key AirlineID,
    key ConnectionID,
        _Airline.Name,
    DepartureAirport,
    DestinationAirport,
    DepartureTime,
    ArrivalTime,
    Distance,
    DistanceUnit
}
