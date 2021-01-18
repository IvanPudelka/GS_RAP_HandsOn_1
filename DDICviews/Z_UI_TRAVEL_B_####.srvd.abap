@EndUserText.label: 'Service definition for read only travel'
define service Z_UI_TRAVEL_B {
  expose ZC_RAP_Travel_B_#### as Travel;
  expose ZC_RAP_Booking_B_#### as Booking;
  expose /DMO/I_Agency as Agency;
  expose /DMO/I_Customer as Customer;
  expose /DMO/I_Flight as Flight;
  expose /DMO/I_Carrier as Carrier;
  expose /DMO/I_Connection as Connection;
  expose /DMO/I_Airport as Airport;
  expose I_Currency as Currency;
  expose I_Country as Country;
}
