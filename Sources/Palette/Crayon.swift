//
//  Crayon.swift
//  Palette
//
//  Created by Kevin Launay on 20/10/2025.
//
import UIKit

public enum Crayon: String, Colorable {
    
    case absoluteZero = "#0048BA"
    case alloyOrange = "#C46210"
    case almond = "#EED9C4"
    case amethyst = "#64609A"
    case antiqueBrass = "#C88A65"
    case apricot = "#FDD5B1"
    case apricot2 = "#FDD9B5"
    case aquaPearl = "#5FBED7"
    case aquamarine = "#95E0E8"
    case asparagus = "#7BA05B"
    case atomicTangerine = "#FF9966"
    case aztecGold = "#C39953"
    case bdazzledBlue = "#2E5894"
    case banana = "#FED85D"
    case bananaMania = "#FBE7B2"
    case beaver = "#926F5B"
    case bigDipORuby = "#9C2542"
    case bittersweet = "#FE6F5E"
    case bittersweetShimmer = "#BF4F51"
    case black = "#000000"
    case blackCoralPearl = "#54626F"
    case blackShadows = "#BFAFB2"
    case blastOffBronze = "#A57164"
    case blizzardBlue = "#50BFE6"
    case blue = "#131391"
    case blue2 = "#1F75FE"
    case blue3 = "#C0E7F1"
    case blueI = "#4997D0"
    case blueII = "#4570E6"
    case blueIII = "#0066FF"
    case blueBell = "#9999CC"
    case blueGreen = "#0D98BA"
    case blueJeans = "#5DADEC"
    case blueViolet = "#7366BD"
    case blueGray = "#C8C8CD"
    case blueGreen2 = "#0095B7"
    case blueViolet2 = "#6456B7"
    case bluetiful = "#3C69E7"
    case blush = "#DB5079"
    case brickRed = "#C62D42"
    case brightYellow = "#FFAA1D"
    case brilliantRose = "#E667CE"
    case brown = "#AF593E"
    case brown2 = "#B4674D"
    case brownSugar = "#AF6E4D"
    case bubbleBath = "#FC80A5"
    case burnishedBrown = "#A17A74"
    case burntOrange = "#FF7F49"
    case burntSienna = "#E97451"
    case burntUmber = "#805533"
    case cadetBlue = "#A9B2C3"
    case canary = "#FFFF99"
    case caribbeanGreen = "#00CC99"
    case caribbeanGreenPearl = "#6ADA8E"
    case carmine = "#E62E6B"
    case carnationPink = "#FFA6C9"
    case carnationPink2 = "#FFAACC"
    case celestialBlue = "#7070CC"
    case cerise = "#DA3287"
    case cerulean = "#02A4D3"
    case cerulean2 = "#1DACD6"
    case ceruleanBlue = "#339ACC"
    case ceruleanFrost = "#6D9BC3"
    case charcoalGray = "#736A62"
    case cinnamonSatin = "#CD607E"
    case citrine = "#933709"
    case cobaltBlue = "#8C90C8"
    case colorChanger = "#FFE9D1"
    case copper = "#DA8A67"
    case copperPenny = "#AD6F69"
    case cornflower = "#93CCEA"
    case cosmicCobalt = "#2E2D88"
    case cottonCandy = "#FFB7D5"
    case culturedPearl = "#F5F5F5"
    case cyberGrape = "#58427C"
    case dandelion2 = "#FDDB6D"
    case darkVenetianRed = "#B33B24"
    case deepSpaceSparkle = "#4A646C"
    case denim = "#1560BD"
    case denimBlue = "#2243B6"
    case desertSand = "#EDC9AF"
    case eerieBlack = "#1B1B1B"
    case eggplant = "#614051"
    case electricLime = "#CCFF00"
    case emerald = "#14A989"
    case englishVermilion = "#CC474B"
    case fern = "#63B76C"
    case fieryRose = "#FF5470"
    case forestGreen = "#5FA777"
    case frostbite = "#E936A7"
    case fuchsia = "#C154C1"
    case fuzzyWuzzy = "#87421F"
    case glossyGrape = "#AB92B3"
    case goldI = "#92926E"
    case goldII = "#E6BE8A"
    case goldFusion = "#85754E"
    case goldenrod = "#FCD667"
    case graniteGray = "#676767"
    case grannySmithApple = "#9DE093"
    case grapeViolet = "#8359A3"
    case gray = "#8B8680"
    case gray2 = "#95918C"
    case green = "#3AA655"
    case green2 = "#1CAC78"
    case green3 = "#4F7948"
    case green4 = "#91E351"
    case greenLizard = "#A7F432"
    case greenSheen = "#6EAEA1"
    case greenYellow = "#F0E891"
    case greenBlue = "#2887C8"
    case greenYellow2 = "#F1E788"
    case heatWave = "#FF7A00"
    case hotMagenta = "#FF00CC"
    case illuminatingEmerald = "#319177"
    case inchworm = "#AFE313"
    case indianRed = "#B94E48"
    case indigo = "#4F69C6"
    case indigo2 = "#5D76CB"
    case jade = "#469A84"
    case jasper = "#D05340"
    case jazzberryJam = "#A50B5E"
    case jungleGreen = "#29AB87"
    case keyLimePearl = "#E8F48C"
    case lapisLazuli = "#436CB9"
    case laserLemon = "#FFFF66"
    case lavenderI = "#BF8FCC"
    case lavenderII = "#FBAED2"
    case lemonGlacier = "#FDFF00"
    case lemonYellow2 = "#FFFF9F"
    case lightBlue = "#8FD8D8"
    case lightChromeGreen = "#BEE64B"
    case lightVenetianRed = "#E6735C"
    case lilacLuster = "#AE98AA"
    case limeYellowGreen = "#C5E17A"
    case macaroniAndCheese = "#FFB97B"
    case madderLake = "#CC3336"
    case magenta = "#F653A6"
    case magenta2 = "#EB58DD"
    case magicMint = "#AAF0D1"
    case mahogany = "#CA3435"
    case maize = "#F2C649"
    case malachite = "#469496"
    case manatee = "#8D90A1"
    case mandarinPearl = "#F37A48"
    case mangoTango = "#E77200"
    case maroon = "#C32148"
    case mauvelous = "#F091A9"
    case maximumBlue = "#47ABCC"
    case maximumBlueGreen = "#30BFBF"
    case maximumBluePurple = "#ACACE6"
    case maximumGreen = "#5E8C31"
    case maximumGreenYellow = "#D9E650"
    case maximumPurple = "#733380"
    case maximumRed = "#D92121"
    case maximumRedPurple = "#A63A79"
    case maximumYellow = "#FAFA37"
    case maximumYellowRed = "#F2BA49"
    case mediumChromeGreen = "#6CA67C"
    case mediumRose = "#D96CBE"
    case mediumViolet = "#8F47B3"
    case melon = "#FEBAAD"
    case metallicSeaweed = "#0A7E8C"
    case metallicSunburst = "#9C7C38"
    case middleBlue = "#7ED4E6"
    case middleBlueGreen = "#8DD9CC"
    case middleBluePurple = "#8B72BE"
    case middleGreen = "#4D8C57"
    case middleGreenYellow = "#ACBF60"
    case middlePurple = "#D982B5"
    case middleRed = "#E58E73"
    case middleRedPurple = "#A55353"
    case middleYellow = "#FFEB00"
    case middleYellowRed = "#ECB176"
    case midnightBlue = "#00468C"
    case midnightPearl = "#702670"
    case mistyMoss = "#BBB477"
    case moonstone = "#3AA8C1"
    case mountainMeadow = "#1AB385"
    case mulberry = "#C8509B"
    case mysticMaroon = "#AD4379"
    case mysticPearl = "#D65282"
    case navyBlue = "#0066CC"
    case neonCarrot = "#FF9933"
    case oceanBluePearl = "#4F42B5"
    case oceanGreenPearl = "#48BF91"
    case oliveGreen = "#B5B35C"
    case onyx = "#353839"
    case orange = "#FF8833"
    case orange2 = "#FF7538"
    case orange3 = "#FF8071"
    case orangeSoda = "#FA5B3D"
    case orangeRed = "#FF5349"
    case orangeYellow = "#F8D568"
    case orchid = "#E29CD2"
    case orchidPearl = "#7B4259"
    case outerSpace = "#2D383A"
    case outrageousOrange = "#FF6037"
    case pacificBlue = "#009DC4"
    case peach = "#FFCBA4"
    case pearlyPurple = "#B768A2"
    case peridot = "#ABAD48"
    case periwinkle = "#C3CDE6"
    case permanentGeraniumLake = "#E12C2C"
    case pewterBlue = "#8BA8B7"
    case pigPink = "#FDD7E4"
    case pineGreen = "#01786F"
    case pink = "#FF8ABA"
    case pinkFlamingo = "#FC74FD"
    case pinkPearl = "#B07080"
    case pinkSherbert = "#F7A38E"
    case plum = "#8E3179"
    case plumpPurple = "#5946B2"
    case polishedPine = "#5DA493"
    case purpleHeart = "#652DC1"
    case purpleMountainsMajesty = "#D6AEDD"
    case purplePlum = "#9C51B6"
    case quickSilver = "#A6A6A6"
    case radicalRed = "#FF355E"
    case rawSienna = "#D27D46"
    case rawSiennaI = "#E6BC5C"
    case rawUmber = "#665233"
    case razzleDazzleRose = "#EE34D2"
    case razzmatazz = "#E30B5C"
    case razzmicBerry = "#8D4E85"
    case red = "#ED0A3F"
    case red2 = "#EE204D"
    case red3 = "#F4405D"
    case redSalsa = "#FD3A4A"
    case redViolet = "#C0448F"
    case redOrange2 = "#FF681F"
    case redViolet2 = "#BB3385"
    case robinsEggBlue = "#00CCCC"
    case roseDust = "#9E5E6F"
    case rosePearl = "#F03865"
    case roseQuartz = "#BD559C"
    case royalPurple = "#6B3FA0"
    case ruby = "#AA4069"
    case rustyRed = "#DA2C43"
    case salmon = "#FF91A4"
    case salmonPearl = "#F1444A"
    case sapphire = "#2D5DA1"
    case scarlet = "#FD0E35"
    case scarlet2 = "#FC2847"
    case screaminGreen = "#66FF66"
    case seaGreen = "#93DFB8"
    case sepia = "#9E5B40"
    case shadow = "#837050"
    case shadowBlue = "#778BA5"
    case shamrock = "#33CC99"
    case sheenGreen = "#8FD400"
    case shimmeringBlush = "#D98695"
    case shinyShamrock = "#5FA778"
    case shockingPink = "#FF6EFF"
    case silver = "#C9C0BB"
    case sizzlingRed = "#FF3855"
    case sizzlingSunset = "#FFDB00"
    case skyBlue = "#76D7EA"
    case slimyGreen = "#299617"
    case smokeyTopaz = "#832A0D"
    case sonicSilver = "#757575"
    case springFrost = "#87FF2A"
    case springGreen = "#ECEBBD"
    case steelBlue = "#0081AB"
    case steelTeal = "#5F8A8B"
    case sugarPlum = "#914E75"
    case sunglow = "#FFCC33"
    case sunnyPearl = "#F2F27A"
    case sunsetOrange = "#FE4C40"
    case sunsetPearl = "#F1CC79"
    case sweetBrown = "#A83731"
    case tan = "#D99A6C"
    case tartOrange = "#FB4D46"
    case tealBlue = "#008080"
    case thistle = "#EBB0D7"
    case tigersEye = "#B56917"
    case timberwolf = "#D9D6CF"
    case tropicalRainForest = "#00755E"
    case tumbleweed = "#DEA681"
    case turquoiseBlue = "#6CDAE7"
    case turquoisePearl = "#3BBCD0"
    case twilightLavender = "#8A496B"
    case ultramarineBlue = "#3F26BF"
    case vanDykeBrown = "#664228"
    case venetianRed = "#CC553D"
    case violet = "#963D7F"
    case violetI = "#732E6C"
    case violetPurple = "#926EAE"
    case violetRed = "#F75394"
    case violetBlue = "#766EC8"
    case violetRed2 = "#F7468A"
    case vividTangerine = "#FF9980"
    case vividViolet = "#803790"
    case white = "#FFFFFF"
    case wildBlueYonder = "#7A89B8"
    case wildStrawberry = "#FF3399"
    case wildWatermelon = "#FD5B78"
    case winterSky = "#FF007C"
    case wintergreenDream = "#56887D"
    case wisteria = "#C9A0DC"
    case yellow = "#FBE870"
    case yellow2 = "#FCE883"
    case yellow3 = "#FDFD07"
    case yellow4 = "#FFF7CC"
    case yellowGreen = "#C5E384"
    case yellowOrange = "#FFAE42"
    case yellowSunshine = "#FFF700"
    
