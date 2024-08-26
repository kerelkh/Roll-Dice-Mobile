import "package:flutter/material.dart";
import "package:roll_dice/app_bar.dart";
import "dart:math";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  int _random = 1;

  void changeHandler() {
    setState(() {
      _random = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext contextx) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight), child: MyAppBar()),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 99, 174, 165),
            Color.fromARGB(255, 213, 230, 232)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/dice-$_random.png",
                  width: 200,
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 50),
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    onPressed: changeHandler,
                    child: const Text(
                      "ROLL DICE",
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    )),
              ],
            ),
          ),
        ));
  }
}
