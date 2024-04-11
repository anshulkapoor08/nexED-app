import 'package:flutter/material.dart';
import 'package:nedex/screens/homePage.dart';

class FeatureScreen1 extends StatefulWidget {
  @override
  State<FeatureScreen1> createState() => _FeatureScreen1State();
}

class _FeatureScreen1State extends State<FeatureScreen1> {
  int _currentIndex = 0;
  List<Map<String, dynamic>> _features = [
    {
      'image': 'assets/images/page1.png',
      'text': 'Submit assignments form anywhere, anytime from any device.',
      'backgroundColor': Colors.amber.shade600,
    },
    {
      'image': 'assets/images/page2.png',
      'text': 'Interact with your teachers and peers to clear your doubts',
      'backgroundColor': Colors.green.shade600,
    },
  ];
  void _nextFeature() {
    setState(() {
      if (_currentIndex < _features.length - 1) {
        _currentIndex++;
      } else {
        Navigator.of(context).pushReplacementNamed('/home');
      }
      // _currentIndex = (_currentIndex + 1) % _features.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _features[_currentIndex]['backgroundColor'],
      body: Container(
        // height: MediaQuery.of(context).size.height/2,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                _features[_currentIndex]['image'],

                width: 300,
                // height: 200,
              ),
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  _features[_currentIndex]['text'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _features.length,
                  (index) => Container(
                    width: 11,
                    height: 11,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          index == _currentIndex ? Colors.white70 : Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80),
              (_currentIndex == 0)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          margin: const EdgeInsets.symmetric(horizontal: 40),
                          decoration:const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                          child: IconButton(
                            onPressed: _nextFeature,
                            icon: const Icon(Icons.arrow_forward_ios_rounded),
                            iconSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  : ElevatedButton(
                      onPressed: () {
                        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreenPage()),
            );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/google logo.png', // Replace with your Google logo asset
                            height: 24.0,
                          ),
                          const SizedBox(width: 10.0),
                          const Text('Continue with Google'),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
