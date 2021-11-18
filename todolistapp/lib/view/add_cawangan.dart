import 'package:flutter/material.dart';

class AddCawanganPage extends StatefulWidget {
  final String cawanganName;

  const AddCawanganPage({Key? key, required this.cawanganName})
      : super(key: key);

  @override
  _AddCawanganPageState createState() => _AddCawanganPageState();
}

class _AddCawanganPageState extends State<AddCawanganPage> {
  TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    _nameController = TextEditingController(text: widget.cawanganName);
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Cawangan'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.cawanganName),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                  labelText: 'Cawangan', border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: 'Poskod', border: OutlineInputBorder()),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Save')),
        ],
      ),
    );
  }
}
