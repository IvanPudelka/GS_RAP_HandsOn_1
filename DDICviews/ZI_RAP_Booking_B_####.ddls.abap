@AbapCatalog.sqlViewName: 'ZIBKNGB####'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Standard Booking View'
define view ZI_RAP_Booking_B_####
  as select from zrap_abook as Booking

  association [1..1] to ZI_RAP_Travel_B_#### as _Travel     on  $projection.TravelUUID = _Travel.TravelUuid

  association [1..1] to /DMO/I_Customer    as _Customer   on  $projection.CustomerID = _Customer.CustomerID
  association [1..1] to /DMO/I_Carrier     as _Carrier    on  $projection.CarrierID = _Carrier.AirlineID
  association [1..1] to /DMO/I_Connection  as _Connection on  $projection.CarrierID    = _Connection.AirlineID
                                                          and $projection.ConnectionID = _Connection.ConnectionID
  association [1..1] to /DMO/I_Flight      as _Flight     on  $projection.CarrierID    = _Flight.AirlineID
                                                          and $projection.ConnectionID = _Flight.ConnectionID
                                                          and $projection.FlightDate   = _Flight.FlightDate
  association [0..1] to I_Currency         as _Currency   on  $projection.CurrencyCode = _Currency.Currency
{
  key booking_uuid          as BookingUUID,
      travel_uuid           as TravelUUID,
      booking_id            as BookingID,
      booking_date          as BookingDate,
      customer_id           as CustomerID,
      carrier_id            as CarrierID,
      connection_id         as ConnectionID,
      flight_date           as FlightDate,
      flight_price          as FlightPrice,
      currency_code         as CurrencyCode,
      created_by            as CreatedBy,
      last_changed_by       as LastChangedBy,
      local_last_changed_at as LocalLastChangedAt,

      /* associations */
      _Travel,
      _Customer,
      _Carrier,
      _Connection,
      _Flight,
      _Currency
}
