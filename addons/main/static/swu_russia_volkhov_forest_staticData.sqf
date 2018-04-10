private["_worldName"];
 _worldName = tolower(worldName);
 ["ALiVE SETTING UP MAP: swu_russia_volkhov_forest"] call ALIVE_fnc_dump;
 ALIVE_Indexing_Blacklist = [];
 ALIVE_airBuildingTypes = [];
 ALIVE_militaryParkingBuildingTypes = [];
 ALIVE_militarySupplyBuildingTypes = [];
 ALIVE_militaryHQBuildingTypes = [];
 ALIVE_militaryAirBuildingTypes = [];
 ALIVE_civilianAirBuildingTypes = [];
 ALiVE_HeliBuildingTypes = [];
 ALIVE_militaryHeliBuildingTypes = [];
 ALIVE_civilianHeliBuildingTypes = [];
 ALIVE_militaryBuildingTypes = [];
 ALIVE_civilianPopulationBuildingTypes = [];
 ALIVE_civilianHQBuildingTypes = [];
 ALIVE_civilianPowerBuildingTypes = [];
 ALIVE_civilianCommsBuildingTypes = [];
 ALIVE_civilianMarineBuildingTypes = [];
 ALIVE_civilianRailBuildingTypes = [];
 ALIVE_civilianFuelBuildingTypes = [];
 ALIVE_civilianConstructionBuildingTypes = [];
 ALIVE_civilianSettlementBuildingTypes = [];
 if(tolower(_worldName) == "swu_russia_volkhov_forest") then {
[ALIVE_mapBounds, worldName, 6000] call ALIVE_fnc_hashSet;
ALIVE_Indexing_Blacklist = ALIVE_Indexing_Blacklist + ["a3\structures_f_argo\military\fortifications\czechhedgehog_01_f.p3d","ww2\objects_m\structures\if_buildingsrwwinter_m\ww2_wicker_fence3_w.p3d","ww2\assets_m\vehicles\wrecks_m\if_zis5v_wreck.p3d","ww2\objects_m\structures\if_buildingsrwwinter_m\ww2_zed_civil_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_city_shop_1e_destroyed_w.p3d","ww2\objects_m\structures\if_buildingsrwwinter_m\ww2_wicker_fence_short_dammage_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_well_w.p3d","ww2\objects_m\misc\if_coredata_m\pyatna\ww2_pyatno_big2.p3d","ww2\objects_m\misc\if_coredata_m\pyatna\ww2_pyatno_big1.p3d","ww2\objects_m\misc\if_coredata_m\pyatna\ww2_pyatno_big3.p3d","ww2\objects_m\structures\if_buildings2winter_m\ww2_french_wood_wall_w.p3d","ca\structures\rail\rail_wagon\wagon_tanker.p3d","ca\structures\rail\rail_wagon\wagon_flat.p3d","ca\structures\rail\rail_wagon\wagon_box.p3d","ww2\objects_m\structures\if_buildings_m\ww2_wire_2.p3d","ca\buildings\misc\hrobecek_krizek2.p3d","a3\structures_f_exp\civilian\sheds\shed_06_f.p3d","ww2\objects_m\structures\if_pontonwinter_m\ww2_ponton_bridge_w.p3d","ww2\objects_m\structures\if_buildings2winter_m\ww2_s_fance_tall_w.p3d","ww2\objects_m\structures\if_buildings_m\ww2_wire_1.p3d","ca\buildings\dum_zboreny_lidice.p3d","ww2\objects_m\structures\if_buildings_m\ww2_fort_bagfence_round.p3d","ww2\objects_m\structures\if_buildingsrwwinter_m\ww2_wicker_fence_short_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_kolonka_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_hata_1_ruins_w.p3d","ww2\objects_m\misc\jns_snow_objects_m\railway\ww2_jns_rails_bridge_40.p3d"];
ALIVE_militaryBuildingTypes = ALIVE_militaryBuildingTypes + ["ww2\objects_m\structures\if_buildingsrwwinter_m\ww2_mil_barracks_l_w.p3d","ww2\objects_m\structures\if_buildingsrwwinter_m\ww2_mil_barracks_w.p3d","ww2\objects_m\structures\if_trencheswinter_m\ww2_fortification_trench_bunker_ffp_w.p3d","ww2\objects_m\structures\if_trencheswinter_m\ww2_fortification_trench_bunker_ffp_doors_w.p3d","ww2\objects_m\structures\if_trencheswinter_m\ww2_fortification_trench_bunker_big_doors_w.p3d"];
ALIVE_militaryParkingBuildingTypes = ALIVE_militaryParkingBuildingTypes + [];
ALIVE_militarySupplyBuildingTypes = ALIVE_militarySupplyBuildingTypes + ["ww2\objects_m\structures\if_buildingsrwwinter_m\ww2_mil_barracks_l_w.p3d","ww2\objects_m\structures\if_buildingsrwwinter_m\ww2_mil_barracks_w.p3d"];
ALIVE_militaryHQBuildingTypes = ALIVE_militaryHQBuildingTypes + ["ww2\objects_m\structures\if_buildingsrwwinter_m\ww2_mil_barracks_w.p3d"];
ALIVE_airBuildingTypes = ALIVE_airBuildingTypes + [];
ALIVE_militaryAirBuildingTypes = ALIVE_militaryAirBuildingTypes + [];
ALIVE_civilianAirBuildingTypes = ALIVE_civilianAirBuildingTypes + [];
ALIVE_heliBuildingTypes = ALIVE_heliBuildingTypes + [];
ALIVE_militaryHeliBuildingTypes = ALIVE_militaryHeliBuildingTypes + [];
ALIVE_civilianHeliBuildingTypes = ALIVE_civilianHeliBuildingTypes + [];
ALIVE_civilianPopulationBuildingTypes = ALIVE_civilianPopulationBuildingTypes + ["ww2\objects_m\structures\if_buildingswinter_m\ww2_dom_pl_avrg_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_dom_pol_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_chik_house_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_dom_pl_big_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_dom_pl_big2_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_house_city1e_2_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_house_city1e_1_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_city_shop_1e_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_banya_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_city_shop_1e_2_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_city_house_2e_lone_2_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_house_2e_arc1_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_house_2e_arc2_w.p3d","ww2\objects_m\structures\if_buildingsrw_m\ww2_shed_w4.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_house_2e_1_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_countryside_house_1_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_house_city1e_1_damaged_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_hata_1_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_countryside_house_2_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_city_house_2e_lone_2_damaged_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_city_house_2e_lone_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_city_shop_1e_damaged_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_city_house_2floor_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_city_house_2e_shops_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_corner_house_2e_2_w.p3d","ww2\objects_m\structures\if_buildings2winter_m\ww2_dlc1_kirpich_1floor_w.p3d","ca\buildings\dum_mesto_in.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_dom_pol_damage_w.p3d"];
ALIVE_civilianHQBuildingTypes = ALIVE_civilianHQBuildingTypes + ["ww2\objects_m\structures\if_buildingswinter_m\ww2_house_city1e_1_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_city_house_2e_lone_w.p3d","ca\buildings\dum_mesto_in.p3d"];
ALIVE_civilianSettlementBuildingTypes = ALIVE_civilianSettlementBuildingTypes + ["ww2\objects_m\structures\if_buildingswinter_m\ww2_dom_pl_avrg_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_dom_pol_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_chik_house_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_dom_pl_big_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_dom_pl_big2_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_sarai_big_w.p3d","ca\buildings\dum_zboreny.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_dom_pl_big_damage_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_house_city1e_2_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_cr_mid_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_house_city1e_1_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_city_house_2e_shops_destroyed_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_city_shop_1e_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_banya_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_hata_2_dam_w.p3d","ww2\objects_m\structures\if_buildingsrwwinter_m\ww2_shed_w01_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_city_shop_1e_2_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_city_house_2e_lone_2_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_church_damaged_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_house_2e_arc1_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_house_2e_arc2_w.p3d","ww2\objects_m\structures\if_buildingsrw_m\ww2_shed_w4.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_house_2e_1_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_corner_house_2e_3_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_countryside_house_1_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_chik_house2_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_hata_2_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_kladovka2_w.p3d","ww2\objects_m\structures\if_buildingsrwwinter_m\ww2_posed_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_dom_pl_sml_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_dom_pl_big2_damage_w.p3d","ca\structures\house\church_05r\church_05r.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_house_city1e_1_damaged_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_church_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_sarai_mid_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_sarai_big_dam_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_hata_1_w.p3d","ca\buildings\afbarabizna.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_house_city1e_2_damaged_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_countryside_house_2_w.p3d","ca\buildings\dulni_bs.p3d","ca\buildings\dum_zboreny_total.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_kostel_1_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_city_house_2e_lone_2_damaged_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_city_house_2e_lone_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_city_shop_1e_damaged_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_city_house_2floor_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_city_house_2e_shops_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_corner_house_2e_2_w.p3d","ww2\objects_m\structures\if_buildings2winter_m\ww2_dlc1_kirpich_1floor_w.p3d","ca\buildings\dum_mesto_in.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_kirpich_1floor_w.p3d","ww2\objects_m\structures\if_buildingsrwwinter_m\ww2_shed_w03_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_banya_destroyed_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_dom_pol_damage_w.p3d","ww2\objects_m\structures\if_buildingswinter_m\ww2_hata_1_dam_w.p3d","ww2\objects_m\structures\if_buildingsrwwinter_m\ww2_shed_w02_w.p3d","ca\buildings\hut_old02.p3d","ca\buildings\komin.p3d"];
ALIVE_civilianPowerBuildingTypes = ALIVE_civilianPowerBuildingTypes + [];
ALIVE_civilianCommsBuildingTypes = ALIVE_civilianCommsBuildingTypes + [];
ALIVE_civilianMarineBuildingTypes = ALIVE_civilianMarineBuildingTypes + [];
ALIVE_civilianRailBuildingTypes = ALIVE_civilianRailBuildingTypes + ["ca\buildings2\rail_house_01\rail_house_01.p3d"];
ALIVE_civilianFuelBuildingTypes = ALIVE_civilianFuelBuildingTypes + [];
ALIVE_civilianConstructionBuildingTypes = ALIVE_civilianConstructionBuildingTypes + ["ca\buildings2\barn_metal\barn_metal_dam.p3d","ww2\objects_m\structures\cup_structureswinter_m\barn_w\cup_barn_w_01_w.p3d","ww2\objects_m\structures\cup_structureswinter_m\ind_sawmill\cup_ind_sawmillpen_w.p3d","ca\buildings2\ind_cementworks\ind_pec\ind_pec_03.p3d"];
};