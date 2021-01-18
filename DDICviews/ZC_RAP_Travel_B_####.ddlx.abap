@Metadata.layer: #CORE
@UI: {
  headerInfo: { typeName: 'Travel',
                typeNamePlural: 'Travels',
                title: { type: #STANDARD, label: 'Travel', value: 'TravelId' } }, 
  presentationVariant: [{ sortOrder: [{ by: 'TravelId', direction:  #DESC }] }] }

annotate view ZC_RAP_Travel_B_#### with
{
  @UI.facet: [ { id:              'Travel',
                 purpose:         #STANDARD,
                 type:            #IDENTIFICATION_REFERENCE,
                 label:           'Travel',
                 position:        10 },
               { id:              'Booking',
                 purpose:         #STANDARD,
                 type:            #LINEITEM_REFERENCE,
                 label:           'Booking',
                 position:        20,
                 targetElement:   '_Booking'} ]

  @UI:{ identification: [{ position: 1, label: 'Travel UUID' }] }
  TravelUuid;

  @UI: {  lineItem:       [ { position: 10 } ],
          identification: [ { position: 10 } ],
          selectionField: [ { position: 10 } ] }
  TravelId;

  @UI: {  lineItem:       [ { position: 20 } ],
          identification: [ { position: 20 } ],
          selectionField: [ { position: 20 } ] }
  AgencyId;

  @UI: {  lineItem:       [ { position: 30 } ],
          identification: [ { position: 30 } ],
          selectionField: [ { position: 30 } ] }
  CustomerId;

  @UI: {  lineItem:       [ { position: 40 } ],
          identification: [ { position: 40 } ] }
  BeginDate;

  @UI: {  lineItem:       [ { position: 50 } ],
          identification: [ { position: 50 } ] }
  EndDate;

  @UI: {  lineItem:       [ { position: 60 } ],
          identification: [ { position: 60 } ] }
  BookingFee;

  @UI: {  lineItem:       [ { position: 70 } ],
          identification: [ { position: 70 } ] }
  TotalPrice;

  @UI: {  lineItem:       [ { position: 80 } ],
          identification: [ { position: 80 } ] }
  Description;

  @UI: {  lineItem:       [ { position: 90 } ],
          identification: [ { position: 90 } ] }
  TravelStatus;

  @UI.hidden: true
  LastChangedAt;

  @UI.hidden: true
  LocalLastChangedAt;
}
