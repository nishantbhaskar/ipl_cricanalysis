{% macro spec_bastman_vs_spec_bowler(batsman,bowler)%}(

SELECT * FROM `neat-vent-383007.dbt_nbhaskar.gold_ipl_records` where REGEXP_CONTAINS(LOWER(striker), r'{{batsman}}') and REGEXP_CONTAINS(LOWER(bowler), r'{{bowler}}'))
{% endmacro%}