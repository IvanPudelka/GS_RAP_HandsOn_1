@EndUserText.label: 'Access Control for ZC_RAP_Travel_####'
@MappingRole: true
define role ZC_RAP_Travel_#### {
    grant
        select
            on
                ZC_RAP_TRAVEL_####
                    where
                        inheriting conditions from entity ZI_RAP_TRAVEL_####;      
                  
}
