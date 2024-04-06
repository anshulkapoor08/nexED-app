import 'package:flutter/material.dart';

class FeatureScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/your_image.png', // Replace with your image path
              width: 200,
              height: 200,
            ),
            SizedBox(height: 16),
            Text(
              'Description of the feature',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}