    public var color: UIColor {
        get {
            return  ColorHelper.hexcolor(self.rawValue)
        }
    }
    
    public var hex: String {
        get {
            return self.rawValue
        }
    }
    
    // MARK: - Color Categories
    
    public static let blues: [Crayon] = [
        .absoluteZero, .bdazzledBlue, .blue, .blue2, .blue3, .blueI, .blueII, .blueIII,
        .blueBell, .blueGreen, .blueGreen2, .blueJeans, .blueViolet, .blueViolet2, .blueGray,
        .bluetiful, .blizzardBlue, .cadetBlue, .celestialBlue, .cerulean, .cerulean2,
        .ceruleanBlue, .ceruleanFrost, .cobaltBlue, .cornflower, .cosmicCobalt, .denim,
        .denimBlue, .deepSpaceSparkle, .indigo, .indigo2, .lapisLazuli, .maximumBlue,
        .maximumBluePurple, .middleBlue, .middleBluePurple, .midnightBlue, .navyBlue,
        .oceanBluePearl, .pacificBlue, .periwinkle, .pewterBlue, .sapphire, .shadowBlue,
        .skyBlue, .steelBlue, .steelTeal, .tealBlue, .turquoiseBlue, .ultramarineBlue,
        .violetBlue, .wildBlueYonder
    ]
    
