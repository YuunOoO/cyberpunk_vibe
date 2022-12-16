import 'package:audioplayers/audioplayers.dart';
import 'package:dario_lopianov/bars/footer.dart';
import 'package:dario_lopianov/buttons/appbar_button.dart';
import 'package:dario_lopianov/paintings/card_lines.dart';
import 'package:dario_lopianov/paintings/main_card.dart';
import 'package:dario_lopianov/paintings/punk_icons.dart';
import 'package:dario_lopianov/paintings/top_appbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glitcheffect/glitcheffect.dart';
import 'package:rive/rive.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  GlobalKey keyAbout = GlobalKey(); // declare a global key
  late Uri url;
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

  //4 more buttons for appbar
  bool appbarButton1 = false;
  bool appbarButton2 = false;
  bool appbarButton3 = false;
  bool appbarButton4 = false;

  late RiveAnimationController _controller;
  final player = AudioPlayer();
  late ScrollController scrollController;

  double verticalPixels = 0;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
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
          children: [
            Stack(
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
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Row(
                children: [
                  InkWell(
                    mouseCursor: SystemMouseCursors.none,
                    onTap: () {
                      player.play("assets/sounds/error.mp3");
                      scrollController.animateTo(screenHeight * .1,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    onHover: (value) async {
                      if (value) {
                        player.play("assets/sounds/error.mp3");
                      }
                      for (int i = 0; i < 3; i++) {
                        setState(() {
                          appbarButton1 = !appbarButton1;
                        });
                        await Future.delayed(const Duration(milliseconds: 60));
                      }
                    },
                    child: CustomPaint(
                        size: Size(screenWidth, screenWidth),
                        painter: AppBarButton(appbarButton1),
                        child: Container(
                          height: 45,
                          width: screenWidth * .1,
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Center(
                              child: Text(
                                "Home",
                                style: TextStyle(
                                    color: appbarButton1
                                        ? Colors.white
                                        : Colors.yellow,
                                    fontFamily: "Cyberpunk",
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )),
                  ),
                  const Spacer(),
                  InkWell(
                    mouseCursor: SystemMouseCursors.none,
                    onTap: () {
                      player.play("assets/sounds/error.mp3");
                      RenderBox box = keyAbout.currentContext!
                          .findRenderObject() as RenderBox;
                      Offset position = box.localToGlobal(Offset.zero);
                      double y = position.dy;
                      scrollController.animateTo(y + verticalPixels,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    onHover: (value) async {
                      if (value) {
                        player.play("assets/sounds/error.mp3");
                      }
                      for (int i = 0; i < 3; i++) {
                        setState(() {
                          appbarButton2 = !appbarButton2;
                        });
                        await Future.delayed(const Duration(milliseconds: 60));
                      }
                    },
                    child: CustomPaint(
                        size: Size(screenWidth, screenWidth),
                        painter: AppBarButton(appbarButton2),
                        child: Container(
                          height: 45,
                          width: screenWidth * .1,
                          alignment: Alignment.center,
                          child: const Padding(
                            padding: EdgeInsets.only(bottom: 15),
                            child: Center(
                              child: Text(
                                "About",
                                style: TextStyle(
                                    color: Colors.yellow,
                                    fontFamily: "Cyberpunk",
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )),
                  ),
                  InkWell(
                    mouseCursor: SystemMouseCursors.none,
                    onTap: () {
                      player.play("assets/sounds/error.mp3");
                    },
                    onHover: (value) async {
                      if (value) {
                        player.play("assets/sounds/error.mp3");
                      }
                      for (int i = 0; i < 3; i++) {
                        setState(() {
                          appbarButton3 = !appbarButton3;
                        });
                        await Future.delayed(const Duration(milliseconds: 60));
                      }
                    },
                    child: CustomPaint(
                        size: Size(screenWidth, screenWidth),
                        painter: AppBarButton(appbarButton3),
                        child: Container(
                          height: 45,
                          width: screenWidth * .11,
                          alignment: Alignment.center,
                          child: const Padding(
                            padding: EdgeInsets.only(bottom: 15),
                            child: Center(
                              child: Text(
                                "Skills",
                                style: TextStyle(
                                    color: Colors.yellow,
                                    fontFamily: "Cyberpunk",
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )),
                  ),
                  InkWell(
                    mouseCursor: SystemMouseCursors.none,
                    onTap: () {
                      player.play("assets/sounds/error.mp3");
                      scrollController.animateTo(
                          scrollController.position.maxScrollExtent,
                          duration: const Duration(milliseconds: 800),
                          curve: Curves.easeIn);
                    },
                    onHover: (value) async {
                      if (value) {
                        //    player.play("assets/sounds/error.mp3");
                      }
                      for (int i = 0; i < 3; i++) {
                        setState(() {
                          appbarButton4 = !appbarButton4;
                        });
                        await Future.delayed(const Duration(milliseconds: 60));
                      }
                    },
                    child: CustomPaint(
                        size: Size(screenWidth, screenWidth),
                        painter: AppBarButton(appbarButton4),
                        child: Container(
                          height: 45,
                          width: screenWidth * .13,
                          alignment: Alignment.center,
                          child: const Padding(
                            padding: EdgeInsets.only(bottom: 15),
                            child: Center(
                              child: Text(
                                "Contatct",
                                style: TextStyle(
                                    color: Colors.yellow,
                                    fontFamily: "Cyberpunk",
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: WebSmoothScroll(
        scrollOffset: 100,
        controller: scrollController,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
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
                    width: screenWidth * .5,
                    margin: EdgeInsets.only(
                        top: screenHeight * .05, left: screenWidth * .05),
                    child: const Text(
                      "Welcome in ",
                      maxLines: 1,
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
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(
                        top: screenHeight * .55, right: screenWidth * .05),
                    child: const GlitchEffect(
                      colors: [Colors.yellow, Colors.blue, Colors.white],
                      duration: Duration(milliseconds: 400),
                      child: Text(
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
                    left:
                        verticalPixels >= screenHeight * .3 ? 0 : screenWidth),
                child: Opacity(
                  opacity: 0.85,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      Container(
                        key: keyAbout,
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
                              painter: MainCard(
                                  const Color.fromARGB(218, 0, 0, 0),
                                  const Color.fromARGB(220, 37, 37, 41)),
                            ),
                            CustomPaint(
                              size: Size(
                                  container_width * 1.8,
                                  (container_width * 1.5 * 0.5833333333333334)
                                      .toDouble()),
                              painter: MainCard(
                                  const Color.fromARGB(218, 0, 0, 0),
                                  const Color.fromARGB(220, 37, 37, 41)),
                            ),
                            CustomPaint(
                                size: Size(
                                    container_width * 2,
                                    (container_width * 1.6 * 0.5833333333333334)
                                        .toDouble()),
                                painter: CardLines()),
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
                                          mouseCursor: SystemMouseCursors.none,
                                          onTap: () async {
                                            await player.play(
                                                'assets/sounds/click.mp3');
                                          },
                                          onHover: (value) async {
                                            if (value) {
                                              await player.play(
                                                  'assets/sounds/click.mp3');
                                            }
                                            setState(() {
                                              hover1 = value;
                                            });
                                          },
                                          child: CustomPaint(
                                            size: Size(screenWidth / 10,
                                                screenWidth / 10),
                                            painter: PunkIcons(hover1),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: IconButton(
                                                  mouseCursor:
                                                      SystemMouseCursors.none,
                                                  iconSize: screenWidth / 20,
                                                  icon: const FaIcon(
                                                      FontAwesomeIcons
                                                          .facebookF),
                                                  color: Colors.yellow,
                                                  onPressed: () async {
                                                    url = Uri.parse(
                                                        'https://www.facebook.com/profile.php?id=100004872524390');
                                                    if (await canLaunchUrl(
                                                        url)) {
                                                      await launchUrl(url);
                                                    }
                                                  }),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: screenWidth * .02,
                                        ),
                                        InkWell(
                                          mouseCursor: SystemMouseCursors.none,
                                          onTap: () async {
                                            await player.play(
                                                'assets/sounds/click.mp3');
                                          },
                                          onHover: (value) async {
                                            if (value) {
                                              await player.play(
                                                  'assets/sounds/click.mp3');
                                            }
                                            setState(() {
                                              hover2 = value;
                                            });
                                          },
                                          child: CustomPaint(
                                            size: Size(screenWidth / 10,
                                                screenWidth / 10),
                                            painter: PunkIcons(hover2),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: IconButton(
                                                  mouseCursor:
                                                      SystemMouseCursors.none,
                                                  iconSize: screenWidth / 20,
                                                  icon: const FaIcon(
                                                      FontAwesomeIcons
                                                          .instagram),
                                                  color: Colors.yellow,
                                                  onPressed: () async {
                                                    url = Uri.parse(
                                                        'https://www.instagram.com/dario.lopianov/');
                                                    if (await canLaunchUrl(
                                                        url)) {
                                                      await launchUrl(url);
                                                    }
                                                  }),
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
                                          mouseCursor: SystemMouseCursors.none,
                                          onTap: () async {
                                            await player.play(
                                                'assets/sounds/click.mp3');
                                          },
                                          onHover: (value) async {
                                            if (value) {
                                              await player.play(
                                                  'assets/sounds/click.mp3');
                                            }
                                            setState(() {
                                              hover3 = value;
                                            });
                                          },
                                          child: CustomPaint(
                                            size: Size(screenWidth / 10,
                                                screenWidth / 10),
                                            painter: PunkIcons(hover3),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: IconButton(
                                                  mouseCursor:
                                                      SystemMouseCursors.none,
                                                  iconSize: screenWidth / 20,
                                                  icon: const FaIcon(
                                                      FontAwesomeIcons
                                                          .linkedin),
                                                  color: Colors.yellow,
                                                  onPressed: () async {
                                                    url = Uri.parse(
                                                        'https://www.linkedin.com/in/dario-lopianov-8746a3215/');
                                                    if (await canLaunchUrl(
                                                        url)) {
                                                      await launchUrl(url);
                                                    }
                                                  }),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: screenWidth * .02,
                                        ),
                                        InkWell(
                                          mouseCursor: SystemMouseCursors.none,
                                          onTap: () async {
                                            await player.play(
                                                'assets/sounds/click.mp3');
                                          },
                                          onHover: (value) async {
                                            if (value) {
                                              await player.play(
                                                  'assets/sounds/click.mp3');
                                            }
                                            setState(() {
                                              hover4 = value;
                                            });
                                          },
                                          child: CustomPaint(
                                            size: Size(screenWidth / 10,
                                                screenWidth / 10),
                                            painter: PunkIcons(hover4),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: IconButton(
                                                  mouseCursor:
                                                      SystemMouseCursors.none,
                                                  iconSize: screenWidth / 20,
                                                  icon: const FaIcon(
                                                      FontAwesomeIcons.github),
                                                  color: Colors.yellow,
                                                  onPressed: () async {
                                                    url = Uri.parse(
                                                        'https://github.com/YuunOoO');
                                                    if (await canLaunchUrl(
                                                        url)) {
                                                      await launchUrl(url);
                                                    }
                                                  }),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * .2,
              ),
              Stack(
                children: [
                  Opacity(
                    opacity: 0.8,
                    child: Image.asset(
                      "mainGlitch.gif",
                      color: Colors.white,
                      colorBlendMode: BlendMode.modulate,
                      scale: 0.4,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(
                        top: screenHeight * .3, right: screenWidth * .1),
                    child: const GlitchEffect(
                        duration: Duration(seconds: 1, milliseconds: 600),
                        colors: [Colors.yellow, Colors.blue, Colors.white],
                        child: Opacity(
                          opacity: 0.8,
                          child: Text(
                            "Error",
                            style: TextStyle(
                                fontFamily: "Cyberpunk",
                                fontSize: 120,
                                color: Colors.white),
                          ),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * .2,
              ),
              Opacity(
                opacity: 0.8,
                child: Image.asset(
                  "AiGlitch.jpg",
                  color: const Color.fromARGB(255, 228, 222, 222),
                  colorBlendMode: BlendMode.modulate,
                  scale: 0.4,
                ),
              ),
              Container(
                height: 1000,
              ),
              //TODO
              Footer(
                width: screenWidth,
                height: screenHeight * .4,
                animate: verticalPixels >= 5000 ? false : true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
