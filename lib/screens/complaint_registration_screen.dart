import 'package:flutter/material.dart';

class ComplaintRegistrationScreen extends StatefulWidget {
  @override
  _ComplaintRegistrationScreenState createState() =>
      _ComplaintRegistrationScreenState();
}

class _ComplaintRegistrationScreenState
    extends State<ComplaintRegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  String _complaintTitle = '';
  String _complaintDescription = '';
  String _location = '';

  void _submitComplaint() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Here you would typically send data to a server or database.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Complaint submitted successfully!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Complaint Title Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Complaint Title',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a complaint title';
                  }
                  return null;
                },
                onSaved: (value) {
                  _complaintTitle = value!.trim();
                },
              ),
              SizedBox(height: 16.0),
              // Complaint Description Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Complaint Description',
                  border: OutlineInputBorder(),
                ),
                maxLines: 5,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter the details of your complaint';
                  }
                  return null;
                },
                onSaved: (value) {
                  _complaintDescription = value!.trim();
                },
              ),
              SizedBox(height: 16.0),
              // Location Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Location',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter the location of the incident';
                  }
                  return null;
                },
                onSaved: (value) {
                  _location = value!.trim();
                },
              ),
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: _submitComplaint,
                child: Text('Submit Complaint'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
