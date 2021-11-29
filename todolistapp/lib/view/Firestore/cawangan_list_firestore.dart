import 'package:flutter/material.dart';
import 'package:todolistapp/model/cawangan_model.dart';
import 'package:todolistapp/model/firebase_connect.dart';

class CawanganListFirestore extends StatelessWidget {
  const CawanganListFirestore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cawangan'),
      ),
      body: StreamBuilder(
        stream: FirebaseConnect().getCawangan(),
        builder: (context, AsyncSnapshot<List<CawanganModel>> snapshot) {
          if (snapshot.hasError || !snapshot.hasData) {
            return const Center(
                child: CircularProgressIndicator(
              backgroundColor: Colors.purple,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ));
          }
          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                CawanganModel cawangan = snapshot.data![index];
                return ListTile(
                  title: Text(cawangan.name),
                );
              });
        },
      ),
    );
  }
}
