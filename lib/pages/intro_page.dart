import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 240,
                ),
              ),

              const SizedBox(
                height: 48,
              ),

              // title
              const Text(
                'DiCreem',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),

              const SizedBox(
                height: 12,
              ),

              // subtitle
              const Text(
                "De Colombia Pa'l mundo",
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: 48,
              ),

              // start now button
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.all(24),
                  child: const Center(
                    child: Text(
                      'Shop now',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
