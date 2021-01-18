 @EndUserText.label : 'Travel data'
 @AbapCatalog.enhancementCategory : #NOT_EXTENSIBLE
 @AbapCatalog.tableCategory : #TRANSPARENT
 @AbapCatalog.deliveryClass : #A
 @AbapCatalog.dataMaintenance : #RESTRICTED
 define table zrap_atrav_#### {
   key client            : mandt not null;
   key travel_uuid       : sysuuid_x16 not null;
   travel_id             : /dmo/travel_id;
   agency_id             : /dmo/agency_id;
   customer_id           : /dmo/customer_id;
   begin_date            : /dmo/begin_date;
   end_date              : /dmo/end_date;
   @Semantics.amount.currencyCode : 'zrap_atrav_####.currency_code'
   booking_fee           : /dmo/booking_fee;
   @Semantics.amount.currencyCode : 'zrap_atrav_####.currency_code'
   total_price           : /dmo/total_price;
   currency_code         : /dmo/currency_code;
   description           : /dmo/description;
   overall_status        : /dmo/overall_status;
   @AbapCatalog.anonymizedWhenDelivered : true
   created_by            : syuname;
   created_at            : timestampl;
   @AbapCatalog.anonymizedWhenDelivered : true
   last_changed_by       : syuname;
   last_changed_at       : timestampl;
   local_last_changed_at : timestampl;
 }
