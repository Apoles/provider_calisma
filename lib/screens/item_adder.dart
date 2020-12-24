import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_uygulamasi/models/%C4%B1tems_data.dart';

class ItemAdder extends StatelessWidget {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      color: Colors.green.shade100,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(

              controller: textController,
              onChanged: (input) {},
              style: TextStyle(color: Colors.black, fontSize: 20),
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)), labelText: 'Add ıtem'),
              autofocus: true,
            ),
            FlatButton(

                onPressed: () {
                  Provider.of<ItemData>(context, listen: false)
                      .addItem(textController.text);
                  Navigator.pop(context);

                },
                color: Theme.of(context).accentColor,
                child: Text('add'))
          ],
        ),
      ),
    );
  }
}
