@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Interface'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_EY_AS_SALES as select from zey_as_so_hdr  as hdr
association[1..*] to zey_as_so_item as _Items on
--$projection allows us to use the field from selection list
$projection.OrderId = _Items.order_id
{
   key hdr.order_id as OrderId,
   hdr.order_no as OrderNo,
   hdr.buyer as Buyer,
   hdr.created_by as CreatedBy,
   hdr.created_on as CreatedOn,
   --exposed association
   _Items   
}
