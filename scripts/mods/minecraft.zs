/*--------------------------------------------------
    Auther: claustra01
    License: All rights reserved.
--------------------------------------------------*/

#priority 0

import scripts.utils.jeiutils;

print("========== Start loading minecraft.zs ==========");

    ///---Categories---
    jeiutils.hideCategory("minecraft.fuel");
    jeiutils.hideCategory("minecraft.brewing");
    jeiutils.hideCategory("minecraft.anvil");

    //---Tools---
    jeiutils.hideItem(false, <forge:bucketfilled:*>);

    //---Potions---
    //jeiutils.hideItem(true, <minecraft:potion:*>);
    jeiutils.hideItem(true, <minecraft:splash_potion:*>);
    jeiutils.hideItem(true, <minecraft:lingering_potion:*>);
    jeiutils.hideItem(true, <minecraft:tipped_arrow:*>);

print("========== Complete loading minecraft.zs ==========");
