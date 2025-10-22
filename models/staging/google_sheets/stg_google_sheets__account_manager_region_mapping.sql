SELECT
    SPLIT(state_account_manager, ',')[OFFSET(0)] AS state,
    SPLIT(state_account_manager, ',')[OFFSET(1)] AS account_manager
from {{source("google_sheets",'data_google_sheets')}}