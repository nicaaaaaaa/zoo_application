import 'package:flutter/material.dart';

void main() {
  runApp(ZooHomeScreen());
}

class ZooHomeScreen extends StatefulWidget {
  @override
  _ZooHomeScreenState createState() => _ZooHomeScreenState();
}

class _ZooHomeScreenState extends State<ZooHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to the Zoo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 20.0),
            Text(
              'Discover the Zoo',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: <Widget>[
                  _buildCategoryCard('Exhibits', Icons.map),
                  _buildCategoryCard('Events', Icons.event),
                  _buildCategoryCard('Food', Icons.fastfood),
                  _buildCategoryCard('Gift Shop', Icons.shopping_basket),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(String name, IconData icon) {
    return Card(
      child: InkWell(
        onTap: () {
          // Handle category selection
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 50.0,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(height: 10.0),
            Text(
              name,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
