import 'package:flutter/material.dart';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<StatefulWidget> createState() => _RollDiceState();
}

var rollDiceImages = [
  'assets/images/dice-1.png',
  'assets/images/dice-2.png',
  'assets/images/dice-3.png',
  'assets/images/dice-4.png',
  'assets/images/dice-5.png',
  'assets/images/dice-6.png'
];

class _RollDiceState extends State<RollDice> {
  int currentIndex = 0;
  void RollTheDice() {
    setState(() {
      currentIndex = (currentIndex + 1) % rollDiceImages.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(rollDiceImages[currentIndex],
                width: MediaQuery.sizeOf(context).width * 0.30,
                height: MediaQuery.sizeOf(context).height * 0.30),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
                onPressed: () => RollTheDice(),
                icon: Icon(Icons.rotate_right),
                label: Text('Roll the Dice'))
          ],
        ),
      ),
    ));
  }
}