    public static let yellows: [Crayon] = [
        .banana, .bananaMania, .brightYellow, .canary, .dandelion2, .goldenrod, .greenYellow,
        .greenYellow2, .keyLimePearl, .laserLemon, .lemonGlacier, .lemonYellow2, .maize,
        .maximumGreenYellow, .maximumYellow, .maximumYellowRed, .middleGreenYellow, .middleYellow,
        .middleYellowRed, .orangeYellow, .sizzlingSunset, .springGreen, .sunglow, .sunnyPearl,
        .sunsetPearl, .yellow, .yellow2, .yellow3, .yellow4, .yellowGreen, .yellowOrange,
        .yellowSunshine
    ]
    
    public static let greens: [Crayon] = [
        .asparagus, .caribbeanGreen, .caribbeanGreenPearl, .emerald, .fern, .forestGreen,
        .grannySmithApple, .green, .green2, .green3, .green4, .greenBlue, .greenLizard,
        .greenSheen, .illuminatingEmerald, .inchworm, .jade, .jungleGreen, .lightChromeGreen,
        .limeYellowGreen, .malachite, .maximumGreen, .mediumChromeGreen, .middleGreen,
        .mountainMeadow, .oceanGreenPearl, .oliveGreen, .pineGreen, .polishedPine, .screaminGreen,
        .seaGreen, .shamrock, .sheenGreen, .shinyShamrock, .slimyGreen, .springFrost,
        .tropicalRainForest, .wintergreenDream
    ]
    
