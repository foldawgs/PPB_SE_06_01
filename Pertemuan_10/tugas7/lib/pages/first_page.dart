import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _classController = TextEditingController();

  Future<void> _saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', _nameController.text);
    await prefs.setString('nim', _nimController.text);
    await prefs.setString('class', _classController.text);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Data berhasil disimpan!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(labelText: 'Nama'),
          ),
          TextField(
            controller: _nimController,
            decoration: InputDecoration(labelText: 'NIM'),
          ),
          TextField(
            controller: _classController,
            decoration: InputDecoration(labelText: 'Kelas'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _saveData,
            child: Text('Simpan Data'),
          ),
        ],
      ),
    );
  }
}
