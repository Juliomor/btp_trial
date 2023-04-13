@EndUserText.label: 'CDS - Proyection 2'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZC_02_Booking_T100042
  as projection on ZI_04_Booking_T100042
{
  key TravelId,
  key BookingId,
      BookingDate,
      CustomerId,
      CarrierId,
      ConnectionId,
      FlightDate,
      FlightPrice,
      CurrencyCode,
      /* Associations */
      _BookingSup: redirected to ZC_03_BSupl_USUARIOSAP,
      _Travel: redirected to parent ZC_01_Travel_T100042
}
