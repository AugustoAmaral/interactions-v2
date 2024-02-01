import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;

val machineName = "gem_refiner";
val posInfinity = 1.0D/0.0D;

val gem_names as string[] = [
	"Almandine",
	"BlueTopaz",
	"Cinnabar",
	"Coal",
	"Diamond",
	"Emerald",
	"GreenSapphire",
	"Rutile",
	"Lazurite",
	"Ruby",
	"Sapphire",
	"Sodalite",
	"Tanzanite",
	"Topaz",
	"NetherQuartz",
	"CertusQuartz",
	"Quartzite",
	"Jasper",
	"Glass",
	"Lignite",
	"Olivine",
	"Opal",
	"Amethyst",
	"Lapis",
	"Apatite",
	"GarnetRed",
	"GarnetYellow",
	"Vinteum",
	"Monazite",
	"Coke",
	"Skystone",
	"AerInfused",
	"AquaInfused",
	"EntropyInfused",
	"IgnisInfused",
	"OrdoInfused",
	"TerraInfused"
] as string[];

for gem_name in gem_names {
	RecipeBuilder.newBuilder(machineName + "_exquisite" + gem_name, machineName, 240)
	.addItemInput(oreDict["gemFlawless"~gem_name].firstItem*2)
	.addItemOutput(oreDict["gemExquisite"~gem_name].firstItem*1)
	.addManaInput(10000)
	.addMekanismHeatInput(250, 750, posInfinity)
	.build();
}

