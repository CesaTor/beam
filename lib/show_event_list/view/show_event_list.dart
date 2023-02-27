import 'package:flutter/material.dart';

class ShowEventListPage extends StatefulWidget {
  const ShowEventListPage({super.key});

  @override
  State<ShowEventListPage> createState() => _ShowEventListPageState();
}

class _ShowEventListPageState extends State<ShowEventListPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text('Show Event List'),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) => Card(
              child: ListTile(
                leading: FlutterLogo(
                  size: 50,
                ),
                title: const Text(
                    'Title title title title title title title title title title'),
                subtitle: const Text('Posizione - Luogo'),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text('Show Event List'),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) => Card(
              child: ListTile(
                leading: FlutterLogo(
                  size: 50,
                ),
                title: Text('Title'),
                subtitle: Text('subtitle'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
