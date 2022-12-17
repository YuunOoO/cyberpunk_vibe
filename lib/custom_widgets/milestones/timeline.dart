import 'package:dario_lopianov/custom_widgets/milestones/arrows.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

Widget milestones(double screenHeight, ScrollController scrollController,
    GlobalKey skills, GlobalKey skills2, GlobalKey skills3, double y) {
  Arrows arrows = Arrows(scrollController, y);

  return Timeline.tileBuilder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    padding: const EdgeInsets.symmetric(vertical: 20.0),
    builder: TimelineTileBuilder.connected(
      contentsBuilder: (_, index) => Container(
        margin: const EdgeInsets.only(left: 10.0),
        child: Row(
          children: [
            const Text(
              "Progress ",
              style: TextStyle(
                  color: Colors.yellow, fontSize: 36, fontFamily: "Cyberpunk"),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * .025),
              child: Text(
                "${index + 1}/2",
                style: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 18,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
      oppositeContentsBuilder: (context, index) {
        if (index == 0) {
          return arrows.arrowDown(skills2);
        } else if (index == 1) {
          //TODO
          return Padding(
            padding: const EdgeInsets.only(left: 150),
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                arrows.arrowUp(skills),
                arrows.arrowDown(skills3),
              ],
            ),
          );
        } else {
          return arrows.arrowUp(skills2);
        }
      },
      indicatorBuilder: (_, index) {
        return const DotIndicator(
          size: 30,
          //  borderWidth: 7,
          color: Color.fromARGB(216, 212, 194, 33),
          //  backgroundColor: Colors.transparent,
        );
      },
      itemExtentBuilder: (_, __) => screenHeight * 1.05,
      itemCount: 3,
      connectorBuilder: (_, index, __) {
        return const Padding(
          padding: EdgeInsets.all(8.0),
          child: DashedLineConnector(
              //dash: 500,
              gapColor: Colors.transparent,
              //   space: 0.4,
              thickness: 9,
              color: Color.fromARGB(146, 173, 4, 55)),
        );
      },
    ),
  );
}
