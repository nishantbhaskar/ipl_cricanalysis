select striker,bowler,sum(runs_off_bat) as run_scored ,count(wicket_type) as number_of_dismissal,sum(ball_count) as number_of_ball_face from neat-vent-383007.dbt_nbhaskar.silver_ipl_records
where venue ='Eden Gardens'
GROUP BY striker,bowler