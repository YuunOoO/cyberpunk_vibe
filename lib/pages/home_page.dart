import 'package:dario_lopianov/paintings/main_card.dart';
import 'package:dario_lopianov/paintings/punk_icons.dart';
import 'package:dario_lopianov/paintings/top_appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  late double container_width;
  late double screenWidth;
  late double screenHeight;
  bool hover1 = false;
  bool hover2 = false;
  bool hover3 = false;
  bool hover4 = false;

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
        child: Column(
          children: [
            Stack(
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
                        painter:
                            MainCard(const Color.fromARGB(207, 142, 182, 134)),
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
                        painter:
                            MainCard(const Color.fromARGB(207, 74, 114, 66)),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: screenWidth * .05,
                            bottom: screenHeight * .05),
                        child: Row(
                          children: [
                            const Spacer(),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  onHover: (value) {
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
                                  onTap: () {},
                                  onHover: (value) {
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
                                  onTap: () {},
                                  onHover: (value) {
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
                                  onTap: () {},
                                  onHover: (value) {
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
                    ],
                  ),
                ),
              ],
            ),
            CustomPaint(
              size: Size(container_width * 2,
                  (container_width * 1.6 * 0.5833333333333334).toDouble()),
              painter: MainCard(const Color.fromARGB(207, 142, 182, 134)),
            ),
          ],
        ),
      ),
    );
  }
}
