@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking supplement processor'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZEY_AS_BOOKING_SUPPL_PROCESSOR as projection on ZEY_AS_BOOKSUPPL
{
   key TravelId,
   key BookingId,
   key BookingSupplementId,
   SupplementId,
   Price,
   CurrencyCode,
   LastChangedAt,
   /* Associations */
   _Booking: redirected to parent ZEY_AS_BOOKING_PROCESSOR,
   _Product,
   _SupplementText,
   _Travel: redirected to ZEY_AS_TRAVEL_PROCESSOR
}