    public static let reds: [Crayon] = [
        .bigDipORuby, .brickRed, .carmine, .darkVenetianRed, .englishVermilion, .fieryRose,
        .indianRed, .lightVenetianRed, .madderLake, .mahogany, .maroon, .maximumRed,
        .maximumRedPurple, .middleRed, .middleRedPurple, .permanentGeraniumLake, .radicalRed,
        .red, .red2, .red3, .redSalsa, .redViolet, .redViolet2, .ruby, .rustyRed,
        .salmonPearl, .scarlet, .scarlet2, .sizzlingRed, .sweetBrown, .tartOrange,
        .venetianRed, .violetRed, .violetRed2, .winterSky
    ]
    
    public static let oranges: [Crayon] = [
        .alloyOrange, .apricot, .apricot2, .atomicTangerine, .bittersweet, .bittersweetShimmer,
        .burntOrange, .burntSienna, .burntUmber, .copper, .heatWave, .jasper, .mandarinPearl,
        .mangoTango, .neonCarrot, .orange, .orange2, .orange3, .orangeRed, .orangeSoda,
        .outrageousOrange, .peach, .rawSienna, .rawSiennaI, .redOrange2, .sunsetOrange,
        .tigersEye, .vividTangerine
    ]
    
    public static let pinks: [Crayon] = [
        .blush, .brilliantRose, .bubbleBath, .carnationPink, .carnationPink2, .cerise,
        .cinnamonSatin, .cottonCandy, .frostbite, .hotMagenta, .lavenderII, .magenta,
        .magenta2, .mauvelous, .melon, .mysticPearl, .orchid, .pigPink, .pink, .pinkFlamingo,
        .pinkPearl, .pinkSherbert, .razzleDazzleRose, .razzmatazz, .roseDust, .rosePearl,
        .roseQuartz, .salmon, .shimmeringBlush, .shockingPink, .wildStrawberry, .wildWatermelon
    ]
    
