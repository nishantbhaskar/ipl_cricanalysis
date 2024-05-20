{% macro bastman_record_at_this_palace(batsman)%}
(

SELECT striker,sum(number_of_dismissal) as number_of_dismissal,sum(run_scored) as run,sum(number_of_ball_face) as ball,SAFE_DIVIDE(sum(run_scored),sum(number_of_dismissal)) as average,(sum(run_scored)/sum(number_of_ball_face))*100 as strikerate FROM `neat-vent-383007.dbt_nbhaskar.gold_ipl_records` where REGEXP_CONTAINS(LOWER(striker), r'{{batsman}}') group by striker
)
{% endmacro%}