/*--------------------------------------------------
    Auther: claustra01
    License: All rights reserved.
--------------------------------------------------*/

#priority 200

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("========== Start loading jeiutils.zs ==========");

    //---Category---
    function hideCategory(name as string) {
        mods.jei.JEI.hideCategory(name);
    }

    //---Hide---
    function hideItem(isDisable as bool, item as IItemStack) {
        if (isDisable) {

            mods.jei.JEI.removeAndHide(item);
            furnace.remove(item);

            var oredict = item.ores;
            if (!isNull(oredict)) {
                for entry in oredict {
                    entry.remove(item);
                }
            }
            
        } else {
            mods.jei.JEI.hide(item);
        }
    }

    //---Add---
    function addItem(item as IItemStack) {
        mods.jei.JEI.addItem(item);
    }

    //---MetaItem---
    function hideMetaItem(isDisable as bool, item as IItemStack, metaMin as int, metaMax as int) {
        for i in metaMin to metaMax + 1 {
            hideItem(isDisable, item.definition.makeStack(i));
        }
    }

    //---ToolTips---
    /*
        //---Templete---
        mainUtils.addTooltip(<modid:name>, [["Line1", "color"], ["Line2", "color"], ...]);
    */
    function addTooltip(items as IIngredient, tooltip as string[][]) {
        for item in items.items {
            for line in tooltip {
                var color = line[1];
                if (color == "black") {
                    item.addTooltip(format.black(line[0]));
                } else if (color == "darkBlue") {
                    item.addTooltip(format.darkBlue(line[0]));
                } else if (color == "darkGreen") {
                    item.addTooltip(format.darkGreen(line[0]));
                } else if (color == "darkAqua") {
                    item.addTooltip(format.darkAqua(line[0]));
                } else if (color == "darkRed") {
                    item.addTooltip(format.darkRed(line[0]));
                } else if (color == "darkPurple") {
                    item.addTooltip(format.darkPurple(line[0]));
                } else if (color == "gold") {
                    item.addTooltip(format.gold(line[0]));
                } else if (color == "gray") {
                    item.addTooltip(format.gray(line[0]));
                } else if (color == "darkGray") {
                    item.addTooltip(format.darkGray(line[0]));
                } else if (color == "blue") {
                    item.addTooltip(format.blue(line[0]));
                } else if (color == "green") {
                    item.addTooltip(format.green(line[0]));
                } else if (color == "aqua") {
                    item.addTooltip(format.aqua(line[0]));
                } else if (color == "red") {
                    item.addTooltip(format.red(line[0]));
                } else if (color == "lightPurple") {
                    item.addTooltip(format.lightPurple(line[0]));
                } else if (color == "yellow") {
                    item.addTooltip(format.yellow(line[0]));
                } else if (color == "white") {
                    item.addTooltip(format.white(line[0]));
                } else {
                    item.addTooltip(line[0]);
                }
            }
        }
    }

print("========== Complete loading jeiutils.zs ==========");
