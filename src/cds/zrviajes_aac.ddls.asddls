@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Entidad root Viajes Antonio'
define root view entity ZRVIAJES_AAC as select from /dmo/travel as Travel
composition [0..*] of ZERESERVAS_AAC as _Booking
{
    key Travel.travel_id as TravelId,
    Travel.agency_id as AgencyId,
    Travel.customer_id as CustomerId,
    Travel.begin_date as BeginDate,
    Travel.end_date as EndDate,
    Travel.booking_fee as BookingFee,
    Travel.total_price as TotalPrice,
    Travel.currency_code as CurrencyCode,
    Travel.description as Description,
    Travel.status as Status,
    Travel.createdby as Createdby,
    Travel.createdat as Createdat,
    Travel.lastchangedby as Lastchangedby,
    Travel.lastchangedat as Lastchangedat,
    _Booking // Make association public
}
