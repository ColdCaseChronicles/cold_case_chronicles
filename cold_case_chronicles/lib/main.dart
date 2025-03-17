import 'package:flutter/material.dart';

void main() {
  runApp(ColdCaseChronicles());
}

class ColdCaseChronicles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cold Case Chronicles',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cold Case Chronicles'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Settings')),
            ListTile(
              title: Text('Profile'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                CaseCard(
                  title: 'The Widow’s Secret',
                  progress: 0.6,
                  status: 'Waiting on Partner...',
                ),
                CaseCard(
                  title: 'Secrets of Ash Hollow',
                  progress: 0.3,
                  status: 'Your Turn!',
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange,
              ),
              child: Text('Start New Case'),
              onPressed: () {
                // TODO: Navigate to CaseLobby screen
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CaseCard extends StatelessWidget {
  final String title;
  final double progress;
  final String status;

  CaseCard({required this.title, required this.progress, required this.status});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            LinearProgressIndicator(value: progress),
            SizedBox(height: 8),
            Text(status),
          ],
        ),
      ),
    );
  }
}
