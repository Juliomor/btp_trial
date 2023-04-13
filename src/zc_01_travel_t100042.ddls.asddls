@EndUserText.label: 'CDS - Proyection 1'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZC_01_Travel_T100042
  as projection on ZI_03_Travel_T100042
{
  key TravelId,
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
      BookingFee,
      TotalPrice,
      CurrencyCode,
      Description,
      Status,
      /* Associations */
      _Agency,
      _Booking: redirected to composition child ZC_02_Booking_T100042,
      _Customer
}
