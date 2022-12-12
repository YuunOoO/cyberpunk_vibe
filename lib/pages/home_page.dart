import 'package:audioplayers/audioplayers.dart';
import 'package:dario_lopianov/paintings/main_card.dart';
import 'package:dario_lopianov/paintings/punk_icons.dart';
import 'package:dario_lopianov/paintings/top_appbar.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  //responsive ui
  late double container_width;
  late double screenWidth;
  late double screenHeight;

  //no need any mech bcs its only 4 icons
  bool load4Buttons = false;
  bool hover1 = false;
  bool hover2 = false;
  bool hover3 = false;
  bool hover4 = false;

  late RiveAnimationController _controller;
  final player = AudioPlayer();
  final scrollController = ScrollController();

  double verticalPixels = 0;

  @override
  void initState() {
    super.initState();
    _controller = SimpleAnimation('hands');

    scrollController.addListener(() {
      setState(() {
        verticalPixels = scrollController.position.pixels;

        print(verticalPixels);
        if (verticalPixels <= screenHeight * .4) {
          load4Buttons = false;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    container_width = MediaQuery.of(context).size.width * .5;
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width + 100, 100),
        child: Stack(
          children: <Widget>[
            Container(
              color: const Color.fromARGB(255, 255, 245, 105),
              height: 50,
              width: MediaQuery.of(context).size.width,
            ),
            Container(), // Required some widget in between to float AppBar
            Positioned(
              // To take AppBar Size only
              top: 50.0,
              left: -20.0,
              right: -30.0,
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: CustomPaint(
                  size: Size(container_width * 2 + 100, (100).toDouble()),
                  foregroundPainter: TopAppbar(),
                ),
              ),
            )
          ],
        ),
      ),
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Stack(
              children: [
                SizedBox(
                  height: screenHeight * .8,
                  child: Center(
                    child: RiveAnimation.asset(
                      'assets/pixel_art.riv',
                      animations: const ['head', 'hands'],
                      controllers: [_controller],
                      fit: BoxFit.contain,
                      stateMachines: const ['State Machine 1'],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: screenHeight * .05, left: screenWidth * .05),
                  child: const Text(
                    "Welcome in ",
                    style: TextStyle(
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(10.0, 10.0),
                            blurRadius: 5.0,
                            color: Color.fromARGB(255, 143, 173, 7),
                          ),
                          Shadow(
                            offset: Offset(10.0, 10.0),
                            blurRadius: 8.0,
                            color: Color.fromARGB(123, 14, 14, 112),
                          ),
                        ],
                        fontFamily: "Cyberpunk",
                        fontSize: 100,
                        color: Colors.yellow),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(
                      top: screenHeight * .55, right: screenWidth * .05),
                  child: const Text(
                    "Darius world",
                    style: TextStyle(
                        fontFamily: "Cyberpunk",
                        fontWeight: FontWeight.bold,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(10.0, 10.0),
                            blurRadius: 3.0,
                            color: Color.fromARGB(255, 4, 121, 167),
                          ),
                          Shadow(
                            offset: Offset(10.0, 10.0),
                            blurRadius: 8.0,
                            color: Color.fromARGB(123, 14, 14, 112),
                          ),
                        ],
                        fontSize: 90,
                        color: Colors.yellow),
                  ),
                ),
              ],
            ),
            AnimatedPadding(
              onEnd: () => setState(() {
                load4Buttons = true;
              }),
              curve: Curves.fastOutSlowIn,
              duration: const Duration(milliseconds: 500),
              padding: EdgeInsets.only(
                  left: verticalPixels >= screenHeight * .3 ? 0 : screenWidth),
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 60),
                    // color: Colors.black,
                    child: Column(
                      children: [
                        CustomPaint(
                          size: Size(
                              container_width * 2,
                              (container_width * 1.6 * 0.5833333333333334)
                                  .toDouble()),
                          painter: MainCard(
                              const Color.fromARGB(174, 241, 217, 4),
                              const Color.fromARGB(255, 255, 239, 9)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 50,
                        bottom: screenHeight * .007,
                        right: screenWidth * .007 - 1),
                    child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CustomPaint(
                          size: Size(
                              container_width * 1.8,
                              (container_width * 1.5 * 0.5833333333333334)
                                  .toDouble()),
                          painter: MainCard(const Color.fromARGB(218, 0, 0, 0),
                              const Color.fromARGB(220, 37, 37, 41)),
                        ),
                        AnimatedOpacity(
                          duration: const Duration(milliseconds: 400),
                          opacity: load4Buttons ? 1 : 0,
                          child: Container(
                            margin: EdgeInsets.only(
                                right: load4Buttons ? screenWidth * .05 : 0,
                                bottom: screenHeight * .05),
                            child: Row(
                              children: [
                                const Spacer(),
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        await player
                                            .play('assets/sounds/click.mp3');
                                      },
                                      onHover: (value) async {
                                        if (value) {
                                          await player
                                              .play('assets/sounds/click.mp3');
                                        }
                                        setState(() {
                                          hover1 = value;
                                        });
                                      },
                                      child: CustomPaint(
                                        size: Size(
                                            screenWidth / 10, screenWidth / 10),
                                        painter: PunkIcons(hover1),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(Icons.access_alarm,
                                              size: screenWidth / 20,
                                              color: Colors.yellow),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: screenWidth * .02,
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        await player
                                            .play('assets/sounds/click.mp3');
                                      },
                                      onHover: (value) async {
                                        if (value) {
                                          await player
                                              .play('assets/sounds/click.mp3');
                                        }
                                        setState(() {
                                          hover2 = value;
                                        });
                                      },
                                      child: CustomPaint(
                                        size: Size(
                                            screenWidth / 10, screenWidth / 10),
                                        painter: PunkIcons(hover2),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(Icons.abc_outlined,
                                              size: screenWidth / 20,
                                              color: Colors.yellow),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: screenWidth * .02,
                                ),
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        await player
                                            .play('assets/sounds/click.mp3');
                                      },
                                      onHover: (value) async {
                                        if (value) {
                                          await player
                                              .play('assets/sounds/click.mp3');
                                        }
                                        setState(() {
                                          hover3 = value;
                                        });
                                      },
                                      child: CustomPaint(
                                        size: Size(
                                            screenWidth / 10, screenWidth / 10),
                                        painter: PunkIcons(hover3),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(Icons.open_in_new,
                                              size: screenWidth / 20,
                                              color: Colors.yellow),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: screenWidth * .02,
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        await player
                                            .play('assets/sounds/click.mp3');
                                      },
                                      onHover: (value) async {
                                        if (value) {
                                          await player
                                              .play('assets/sounds/click.mp3');
                                        }
                                        setState(() {
                                          hover4 = value;
                                        });
                                      },
                                      child: CustomPaint(
                                        size: Size(
                                            screenWidth / 10, screenWidth / 10),
                                        painter: PunkIcons(hover4),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(Icons.lock,
                                              size: screenWidth / 20,
                                              color: Colors.yellow),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1000,
            )
          ],
        ),
      ),
    );
  }
}
