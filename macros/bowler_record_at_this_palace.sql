{% macro bowler_record_at_this_palace(bowler)%}
(

SELECT bowler, sum(number_of_dismissal) as wicket,sum(number_of_ball_face) as ball,sum(number_of_ball_face)/sum(number_of_dismissal) as average,(sum(run_scored)/sum(number_of_ball_face))*6 as economy FROM `neat-vent-383007.dbt_nbhaskar.gold_ipl_records` where REGEXP_CONTAINS(LOWER(bowler), r'{{bowler}}') group by bowler
)
{% endmacro%}