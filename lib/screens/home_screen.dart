import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Add notification icon onPressed logic here
            },
          ),
        ],
      ),
      drawer: Drawer(
        // Add your menu items here
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Menu Item 1'),
              onTap: () {
                // Add menu item 1 onPressed logic here
              },
            ),
            ListTile(
              title: Text('Menu Item 2'),
              onTap: () {
                // Add menu item 2 onPressed logic here
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20), // Optional padding for the container
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(height: 10),
            Text(
              'Welcome, Jessie.',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 20),
            Card(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10), // Set border radius
                child: Container(
                  color: Colors.green[500], // Set background color
                  padding: EdgeInsets.all(30), // Add padding
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your total asset portfolio',
                            style: TextStyle(
                              color: Colors.white, // Change text color to white
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8), // Add vertical spacing
                          Text(
                            'N203,935',
                            style: TextStyle(
                              color: Colors.white, // Change text color to white
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Add button onPressed logic here
                        },
                        child: Text(
                          'Invest now',
                          style: TextStyle(
                              color: Colors.green), // Set text color to white
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.white), // Set button background color
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10), // Set border radius here
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('Card 2'),
                subtitle: Text('Card 2 description'),
                onTap: () {
                  // Add card 2 onPressed logic here
                },
              ),
            ),
            // Add more cards if needed
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Add home icon onPressed logic here
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Add search icon onPressed logic here
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                // Add profile icon onPressed logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}
