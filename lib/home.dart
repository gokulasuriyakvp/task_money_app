
import 'package:flutter/material.dart';

import 'money_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Invest in Mutual Funds that suit you the best',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Discover your perfect Mutual Fund with our financial expert and join hands with 14 crore mutual fund investors who are building an independent future.',
                style: TextStyle(color: Colors.grey,fontSize: 25),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.deepOrange,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MoneyScreen()));
                }, child: Text('Get Start'))
          ],
        ),
      ),
    );
  }
}