@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Root view'
define root view entity ZI_03_Travel_T100042
  as select from /dmo/travel
  association [1..1] to /DMO/I_Agency         as _Agency   on $projection.AgencyId = _Agency.AgencyID
  association [1..1] to /DMO/I_Customer       as _Customer on $projection.CustomerId = _Customer.CustomerID
  composition [0..*] of ZI_04_Booking_T100042 as _Booking
{

  key travel_id     as TravelId,
      agency_id     as AgencyId,
      customer_id   as CustomerId,
      begin_date    as BeginDate,
      end_date      as EndDate,
      booking_fee   as BookingFee,
      total_price   as TotalPrice,
      currency_code as CurrencyCode,
      description   as Description,
      status        as Status,
      _Agency,
      _Customer,
      _Booking
}
