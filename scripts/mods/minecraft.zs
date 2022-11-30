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

    //---Potions---
    //jeiutils.hideItem(true, <minecraft:potion:*>, 0, 14);
    jeiutils.hideItem(true, <minecraft:splash_potion:*>, 0, 14);
    jeiutils.hideItem(true, <minecraft:lingering_potion:*>, 0, 14);
    jeiutils.hideItem(true, <minecraft:tipped_arrow:*>, 0, 14);

print("========== Complete loading minecraft.zs ==========");
