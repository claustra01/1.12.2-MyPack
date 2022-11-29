/*--------------------------------------------------
    Auther: claustra01
    License: All rights reserved.
--------------------------------------------------*/

#priority 200

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

print("========== Start loading oreutils.zs ==========");

    //---Remove---
    function removeOredict(oredict as IOreDictEntry, items as IItemStack[]) {
        oredict.removeItems(items);
    }

    //---Add---
    function addOredict(oredict as IOreDictEntry, items as IItemStack[]) {
        oredict.addItems(items);
    }

    //---Unification---
    function oredictUnify(oredict as IOreDictEntry, items as IItemStack[]) {
        oredict.addItems(items);
        for entry in oredict.items {
            var match = false;
            for item in items {
                if (entry.matches(item)) {
                    match = true;
                }
            }
            if (!match) {
                oredict.remove(entry);
            }
        }
    }

print("========== Complete loading oreutils.zs ==========");
