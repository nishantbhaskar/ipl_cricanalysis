{{ config(materialized='view') }}
select *,1 as ball_count 
from neat-vent-383007.dbt_nbhaskar.ipl_stats

