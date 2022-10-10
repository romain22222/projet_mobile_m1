import 'package:flutter/material.dart';
import 'package:projet_mobile_m1/pages/choicePage.dart';
import 'package:projet_mobile_m1/src/models/Player.dart';
import 'package:projet_mobile_m1/src/models/events/EventController.dart';
import 'package:projet_mobile_m1/widgets/events/choice.dart';
import 'package:projet_mobile_m1/widgets/card/card.dart';

class EventPage extends StatefulWidget {
  Player player;
  EventPage(this.player, {Key? key}) : super(key: key);
  @override
  _EventPageState createState() => _EventPageState(player);
}

class _EventPageState extends State<EventPage> {
  Player player;
  _EventPageState(this.player);
  final dynamic events = EventController.eventValuesFrom([
    "tent_forest"
  ]); // TODO : au lieu de piocher les events dans le controller, les prendre dans le player quand il y en aura plus
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(events[0].background.imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildEventCard(
                Colors.black,
                events[0].zone,
                events[0].description,
                events[0].foreground.imagePath,
                width,
                height,
                ['haut', 'bas', 'gauche', 'droite']),
          ],
        ),
      ),
    );
  }
}

class BuildChoiceEventWidget extends StatefulWidget {
  _EventPageState state;
  BuildChoiceEventWidget(this.state, {Key? key}) : super(key: key);

  @override
  State<BuildChoiceEventWidget> createState() => _ChoiceEventWidget(state);
}

class _ChoiceEventWidget extends State<BuildChoiceEventWidget> {
  _EventPageState state;
  _ChoiceEventWidget(this.state);

  String selectedEvent = "";
  @override
  Widget build(BuildContext context) {
    void _toggleChoice(index, eventList) {
      setState(() {
        eventList.forEach((e) => e.update('touched', (value) => false));
        selectedEvent = eventList[index]['name'];
      });
    }

    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () => {},
            child: Text('zeiei'),
          ),
        ],
      ),
    );
  }
}
