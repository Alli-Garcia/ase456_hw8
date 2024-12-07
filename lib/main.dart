import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Time Tracker Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _fromController = TextEditingController();
  final TextEditingController _toController = TextEditingController();
  final TextEditingController _taskController = TextEditingController();
  final TextEditingController _tagController = TextEditingController();

  Future<void> _saveToFirebase() async {
    try {
      await FirebaseFirestore.instance.collection('time_usage').add({
        'date': _dateController.text,
        'from_time': _fromController.text,
        'to_time': _toController.text,
        'task': _taskController.text,
        'tag': _tagController.text,
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Data saved successfully!')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to save data: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _dateController,
              decoration: const InputDecoration(labelText: 'Date'),
            ),
            TextField(
              controller: _fromController,
              decoration: const InputDecoration(labelText: 'From Time'),
            ),
            TextField(
              controller: _toController,
              decoration: const InputDecoration(labelText: 'To Time'),
            ),
            TextField(
              controller: _taskController,
              decoration: const InputDecoration(labelText: 'Task'),
            ),
            TextField(
              controller: _tagController,
              decoration: const InputDecoration(labelText: 'Tag'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveToFirebase,
              child: const Text('Save to Firebase'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _dateController.clear();
          _fromController.clear();
          _toController.clear();
          _taskController.clear();
          _tagController.clear();
        },
        tooltip: 'Clear Fields',
        child: const Icon(Icons.clear),
      ),
    );
  }
}
