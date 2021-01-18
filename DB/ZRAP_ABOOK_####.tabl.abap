 @EndUserText.label : 'Booking data'
 @AbapCatalog.enhancementCategory : #NOT_EXTENSIBLE
 @AbapCatalog.tableCategory : #TRANSPARENT
 @AbapCatalog.deliveryClass : #A
 @AbapCatalog.dataMaintenance : #RESTRICTED
 define table zrap_abook_#### {
   key client            : mandt not null;
   key booking_uuid      : sysuuid_x16 not null;
   travel_uuid           : sysuuid_x16 not null;
   booking_id            : /dmo/booking_id;
   booking_date          : /dmo/booking_date;
   customer_id           : /dmo/customer_id;
   carrier_id            : /dmo/carrier_id;
   connection_id         : /dmo/connection_id;
   flight_date           : /dmo/flight_date;
   @Semantics.amount.currencyCode : 'zrap_abook_####.currency_code'
   flight_price          : /dmo/flight_price;
   currency_code         : /dmo/currency_code;
   @AbapCatalog.anonymizedWhenDelivered : true
   created_by            : syuname;
   @AbapCatalog.anonymizedWhenDelivered : true
   last_changed_by       : syuname;
   local_last_changed_at : timestampl;
 }
