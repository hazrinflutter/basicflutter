import 'package:flutter/material.dart';

import 'add_cawangan.dart';

class CawanganList extends StatefulWidget {
  const CawanganList({Key? key}) : super(key: key);

  @override
  _CawanganListState createState() => _CawanganListState();
}

class _CawanganListState extends State<CawanganList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cawangan'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8.0),
          children: <Widget>[
            ListTile(
              leading: const CircleAvatar(
                backgroundImage:
                    NetworkImage('https://picsum.photos/250?image=9'),
              ),
              title: const Text('Pahang'),
              trailing: Wrap(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const AddCawanganPage(
                                  cawanganName: 'Pahang')));
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/houseicon.png'),
              ),
              title: const Text('Melaka'),
              trailing: Wrap(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.blue,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/usericon.jpg'),
              ),
              title: const Text('Penang'),
              trailing: Wrap(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.blue,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const AddCawanganPage(
                  cawanganName: '',
                ),
              ),
            );
          },
          child: const Icon(Icons.add),
          backgroundColor: Colors.purple,
        ));
  }
}
