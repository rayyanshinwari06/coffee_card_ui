import 'package:coffee_card/custom_widgets/styled_Button.dart';
import 'package:coffee_card/custom_widgets/styled_body_text.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int strength = 0;
  int sugar = 0;
  int i = 0;
  void increaseStrenght() {
    setState(() {
      strength = (strength < 5 ? strength + 1 : 0);
    });
  }

  void increaseSugar() {
    setState(() {
      sugar = (sugar < 5 ? sugar + 1 : 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Coffee Card',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(color: Colors.brown[400]),
            child: Center(
              child: StyledBodyText(text: 'Welcome to My Coffee Card'),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
            width: 200,
            height: 150,
            decoration: BoxDecoration(color: Colors.brown[300]),
            child: Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      StyledBodyText(text: 'Strength: $strength/5'),
                      SizedBox(width: 10),

                      for (i = 0; i < strength; i++)
                        Image.asset(
                          'assets/img/coffee_bean.png',
                          width: 25,
                          color: Colors.brown[300],
                          colorBlendMode: BlendMode.multiply,
                        ),

                      Expanded(child: SizedBox()),

                      StyledButton(
                        onPressed: increaseStrenght,
                        child: Text('+'),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      StyledBodyText(text: 'Sugar: $sugar/5'),
                      SizedBox(width: 10),

                      for (i = 0; i < sugar; i++)
                        Image.asset(
                          'assets/img/sugar_cube.png',
                          width: 25,
                          color: Colors.brown[300],
                          colorBlendMode: BlendMode.multiply,
                        ),

                      Expanded(child: SizedBox()),

                      StyledButton(onPressed: increaseSugar, child: Text('+')),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Image.asset(
              alignment: Alignment.bottomCenter,
              'assets/img/coffee_bg.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
