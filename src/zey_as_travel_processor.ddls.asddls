@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Processor projection layer'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define root view entity ZEY_AS_TRAVEL_PROCESSOR
   as projection on ZEY_AS_TRAVEL
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
   OverallStatus,
   CreatedBy,
   CreatedAt,
   LastChangedBy,
   LastChangedAt,
   AgencyName,
   CustomerName,
   StatusText,
   Criticality,
  
   /* Associations */
   _Agency,
   _Booking: redirected to composition child ZEY_AS_BOOKING_PROCESSOR,
   _Currency,
   _Customer,
   _OverallStatus
}
