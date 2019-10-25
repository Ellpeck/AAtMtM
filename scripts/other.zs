import mods.dropt.Dropt;
import mods.initialinventory.InvHandler;

val blackQuartz = <actuallyadditions:item_misc:5>;

# Stone dropping Black Quartz
Dropt.list("black_quartz").priority(0).add(Dropt.rule().matchBlocks(["minecraft:stone"]).replaceStrategy("ADD")
    .addDrop(Dropt.drop().selector(Dropt.weight(3), "EXCLUDED").items([blackQuartz]))
    .addDrop(Dropt.drop().selector(Dropt.weight(7)))
);

# Seeds dropping from Tall Grass
vanilla.seeds.addSeed(<actuallyadditions:item_rice_seed> % 2);
vanilla.seeds.addSeed(<actuallyadditions:item_canola_seed> % 3);
vanilla.seeds.addSeed(<actuallyadditions:item_flax_seed> % 2);
vanilla.seeds.addSeed(<actuallyadditions:item_coffee_seed> % 1);

# Quest book on start
InvHandler.addStartingItem(<ftbquests:book>);