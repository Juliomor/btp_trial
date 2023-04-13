@EndUserText.label: 'CDS - Proyection 3'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZC_03_BSupl_USUARIOSAP
  as projection on ZI_05_BSUPL_USUARIOSAP
{
  key TravelId,
  key BookingId,
  key BookingSupplementId,
      SupplementId,
      Price,
      CurrencyCode,
      /* Associations */
      _Booking : redirected to parent ZC_02_Booking_T100042,
      _Travel  : redirected to ZC_01_Travel_T100042
}
