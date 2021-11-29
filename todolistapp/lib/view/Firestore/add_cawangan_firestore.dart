import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todolistapp/model/cawangan_model.dart';
import 'package:todolistapp/model/firebase_connect.dart';

class AddCawanganFirestorePage extends StatefulWidget {
  final String? cawanganName;
  final String? cawanganNegeri;
  final int? cawanganPoskod;

  const AddCawanganFirestorePage(
      {Key? key, this.cawanganName, this.cawanganNegeri, this.cawanganPoskod})
      : super(key: key);

  @override
  _AddCawanganFirestorePageState createState() =>
      _AddCawanganFirestorePageState();
}

class _AddCawanganFirestorePageState extends State<AddCawanganFirestorePage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _negeriController = TextEditingController();
  TextEditingController _poskodController = TextEditingController();

  @override
  void initState() {
    _nameController = TextEditingController(text: widget.cawanganName);
    _negeriController = TextEditingController(text: widget.cawanganNegeri);
    _poskodController =
        TextEditingController(text: widget.cawanganPoskod.toString());

    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _negeriController.dispose();
    _poskodController.dispose();
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
            child: Text(widget.cawanganName ?? 'pahang'),
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
              controller: _negeriController,
              decoration: const InputDecoration(
                  labelText: 'Negeri', border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _poskodController,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(
                  labelText: 'Poskod', border: OutlineInputBorder()),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                try {
                  CawanganModel cawangan = CawanganModel(
                      name: _nameController.text,
                      negeri: _negeriController.text,
                      poskod: int.parse(_poskodController.text));

                  await FirebaseConnect().addCawangan(cawangan);
                  Navigator.pop(context);
                } catch (e) {
                  // ignore: avoid_print
                  print(e.toString());
                }
              },
              child: const Text('Save')),
        ],
      ),
    );
  }
}
