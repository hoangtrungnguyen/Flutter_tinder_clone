import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  Content({Key key}) : super(key: key);

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width - 16,
      height: MediaQuery.of(context).size.height / 4 * 3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/avatar.jpg"),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Align(
        alignment: Alignment(0, 1),
        child: ListTile(
          title: Text(
            "Thuỷ Tiên 24",
            style: TextStyle(
              color: Colors.white,
              fontSize: 33,
            ),
          ),
          subtitle: DefaultTextStyle(
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Giáo viên tiểu học"),
                    Text("Trường đại học Sư Phạm Hà Nội"),
                    Text("2 kilometers away")
                  ],
                ),
                Spacer(),
                Image.asset("assets/icons8-information-60.png", color: Colors.black87, scale: 2.5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
