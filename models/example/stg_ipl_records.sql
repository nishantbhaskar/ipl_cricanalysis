select * except(ball_count), 
    case 
        when ball_count is null then 1
    end as ball_count
from neat-vent-383007.dbt_nbhaskar.ipl_records