    public static let purples: [Crayon] = [
        .amethyst, .cyberGrape, .eggplant, .fuchsia, .glossyGrape, .grapeViolet, .lavenderI,
        .lilacLuster, .maximumPurple, .mediumRose, .mediumViolet, .middlePurple, .midnightPearl,
        .mulberry, .mysticMaroon, .orchidPearl, .pearlyPurple, .plum, .plumpPurple,
        .purpleHeart, .purpleMountainsMajesty, .purplePlum, .razzmicBerry, .royalPurple,
        .sugarPlum, .thistle, .twilightLavender, .violet, .violetI, .violetPurple,
        .vividViolet, .wisteria
    ]
    
    public static let grays: [Crayon] = [
        .black, .blackCoralPearl, .blackShadows, .charcoalGray, .eerieBlack, .graniteGray,
        .gray, .gray2, .manatee, .outerSpace, .quickSilver, .shadow, .silver, .sonicSilver,
        .timberwolf, .white
    ]
    
    public static let browns: [Crayon] = [
        .almond, .antiqueBrass, .aztecGold, .beaver, .blastOffBronze, .brown, .brown2,
        .brownSugar, .burnishedBrown, .citrine, .copperPenny, .desertSand, .fuzzyWuzzy,
        .goldI, .goldII, .goldFusion, .mistyMoss, .peridot, .rawUmber, .sepia, .smokeyTopaz,
        .tan, .tumbleweed, .vanDykeBrown
    ]
    
    public static let aquas: [Crayon] = [
        .aquaPearl, .aquamarine, .magicMint, .maximumBlueGreen, .middleBlueGreen, .moonstone,
        .metallicSeaweed, .robinsEggBlue, .turquoisePearl
    ]
    
    public static let golds: [Crayon] = [
        .colorChanger, .culturedPearl, .metallicSunburst
    ]
    
    // Returns all crayon colors sorted by color category
    public static func sortedByColorCategory() -> [Crayon] {
        return blues + yellows + greens + reds + oranges + pinks + purples + grays + browns + aquas + golds
    }
}
