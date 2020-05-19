import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './content.dart';
import './bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: LandingPage());
  }
}

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<bool> _selections = [false, false];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final iconWidth = screenWidth / 12;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Stack(
          children: <Widget>[
            Container(
              width: screenWidth / 4,
              height: iconWidth + 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Color.fromRGBO(234, 239, 242, 1),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: screenWidth / 8,
                height: iconWidth + 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.05),
                      blurRadius: 5,
                      spreadRadius: 5,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Image.asset(
                  "assets/icons8-tinder-32.png",
                ),
              ),
            ),
          ],
        ),
        leading: Image.asset(
          "assets/icons8-user-60.png",
          width: iconWidth,
        ),
        actions: <Widget>[
          Image.asset(
            "assets/icons8-chat-60.png",
            width: iconWidth,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16), child: Content()),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 16), child: BottomBar()),
        ],
      ),
    );
  }
}
