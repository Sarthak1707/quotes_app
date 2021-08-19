import 'package:flutter/material.dart';

class QuotesApp extends StatefulWidget {
  const QuotesApp({Key? key}) : super(key: key);

  @override
  _QuotesAppState createState() => _QuotesAppState();
}

class _QuotesAppState extends State<QuotesApp> {
  var index = 0;
  List quotes = [
    "Live as if you were to die tomorrow. Learn as if you were to live forever.",
    "That which does not kill us makes us stronger",
    "Be who you are and say what you feel, because those who mind don’t matter and those who matter don’t mind.",
    "We must not allow other people’s limited perceptions to define us.",
    "Do what you can, with what you have, where you are.",
    "Be yourself; everyone else is already taken.",
    "This above all: to thine own self be true.",
    "If you cannot do great things, do small things in a great way.",
    "If opportunity doesn’t knock, build a door.",
    "Strive not to be a success, but rather to be of value.",
    "Do not let what you cannot do interfere with what you can do.",
    "I haven’t failed. I’ve just found 10,000 ways that won’t work.",
    "A journey of a thousand leagues begins beneath one’s feet.",
    "Either you run the day, or the day runs you.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade100,
      appBar: AppBar(
        title: Text("My Quotes"),
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: () {
            debugPrint("1");
          }, icon: Icon(Icons.screenshot_outlined), color: Colors.white,)
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Container(
                      width: 350,
                      height: 200,
                      margin: EdgeInsets.all(30.0),
                      decoration: BoxDecoration(color: Colors.green,
                          borderRadius: BorderRadius.circular(14.0)),

                      child: Center(
                        child: Text('"${quotes[index % quotes.length]}"',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )),
                ),
              ),
              Divider(
                thickness: 1.3,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14.0),
                child: FlatButton.icon(
                    onPressed: showQuote,
                    color: Colors.green,
                    splashColor: Colors.lightBlueAccent,
                    icon: Icon(Icons.lightbulb, color: Colors.white,),
                    label: Text("Inspire Me!",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),)),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  void showQuote() {
    setState(() {
      index++;
    });
  }
}
