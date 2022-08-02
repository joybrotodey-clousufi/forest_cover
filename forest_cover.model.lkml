connection: "supply-chain-twin-349311"

# include all the views
include: "/views/*.view"
# include: "/z_tests/*.lkml"
include: "/forest_cover/*.dashboard"

datagroup: inventory_visibility_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: inventory_visibility_datagroup

explore: forest_cover {
  label: "Forest Cover"

}
