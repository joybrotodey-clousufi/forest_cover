view: forest_cover {
  sql_table_name: `supply-chain-twin-349311.geospatial_data.forest_cover`
    ;;

  dimension: country {
  type: string
  primary_key: yes
  map_layer_name: countries
  sql: ${TABLE}.Country_Name ;;
}

  dimension: country_code {
    type: string
    sql: ${TABLE}.Country_Code ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.Country_Name ;;
  }

  measure: forest_area____of_land_area___ag_lnd_frst_zs_ {
    label: "Forest Area (% of land area)"
    type: average
    value_format:"##.00;(##.00)"
    sql: ${TABLE}.Forest_area____of_land_area___AG_LND_FRST_ZS_ ;;
  }

  measure: forest_area__sq__km___ag_lnd_frst_k2_ {
    label: "FForest Area (sq. km)"
    type: average
    value_format:"##.00;(##.00)"
    sql: ${TABLE}.Forest_area__sq__km___AG_LND_FRST_K2_ ;;
  }

  measure: forest_rents____of_gdp___ny_gdp_frst_rt_zs_ {
    label: "Forest Rents (% of GDP)"
    type: average
    value_format:"##.00;(##.00)"
    sql: ${TABLE}.Forest_rents____of_GDP___NY_GDP_FRST_RT_ZS_ ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.Time ;;
  }

  dimension: time_code {
    type: string
    sql: ${TABLE}.Time_Code ;;
  }

  measure: count {
    type: count
    drill_fields: [country_name]
  }
}
