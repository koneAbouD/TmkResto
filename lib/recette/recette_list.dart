import 'package:flutter_application_1/recette/recette.dart';

class RecetteList {
  static final List<Recette> recettes = [
    Recette(
        title: "Pizza facile",
        user: "Par David Silvera",
        imageUrl: "images/pizza.png",
        description:
            "Faire cuire dans une poêle les lardons et les champignons.\n\nDans un bol, verser la boîte de concentré de tomate, y ajouter un demi verre d'eau, ensuite mettre un carré de sucre (pour enlever l'acidité de la tomate) une pincée de sel, de poivre, et une pincée d'herbe de Provence.\n\nDérouler la pâte à pizza sur le lèche frite de votre four, piquer-le.\n\nAvec une cuillère à soupe, étaler délicatement la sauce tomate, ensuite y ajouter les lardons et les champignons bien dorer. Parsemer de fromage râpée.\n\nMettre au four à 220°, thermostat 7-8, pendant 20 min (ou lorsque le dessus de la pizza est doré).Faire cuire dans une poêle les lardons et les champignons.\n\nDans un bol, verser la boîte de concentré de tomate, y ajouter un demi verre d'eau, ensuite mettre un carré de sucre (pour enlever l'acidité de la tomate) une pincée de sel, de poivre, et une pincée d'herbe de Provence.\n\nDérouler la pâte à pizza sur le lèche frite de votre four, piquer-le.\n\nAvec une cuillère à soupe, étaler délicatement la sauce tomate, ensuite y ajouter les lardons et les champignons bien dorer. Parsemer de fromage râpée.\n\nMettre au four à 220°, thermostat 7-8, pendant 20 min (ou lorsque le dessus de la pizza est doré).",
        isFavorite: false,
        favoriteCount: 50),
    Recette(
        title: "Burger maison",
        user: "Par Cyril Lignac",
        imageUrl: "images/berger.png",
        description:
            "Pelez l’oignon rouge puis émincez-le. Rincez et essorez la roquette. Rincez la tomate puis coupez-la en rondelles.\nFaites chauffer l’huile dans une poêle et faites cuire les steaks 3 à 4 min de chaque côté, selon votre goût. En fin de cuisson, salez, poivrez, disposez 1 tranche de cheddar sur chaque steak et laissez-la légèrement fondre.\nFendez les petits pains en 2 et toastez-les légèrement. Montez les burgers : tartinez chaque moitié de pain de sauce puis garnissez avec la viande, les rondelles de tomate, l’oignon ciselé et les feuilles de roquette. Refermez les burgers et servez aussitôt.",
        isFavorite: true,
        favoriteCount: 33),
    Recette(
        title: "Crêpe comme chez nous",
        user: "Par Xouxou",
        imageUrl: "images/crepe.png",
        description:
            "Versez la farine dans un grand saladier, creusez un puits. Cassez les œufs, délayez petit à petit avec le lait sans former de grumeaux. Ajoutez l’huile et le sel et mélangez bien.\nLaissez reposer la pâte 1 h sous un torchon propre à température ambiante.\nHuilez légèrement une poêle à crêpes, versez une demi-louche de pâte dans la poêle bien chaude, laissez cuire jusqu’à ce que les bords se détachent (30 sec environ). Retournez la crêpe, faites cuire l’autre face et glissez-la sur une assiette.\nProcédez ainsi pour toutes les crêpes.",
        isFavorite: true,
        favoriteCount: 13),
    Recette(
        title: "Cake nature sucré",
        user: "Par Huguette",
        imageUrl: "images/cake.png",
        description:
            "Travaillez le beurre avec le sucre en poudre.\nIncorporez les œufs, 1 par 1. Ajoutez la farine.\nVersez dans un moule à empreinte rectangulaire en silicone. Faites cuire 45 à 50 min dans le four, préchauffé à 180°C (th. 6).\nDémoulez et laissez refroidir avant de déguster.",
        isFavorite: true,
        favoriteCount: 18),
    Recette(
        title: "Donuts avec appareil à donuts",
        user: "Par Heud",
        imageUrl: "images/donuts.png",
        description:
            "Délayez la levure dans 2 cuil. à soupe de lait tiède. Réservez 15 min. Fouettez les œufs avec les sucres. Mélangez avec la farine et la levure. Incorporez le lait.\nLaissez la pâte reposer 1 h.\nFaites chauffer la machine et huilez les alvéoles avec un pinceau de cuisine. Versez des cuillerées de pâte dans les alvéoles de la machine chaude, en évitant de mettre de la pâte au centre. Faites cuire 2 min environ.\nFaites fondre le chocolat. Détendez-le avec un peu d'eau. Trempez-les beignets dans le chocolat. Parsemez de vermicelles. Laissez refroidir avant de déguster.",
        isFavorite: true,
        favoriteCount: 109),
    Recette(
        title: "Oreilles d'aman",
        user: "Par Esther",
        imageUrl: "images/oreille_aman.png",
        description:
            "Dans un saladier, battre l'œuf avec le sucre et le sucre vanillé.\nAjouter la farine et la levure et incorporer à la spatule.\nAjouter les morceaux de beurre et sabler avec les doigts comme quand on égraine la semoule.\nMalaxer ensuite avec les mains pour obtenir une boule.\nLaisser reposer 1h au frigo.",
        isFavorite: true,
        favoriteCount: 55)
  ];
}
