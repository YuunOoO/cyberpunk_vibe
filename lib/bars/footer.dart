import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatefulWidget {
  const Footer(
      {super.key,
      required this.width,
      required this.height,
      required this.animate});
  final double width;
  final double height;
  final bool animate;
  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  TextEditingController emailControler = TextEditingController();
  TextEditingController messageControler = TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  FocusNode messageFocusNode = FocusNode();
  bool clicked = false;
  bool clicked2 = false;
  @override
  void initState() {
    super.initState();
    emailControler.text = "Your E-mail";
    messageControler.text = "Message..";

    messageFocusNode.addListener(() {
      if (messageFocusNode.hasFocus) {
        if (!clicked) {
          clicked = true;
          if (messageControler.text == "Message..") {
            messageControler.text = "";
          }
        }
      } else {
        clicked = false;
        if (messageControler.text == "") {
          messageControler.text = "Message..";
        }
      }
    });

    emailFocusNode.addListener(() {
      if (emailFocusNode.hasFocus) {
        if (!clicked2) {
          clicked2 = true;
          if (emailControler.text == "Your E-mail") {
            emailControler.text = "";
          }
        }
      } else {
        clicked2 = false;
        if (emailControler.text == "") {
          emailControler.text = "Your E-mail";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      curve: Curves.linearToEaseOut,
      duration: const Duration(seconds: 2),
      padding: EdgeInsets.only(
          top: widget.animate ? widget.height : widget.height * .4),
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: const BoxDecoration(
            color: Color.fromARGB(218, 66, 153, 224),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.yellow,
              ],
            )),
        child: Column(children: [
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.only(left: widget.width * .02),
                  child: Row(children: [
                    const Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 14, 61, 100),
                      size: 32,
                    ),
                    SizedBox(
                      width: widget.width * .005,
                    ),
                    const Text(
                      "dariusz.lopian@gmail.com",
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(157, 0, 0, 0),
                          fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: widget.width * .26,
                      child: const Text(
                        "Do you want to cooperate with me?",
                        style: TextStyle(
                          color: Colors.yellow,
                          fontFamily: "Cyberpunk",
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    const Text(
                      "Contact me",
                      style: TextStyle(
                          fontSize: 32,
                          fontFamily: "Cyberpunk",
                          color: Colors.yellow),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: widget.height * .02, left: widget.width * .01),
                      width: widget.width * .2,
                      height: widget.height * .1,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.black,
                      ),
                      child: EditableText(
                        controller: emailControler,
                        focusNode: emailFocusNode,
                        mouseCursor: SystemMouseCursors.none,
                        maxLines: 1,
                        style: const TextStyle(
                          color: Color(0xffebecf0),
                          fontSize: 16,
                          decorationThickness: 0.001,
                        ),
                        cursorColor: Colors.white,
                        backgroundCursorColor: Colors.transparent,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: widget.height * .02, left: widget.width * .01),
                      width: widget.width * .2,
                      //   height: widget.height * .1,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.black,
                      ),
                      child: EditableText(
                        controller: messageControler,
                        focusNode: messageFocusNode,
                        mouseCursor: SystemMouseCursors.none,
                        maxLines: 6,
                        style: const TextStyle(
                          color: Color(0xffebecf0),
                          fontSize: 16,
                        ),
                        cursorColor: Colors.white,
                        backgroundCursorColor: Colors.transparent,
                      ),
                    ),
                    SizedBox(
                      width: widget.width * .21,
                      child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(top: widget.height * .015),
                        child: ElevatedButton(
                          onPressed: () {
                            if (emailControler.text.isEmpty ||
                                messageControler.text.isEmpty) {
                              return;
                            }
                            if ((emailControler.text == "Your E-mail") ||
                                (messageControler.text == "Message..")) {
                              return;
                            }
                            launchMailto();
                            messageControler.clear();
                            emailControler.clear();
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(Colors.yellow),
                            mouseCursor: MaterialStatePropertyAll<MouseCursor>(
                                SystemMouseCursors.none),
                          ),
                          child: const Text(
                            "Send",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          const Center(
            child: Text(
              "© Copyright 2022",
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 22,
                  fontStyle: FontStyle.italic),
            ),
          ),
        ]),
      ),
    );
  }

  launchMailto() async {
    final mailtoLink = Mailto(
      to: ['dariusz.lopian@gmail.com'],
      body: messageControler.text,
    );
    // ignore: deprecated_member_use
    await launch('$mailtoLink');
  }
}
