import 'package:flutter/material.dart';

class wisdom extends StatefulWidget {
  const wisdom({Key? key}) : super(key: key);

  @override
  _wisdomState createState() => _wisdomState();
}

class _wisdomState extends State<wisdom> {
  int _index = 0;
  List Quotes = [
    "All our dreams can come true, if we have the courage to pursue them.",
    "Hold the vision, trust the process.",
    "The same boiling water that softens the potato hardens the egg. It’s what you’re made of. Not the circumstances",
    "If we have the attitude that it’s going to be a great day it usually is.",
    "You can either experience the pain of discipline or the pain of regret. The choice is yours.",
    "Impossible is just an opinion.",
    "Your passion is waiting for your courage to catch up.",
    "Magic is believing in yourself. If you can make that happen, you can make anything happen.",
    "If something is important enough, even if the odds are stacked against you, you should still do it.",
    "Don’t be afraid to give up the good to go for the great.",
    "People who wonder if the glass is half empty or full miss the point. The glass is refillable.",
    "You can waste your lives drawing lines. Or you can live your life crossing them.",
    "When you reach the end of your rope, tie a knot and hang out."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quotes!"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 350,
              height: 200,
              margin: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child: Text(
                Quotes[_index % Quotes.length],
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
            ),
            Divider(
              thickness: 1.4,
            ),
            // ignore: deprecated_member_use
            Padding(
              padding: const EdgeInsets.only(top: 18),
              // ignore: deprecated_member_use
              child: FlatButton.icon(
                  onPressed: _showQuote,
                  color: Colors.greenAccent.shade700,
                  icon: Icon(Icons.wb_sunny),
                  label: Text(
                    "Inspire Me...",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  _showQuote() {
    setState(() {
      _index++;
    });
  }
}
