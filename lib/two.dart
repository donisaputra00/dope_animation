import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'one.dart';

class TwoPage extends StatefulWidget {
  const TwoPage({Key? key}) : super(key: key);

  @override
  State<TwoPage> createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Lottie.network(
              'https://assets2.lottiefiles.com/packages/lf20_qw34y153.json',
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OnePage(),
                  ),
                  (route) => false,
                );
              },
              child: Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.purple,
                ),
                child: const Center(
                  child: Text(
                    'Prev',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
