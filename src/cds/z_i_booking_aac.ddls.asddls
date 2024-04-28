@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Reservas AAC'
@Metadata.allowExtensions: true
define view entity Z_I_BOOKING_AAC as select from /DMO/I_Booking_U
association to parent Z_I_TRAVEL_AAC as _Travel
    on $projection.TravelID = _Travel.TravelID
/*+[hideWarning] { "IDS" : [ "CARDINALITY_CHECK" ] }*/
 association [1..1] to /DMO/I_Connection as _Connection on $projection.ConnectionID = _Connection.ConnectionID
{
    key TravelID,
    key BookingID,
    BookingDate,
    CustomerID,
    AirlineID,
    ConnectionID,
    FlightDate,
    //@Semantics.amount.currencyCode: 'Currency_Code'
    FlightPrice,
   //@Semantics.currencyCode: true
    CurrencyCode,
    @Semantics.quantity.unitOfMeasure: 'DistanceUnit'
    _Connection.Distance as Distance,
    _Connection.DistanceUnit as DistanceUnit,
    case
    when _Connection.Distance >= 2000 then 'long-haul flight'
    when _Connection.Distance >= 1000 and
     _Connection.Distance <  2000 then 'medium-haul flight'
    when _Connection.Distance <  1000 then 'short-haul flight'
                      else 'error'
end                      as Flight_type,
    
    /* Associations */
    _Travel // Make association public
}
where
_Connection.DistanceUnit = 'KM'
