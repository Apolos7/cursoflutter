import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Hello World'),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
            Container(
              color: Colors.indigo,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.purple,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
