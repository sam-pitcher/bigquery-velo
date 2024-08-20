view: gemini_suggestions {
  derived_table: {
    sql:
    SELECT
      job_id AS original_job_id,
      query AS original_query,
      TO_JSON_STRING(ml_generate_text_result['predictions'][0]['content']) AS generated_text,
      ml_generate_text_result['predictions'][0]['safetyAttributes'] AS safety_attributes,
      * EXCEPT (ml_generate_text_result)
FROM
  ML.GENERATE_TEXT(
    MODEL `llm.llm_model`,
    (
  SELECT
        job_id,
        query,
        CONCAT('Here is a block of BigQuery SQL code. Please explain why this BigQuery SQL query is not performing well. The SQL is', query, "The total_slot_ms were ", total_slot_ms, " for this query.", "The query took ", timestamp_diff(start_time, end_time, millisecond), " milliseconds to run.")


        AS prompt
        from `region-us`.INFORMATION_SCHEMA.JOBS
        where
          query not like "%looker_scratch.connection_reg_r3%"
          and query not like "%select 1%"
          and query not like "%select current_date%"
          and upper(query) not like "%CREATE%"
          and query not like "%CALL BQ.REFRESH_MATERIALIZED_VIEW%"
          and job_type = 'QUERY'
          and {% condition jobs_by_project.creation_time %} creation_time {% endcondition %}
          and {% condition jobs_by_project.creation_date %} creation_time {% endcondition %}
          and {% condition jobs_by_project.job_id %} job_id {% endcondition %}
          order by total_slot_ms desc
    ),
    STRUCT(
      0.2 AS temperature,
      250 AS max_output_tokens))

      ;;
  }
  dimension: job_id {
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.original_job_id ;;
  }

  dimension: generated_text {
    label: "Gemini Suggestion"
    html: <p>{{value | replace: "\n", "<br>" | replace: '" ', ''}}</p> ;;
  }
}
