import 'package:flutter/material.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _ListGridState();
}

class _ListGridState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    // List<String> fruits = ['Mango', 'Banana', 'Guavava', 'Cherry', 'Apple'];
    Map fruitsPerson = {
      'fruits': [
        'Data Science and Analytics',
        'Software Engineering',
        'Indian Tradition and Culture',
        'Machine Learning and Algorithm',
        'Image Processing'
      ],
      'names': [
        'Prof. Gunjan Saxena',
        'Dr. Shashank Sahu',
        'Dr. Anu Chaudhry',
        'Prof. Akash Jaiswal',
        'Prof. Anshul Kapoor'
      ],
      'color': [
        Colors.blue.shade100,
        const Color.fromARGB(255, 238, 166, 160),
        Colors.green.shade100,
        Colors.pink.shade100,
        Colors.yellow.shade100
      ]
    };

    return Scaffold( 
        appBar: AppBar(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/kk.png'),
            radius: 5,
          ),
          
          title: const Text(
            'NexEd',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          elevation: 20,
          backgroundColor: Colors.white,
        ),
        body: Container(
          child: ListView.builder(
            itemCount: fruitsPerson['fruits'].length,
            itemBuilder: (context, index) {
              return Card(
                child: Container(
                  height: 150,
                  child: ListTile(
                    onTap: () {
                      print((fruitsPerson['fruits'][index]));
                    },
                    // leading: const Icon(Icons.person),
                    textColor: const Color.fromARGB(255, 0, 0, 0),
                    tileColor: fruitsPerson['color'][index],
                    title: Text(
                      fruitsPerson['fruits'][index],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(fruitsPerson['names'][index]),
                  ),
                ),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          onPressed: () {
            // Display bottom sheet with two clickable options
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        title: Text('JOIN'),
                        onTap: () {
                          // Navigate to the next page for Option 1
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NextPage(option: 'join')),
                          );
                        },
                      ),
                      ListTile(
                        title: Text('CREATE'),
                        onTap: () {
                          // Navigate to the next page for Option 2
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    NextPage(option: 'create')),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
          shape: CircleBorder(),
          child: const Icon(
            Icons.add,
            color: Color.fromARGB(255, 19, 100, 250),
          ),
        ));
  }
}

class NextPage extends StatelessWidget {
  final String option;

  NextPage({required this.option});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Text('You selected $option'),
      ),
    );
  }
}
