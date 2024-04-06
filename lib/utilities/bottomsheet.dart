import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade700,
        title: const Text(
          'Bottom Sheet Widget',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child:  Text('Bottom Sheet Action'),
          onPressed: () {
            showModalBottomSheet(
              elevation: 10,
              isDismissible: false,
              enableDrag: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight:Radius.circular(20),
                )
              ),
              backgroundColor: Colors.blueGrey.shade200,
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text('Apple'),
                        subtitle: Text('anshul'),
                      ),
                      ListTile(
                        title: Text('Apple'),
                        subtitle: Text('anshul'),
                      ),
                      ListTile(
                        title: Text('Apple'),
                        subtitle: Text('anshul'),
                      ),
                      ListTile(
                        title: Text('Apple'),
                        subtitle: Text('anshul'),
                      ),
                      ListTile(
                        title: Text('Apple'),
                        subtitle: Text('anshul'),
                      ),
                      ListTile(
                        title: Text('Apple'),
                        subtitle: Text('anshul'),
                      ),
                    ],
                  );
                });
          },
          style: ButtonStyle(elevation: MaterialStateProperty.all(10)),
        ),
      ),
    );
  }
}
