import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Warning {
  showAlert(BuildContext context, AudioPlayer player) {
    double getIconSize() {
      late double z;
      z = sqrt(pow(MediaQuery.of(context).size.width, 2) +
              pow(MediaQuery.of(context).size.height, 2)) /
          15;
      return z;
    }

    double getSizedBoxSize() {
      return sqrt(pow(MediaQuery.of(context).size.width, 2) +
              pow(MediaQuery.of(context).size.height, 2)) *
          .04;
    }

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.transparent,
            content: Center(
              child: Transform.scale(
                scale: 0.7,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.yellow, width: 5)),
                  width: MediaQuery.of(context).size.width < 800
                      ? MediaQuery.of(context).size.width * .8
                      : MediaQuery.of(context).size.width * .6,
                  height: MediaQuery.of(context).size.height < 600
                      ? MediaQuery.of(context).size.height * .75
                      : MediaQuery.of(context).size.height * .60,
                  child: ListView(children: [
                    const AutoSizeText(
                      'Warning!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Cyberpunk",
                          fontSize: 100,
                          color: Colors.yellow),
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: getSizedBoxSize(),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * .03,
                        right: MediaQuery.of(context).size.width * .02,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.warning_amber,
                            color: const Color.fromARGB(181, 255, 235, 59),
                            size: getIconSize(),
                          ),

                          SizedBox(
                            width: MediaQuery.of(context).size.width * .05,
                          ),
                          // const Spacer(),
                          const Expanded(
                            child: AutoSizeText(
                              'The site may contain flashing lights, images, and other luminous stimulations which may induce epileptic seizures in certain individuals',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 34,
                                  fontFamily: "Cyberpunk",
                                  color: Colors.white),
                              maxLines: 4,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: getSizedBoxSize()),
                    Container(
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * .05),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.all(15)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.yellow),
                              shape:
                                  MaterialStateProperty.all<RoundedRectangleBorder>(
                                      const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.zero,
                                          side: BorderSide(
                                              color: Colors.yellow,
                                              width: 3)))),
                          onPressed: () {
                            player.play('assets/sounds/click.mp3');
                            Navigator.pop(
                              context,
                            );
                          },
                          child: const Text("Visit",
                              style: TextStyle(
                                  fontSize: 30, fontFamily: "Cyberpunk"))),
                    )
                  ]),
                ),
              ),
            ),
          );
        });
  }
}
