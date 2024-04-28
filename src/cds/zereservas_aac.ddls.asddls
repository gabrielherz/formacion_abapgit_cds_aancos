@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Reservas AAC'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZERESERVAS_AAC as select from /dmo/booking as Booking 
  association        to parent ZRVIAJES_AAC     as _Travel     on  $projection.TravelId = _Travel.TravelId
{
    key Booking.travel_id as TravelId,
    key Booking.booking_id as BookingId,
    Booking.booking_date as BookingDate,
    Booking.customer_id as CustomerId,
    Booking.carrier_id as CarrierId,
    Booking.connection_id as ConnectionId,
    Booking.flight_date as FlightDate,
    //Booking.flight_price as FlightPrice,
    Booking.currency_code as CurrencyCode,
    _Travel.AgencyId,
    _Travel
}
