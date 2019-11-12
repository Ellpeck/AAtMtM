import mods.actuallyadditions.AtomicReconstructor;
import mods.actuallyadditions.Empowerer;

# Cobblestone and the like
AtomicReconstructor.addRecipe(<minecraft:gravel>, <minecraft:cobblestone>, 1000);
AtomicReconstructor.addRecipe(<minecraft:sand>, <minecraft:gravel>, 500);

# Saplings
AtomicReconstructor.addRecipe(<minecraft:sapling:1>, <minecraft:sapling>, 20000);
AtomicReconstructor.addRecipe(<minecraft:sapling:2>, <minecraft:sapling:1>, 15000);
AtomicReconstructor.addRecipe(<minecraft:sapling:3>, <minecraft:sapling:2>, 10000);
AtomicReconstructor.addRecipe(<minecraft:sapling:4>, <minecraft:sapling:3>, 5000);
AtomicReconstructor.addRecipe(<minecraft:sapling:5>, <minecraft:sapling:4>, 2500);

# Seeds
AtomicReconstructor.addRecipe(<minecraft:wheat_seeds>, <minecraft:melon_seeds>, 20000);
AtomicReconstructor.addRecipe(<minecraft:melon_seeds>, <minecraft:pumpkin_seeds>, 15000);
AtomicReconstructor.addRecipe(<minecraft:pumpkin_seeds>, <minecraft:beetroot_seeds>, 10000);
AtomicReconstructor.addRecipe(<minecraft:beetroot_seeds>, <minecraft:wheat_seeds>, 5000);

# Cactus
AtomicReconstructor.addRecipe(<minecraft:reeds>, <minecraft:sugar>, 20000);
AtomicReconstructor.addRecipe(<minecraft:cactus>, <minecraft:reeds>, 20000);

# Empowered Enori
Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:5>);
Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:5>);
Empowerer.addRecipe(<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal:5>, <minecraft:dye:8>, <minecraft:stone_button>, <minecraft:cobblestone>, <minecraft:clay_ball>, 5000, 50);
Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:5>, <actuallyadditions:block_crystal:5>, <minecraft:dye:8>, <minecraft:stone_button>, <minecraft:cobblestone>, <minecraft:clay_ball>, 50000, 500);