import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int index = 0;
  List quotes = [
    "Life isn’t about getting and having, it’s about giving and being.",
    "Whatever the mind of man can conceive and believe, it can achieve.",
    "Strive not to be a success, but rather to be of value.",
    "You miss 100% of the shots you don’t take.",
    "I’ve missed more than 9000 shots in my career. I’ve lost almost 300 games. "
        "26 times I’ve been trusted to take the game winning shot and missed."
        " I’ve failed over and over and over again in my life. "
        "And that is why I succeed.",
    "The most difficult thing is the decision to act, the rest is merely tenacity.",
    "Every strike brings me closer to the next home run.",
    "Definiteness of purpose is the starting point of all achievement.",
    "We become what we think about.",
    "Life is 10% what happens to me and 90% of how I react to it.",
    "Your time is limited, so don’t waste it living someone else’s life."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            _getBackgroundContainer(),
            _getButton()
          ],
        )
      ),
    );
  }


  Container _getBackgroundContainer(){
    return Container(
      margin: EdgeInsets.all(50),
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.pinkAccent
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(quotes[index % quotes.length]),
        ),
      ),
    );
  }

  Padding _getButton(){
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: ElevatedButton.icon(
          onPressed: (){changeState();},
          icon: Icon(Icons.wb_sunny),
          label: Text("Click me to change", style: TextStyle(),),
      ),
    );
  }

  void changeState(){
    setState(() {
      index++;
    });
  }

}
