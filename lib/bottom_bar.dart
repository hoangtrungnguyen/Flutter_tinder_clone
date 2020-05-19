import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    var buttonWidth = 80.0;
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: btns.map((e) {
        e.buttonWidth = buttonWidth;
        return buildButton(e);
      }).toList(),
    );
  }

  Widget buildButton(BtnData btnData) {
    return Container(
      padding: EdgeInsets.all(4),
      width: btnData.buttonWidth,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: btnData.color.withOpacity(0.05),
            blurRadius: 5,
            spreadRadius: 5,
          ),
        ],
      ),
      child: FlatButton(
        shape: CircleBorder(),
        // color: Colors.white,
        onPressed: (){},
        child: Image.asset(
          btnData.iconAsset,
          color: btnData.color,
          // scale: 1.5,
        ),
      ),
    );
  }
}

List<BtnData> btns = [
  BtnData("assets/icons8-replay-60.png", Colors.orangeAccent),
  BtnData("assets/icons8-delete-60.png", Colors.red),
  BtnData("assets/icons8-star-60.png", Colors.blue),
  BtnData("assets/icons8-heart-60.png", Colors.green),
  BtnData("assets/icons8-lightning-bolt-60.png", Colors.purple),
];

class BtnData {
  String iconAsset;
  Color color;
  double buttonWidth = 50;

  BtnData(this.iconAsset, this.color, {this.buttonWidth});
}
