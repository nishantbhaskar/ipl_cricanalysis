{{ config(materialized='view') }}
select * , (SAFE_DIVIDE(run_scored,number_of_ball_face))*100 as strikerate,SAFE_DIVIDE(run_scored,number_of_dismissal) as average from neat-vent-383007.dbt_nbhaskar.without_venue_filter
