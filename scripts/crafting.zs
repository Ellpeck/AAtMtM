val restonia = <actuallyadditions:item_crystal:0>;
val restoniaShard = <actuallyadditions:item_crystal_shard:0>;
val palis = <actuallyadditions:item_crystal:1>;
val palisShard = <actuallyadditions:item_crystal_shard:1>;
val diamatine = <actuallyadditions:item_crystal:2>;
val voidd = <actuallyadditions:item_crystal:3>;
val emeradic = <actuallyadditions:item_crystal:4>;
val enori = <actuallyadditions:item_crystal:5>;
val enoriBlock = <actuallyadditions:block_crystal:5>;
val ironCasing = <actuallyadditions:block_misc:9>;
val stick = <minecraft:stick>;
val coil = <actuallyadditions:item_misc:7>;
val advancedCoil = <actuallyadditions:item_misc:8>;
val blackQuartz = <actuallyadditions:item_misc:5>;
val egg = <minecraft:spawn_egg>;
val worm = <actuallyadditions:item_worm>;

# Atomic Reconstructor
recipes.remove(<actuallyadditions:block_atomic_reconstructor>);
recipes.addShaped("atomic_reconstructor", <actuallyadditions:block_atomic_reconstructor>, [
    [enori, restonia, enori],
    [restonia, ironCasing, restonia],
    [enori, restonia, enori]
]);

# Iron Casing
recipes.remove(ironCasing);
recipes.addShaped("iron_casing", ironCasing, [
    [enori, stick, enori],
    [stick, blackQuartz, stick],
    [enori, stick, enori]
]);

# Coils
recipes.remove(coil);
recipes.addShaped("coil", coil, [
    [null, restoniaShard, null],
    [restoniaShard, blackQuartz, restoniaShard],
    [null, restoniaShard, null]
]);
recipes.remove(advancedCoil);
recipes.addShaped("advanced_coil", advancedCoil, [
    [palisShard, palisShard, palisShard],
    [palisShard, coil, palisShard],
    [palisShard, palisShard, palisShard]
]);

# Leaf Generator
recipes.remove(<actuallyadditions:block_leaf_generator>);
recipes.addShaped("leaf_generator", <actuallyadditions:block_leaf_generator>, [
    [enori, ironCasing, enori],
    [restonia, <minecraft:sapling>, restonia],
    [enori, advancedCoil, enori]
]);

# Lens of the Miner
recipes.remove(<actuallyadditions:item_mining_lens>);
recipes.addShaped("mining_lens", <actuallyadditions:item_mining_lens>, [
    [diamatine, blackQuartz, enori],
    [voidd, <actuallyadditions:item_misc:18>, palis],
    [restonia, blackQuartz, emeradic]
]);

# Lava Factory
recipes.remove(<actuallyadditions:block_lava_factory_controller>);
recipes.addShaped("lava_factory", <actuallyadditions:block_lava_factory_controller>, [
    [advancedCoil, ironCasing, advancedCoil],
    [enoriBlock, advancedCoil, enoriBlock],
    [<minecraft:water_bucket>, <minecraft:bucket>, <minecraft:water_bucket>]
]);

# Crystal Conversions
for i in 0 to 6 {
    val crystal = <actuallyadditions:item_crystal>.definition.makeStack(i);
    val shard = <actuallyadditions:item_crystal_shard>.definition.makeStack(i);
    # Turning 2 shards into a crystal
    recipes.removeShaped(crystal);
    recipes.addShaped("crystal_" + i, crystal, [[shard, null], [null, shard]]);
    # Turning a crystal into 2 shards
    recipes.removeShapeless(shard);
    recipes.addShapeless("crystal_shard_" + i, shard * 2, [crystal]);
}

# Animal Eggs
recipes.addShaped("chicken", egg.withTag({EntityTag: {id: "minecraft:chicken"}}), [
    [null, worm],
    [null, worm]
]);
recipes.addShaped("cow", egg.withTag({EntityTag: {id: "minecraft:cow"}}), [
    [null, null, null],
    [worm, worm, worm],
    [worm, null, worm]
]);
recipes.addShaped("pig", egg.withTag({EntityTag: {id: "minecraft:pig"}}), [
    [worm, worm],
    [worm, worm]
]);
recipes.addShaped("sheep", egg.withTag({EntityTag: {id: "minecraft:sheep"}}), [
    [worm, null, null],
    [worm, worm, worm],
    [worm, null, worm]
]);
recipes.addShaped("wolf", egg.withTag({EntityTag: {id: "minecraft:wolf"}}), [
    [worm, worm],
    [null, worm]
]);

# Ender Star 
val star = <actuallyadditions:item_misc:19>;
recipes.removeShapeless(star);
recipes.addShapeless("ender_star", star, [<minecraft:nether_star>, blackQuartz, <minecraft:prismarine_shard>]);

# Laser Relay
recipes.removeShaped(<actuallyadditions:block_laser_relay>);
recipes.addShaped("laser_relay", <actuallyadditions:block_laser_relay>, [
    [<minecraft:obsidian>, <minecraft:redstone>, <minecraft:obsidian>],
    [restonia, advancedCoil, restonia],
    [<minecraft:obsidian>, <minecraft:redstone>, <minecraft:obsidian>]
]);