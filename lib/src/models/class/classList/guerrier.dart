import 'package:projet_mobile_m1/src/models/cards/cardList/champions/guerrier_champion.dart';

import '../../../utils/IllustrationType.dart';
import '../../cards/IChampion.dart';
import '../../class/IClass.dart';
import '../../events/IEvent.dart';
import '../../events/eventList/unknown_event.dart';

class Guerrier implements IClass {
  @override
  IllustrationType classIcon = IllustrationType("guerrier");

  @override
  IChampion startingChampion = GuerrierChampion();

  @override
  IEvent startingEvent = UnknownEvent();

  @override
  IllustrationType classSelectionDisplay =
      IllustrationType("warrior/warrior.png");

  @override
  String displayDescription =
      "Le guerrier est un personnage qui se bat au corps à corps";

  @override
  String displayName = "Guerrier";
}
