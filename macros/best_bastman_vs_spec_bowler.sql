{% macro best_bastman_vs_spec_bowler(bowler)%}(

 SELECT * FROM `neat-vent-383007.dbt_nbhaskar.gold_ipl_records` where REGEXP_CONTAINS(LOWER(bowler), r'{{bowler}}')  and number_of_ball_face>5 order by average desc
)
{% endmacro%}