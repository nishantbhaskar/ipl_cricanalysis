select match_id,venue,innings,batting_team,bowling_team,striker,bowler,runs_off_bat,wicket_type,player_dismissed,ball_count 
from neat-vent-383007.dbt_nbhaskar.stg_ipl_records
where wicket_type in ('caught','bowled','lbw','caught and bowled','stumped','hit wicket') or wicket_type is null