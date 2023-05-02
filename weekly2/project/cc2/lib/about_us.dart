import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'About Us',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.code),
                      title: Text('Java'),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.code),
                      title: Text('Python'),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.code),
                      title: Text('Javascript'),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
