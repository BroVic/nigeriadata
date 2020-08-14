settlement <- c(
  settlement_point = 'sv_settlements',
  settlement_area = 'settlement_areas'
  )


population.estimate <- c(
  settlement_population_estimate = 'sv_settlement_pop_estimate',
  settlement_point_population_estimate = 'sv_settlement_points_pop_estimate',
  ward_population_estimate = 'sv_ward_pop_estimate',
  lga_population_estimate = 'sv_local_government_pop_estimate',
  state_population_estimate = 'sv_state_pop_estimate'

)

points.of.interest <- c(
  farmlands = 'farms',
  industrial_sites = 'sv_factory_sites',
  petrol_stations = 'sv_fuel_stations',
  markets = 'sv_markets',
  police_stations = 'sv_police_stations',
  prisons = 'sv_prisons',
  schools = 'sv_schools',
  religion_institutions = 'sv_religious_institutions',
  post_offices = 'sv_post_offices',
  government_buildings = 'sv_government_buildings',
  dump_sites = 'sv_dump_sites',
  public_water_supplies = 'sv_public_water_supplies',
  electricity_substations = 'sv_electricity_substations',
  pharmacy_stores = 'sv_pharmacies',
  patent_medicine_vendors = 'sv_patent_medicine_vendors',
  healthcare_facilities = 'sv_health_facilities',
  emergency_services = NA_character_,
  # cold_chain_equipment = 'sv_cold_%20stores',
  idp_camp = 'sv_internally_displaced_person_surveys'
)

admin.boundaries <- c(
  ward_admin_boundaries = 'sv_wards',
  lga_admin_boundaries = 'sv_local_government_areas',
  state_admin_boundaries = 'sv_states'
)

all.data <-
  c(admin.boundaries,
    settlement,
    points.of.interest,
    population.estimate)

usethis::use_data(all.data, internal = TRUE)
