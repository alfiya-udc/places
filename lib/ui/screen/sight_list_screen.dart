import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Places'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Text('Список интересных мест'),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.purple,
        child: Text('BottomAppBar'),
      ),
      bottomSheet: Text('bottomSheet'),
      drawer: Center(
        child: Text('drawer'),
      ),
      floatingActionButton: IconButton(
        icon: Icon(Icons.add),
        color: Colors.purple,
        onPressed: () => {},
      ),
    );
  }
}
