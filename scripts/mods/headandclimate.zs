/*--------------------------------------------------
    Auther: claustra01
    License: All rights reserved.
--------------------------------------------------*/

#priority 0

import scripts.utils.jeiutils;

print("========== Start loading heatandclimate.zs ==========");

    ///---Categories---
    jeiutils.hideCategory("dcs_climate.info");
    jeiutils.hideCategory("dcs_climate.drink");
    jeiutils.hideCategory("dcs_climate.fuel");
    jeiutils.hideCategory("dcs_climate.biome");
    jeiutils.hideCategory("dcs_climate.effective");

    //---Metals---
    jeiutils.hideMetaItem(true, <dcs_climate:dcs_ore_stone_new>, 0, 14);
    jeiutils.hideMetaItem(true, <dcs_climate:dcs_layer_stone_new>, 0, 7);
    jeiutils.hideMetaItem(true, <dcs_climate:dcs_layer_skarn>, 0, 2);
    jeiutils.hideMetaItem(true, <dcs_climate:dcs_layer_skarn_ore>, 0, 8);
    jeiutils.hideMetaItem(true, <dcs_climate:dcs_oreitem>, 0, 14);
    jeiutils.hideMetaItem(true, <dcs_climate:dcs_ingot>, 0, 18);
    jeiutils.hideMetaItem(true, <dcs_climate:dcs_oredust>, 0, 15);

print("========== Complete loading heatandclimate.zs ==========");
