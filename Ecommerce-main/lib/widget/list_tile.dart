import 'package:flutter/material.dart';

class listTile extends StatelessWidget {
  const listTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset('assets/Chesse.webp'),
      title: Text(
        'Extra cheese',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      subtitle: Text(
        r'10$',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      trailing: Icon(Icons.circle_outlined),
    );
  }
}
