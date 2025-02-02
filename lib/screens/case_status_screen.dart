import 'package:flutter/material.dart';

class CaseStatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // For demo purposes, we'll simulate a list of complaints and their statuses.
    final List<Map<String, String>> complaints = [
      {'title': 'Theft', 'status': 'Under Investigation'},
      {'title': 'Vandalism', 'status': 'Resolved'},
      {'title': 'Assault', 'status': 'Pending'},
    ];

    return SafeArea(
      child: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: complaints.length,
        itemBuilder: (context, index) {
          final complaint = complaints[index];
          return Card(
            margin: EdgeInsets.only(bottom: 16.0),
            child: ListTile(
              leading: Icon(Icons.report),
              title: Text(complaint['title']!),
              subtitle: Text('Status: ${complaint['status']}'),
            ),
          );
        },
      ),
    );
  }
}
