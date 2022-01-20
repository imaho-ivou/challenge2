import 'hist.dart';

class MainBrain {
  List<Hist> histoire = [
    Hist(
        "Vous venez de crevez un pneu à St André. Vous n'avez pas de téléphone vous décidez de faire du stop. Une ford fiesta rouge s'arrête et le conducteur vous demande si vous voulez qu'il vous dépanne.",
        "Vous lui demandez s'il n'est pas un meurtrier avant !",
        "Vous lui remerciez et vous montez dans la voiture"),
    Hist(
        "Il acquiesce de la tête sans faire attention à la question.",
        "Attends, mais je sais comment changer un pneu voyons !",
        "Au moins il est honnête. Vous montez ! "),
    Hist(
        "Lorsqu'il commence à conduire, il vous demande d'ouvrir la boite à gant. À l’intérieur, vous trouverez un couteau ensanglanté, deux doigts coupés et un CD de T-Matt.",
        " C'est lui ou moi, je prends le couteau et je le poignarde.",
        "J'adore T-Matt, je lui donne le CD."),
    Hist(" Woaw ! Quelle évasion ! ", " Recommencer", ''),
    Hist(
        "En traversant la route du littoral, vous réfléchissez à la sagesse douteuse de poignarder quelqu’un pendant qu’il conduit une voiture dans laquelle vous êtes.",
        "Recommencer",
        ""),
    Hist(
        "Vous vous faites un bon dalon et vous chantez le dernier son de T-matt ensemble. Il vous dépose à Cambaie et il vous demande si vous connaissez un bon endroit pour jeter un corps.",
        "Recommencer",
        "")
  ];

  int compteur = 0;
}
