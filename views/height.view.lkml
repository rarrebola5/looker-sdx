# The name of this view in Looker is "Height"
view: height {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker-sdb-rafael.hh.height` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: daily_caloric_intake_per_person_that_comes_from_animal_protein {
    type: number
    sql: ${TABLE}.Daily_caloric_intake_per_person_that_comes_from_animal_protein ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_daily_caloric_intake_per_person_that_comes_from_animal_protein {
    type: sum
    sql: ${daily_caloric_intake_per_person_that_comes_from_animal_protein} ;;  }
  measure: average_daily_caloric_intake_per_person_that_comes_from_animal_protein {
    type: average
    sql: ${daily_caloric_intake_per_person_that_comes_from_animal_protein} ;;  }

  dimension: entity {
    type: string
    sql: ${TABLE}.Entity ;;
  }

  dimension: mean_female_height__cm_ {
    type: number
    sql: ${TABLE}.Mean_female_height__cm_ ;;
  }

  dimension: mean_male_height__cm_ {
    type: number
    sql: ${TABLE}.Mean_male_height__cm_ ;;
  }

  dimension: population__historical_estimates_ {
    type: number
    sql: ${TABLE}.Population__historical_estimates_ ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  dimension: year_on_year_change_in_female_height____ {
    type: number
    sql: ${TABLE}.Year_on_year_change_in_female_height____ ;;
  }

  dimension: year_on_year_change_in_male_height____ {
    type: number
    sql: ${TABLE}.Year_on_year_change_in_male_height____ ;;
  }
  measure: count {
    type: count
  }
}
