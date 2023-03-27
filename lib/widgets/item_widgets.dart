import 'package:flutter/material.dart';
import '../models/catalog.dart';

class ItemWidgets extends StatelessWidget {
  final Item item;
  const ItemWidgets({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(
              width: 80,
              child: Image.network(item.image),
            ),
            Expanded(
              child: ListTile(
                onTap: () {
                  print("${item.name} pressed");
                },
                title: Text(item.name),
                subtitle: Text(item.desc),
                trailing: Text(
                  "\$${item.price}",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
