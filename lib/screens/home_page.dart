import 'package:flutter/material.dart';
import 'package:provider_uygulamasi/models/%C4%B1tems_data.dart';
import 'package:provider_uygulamasi/screens/settin_page.dart';
import 'package:provider_uygulamasi/widgets/item_card.dart';
import 'package:provider/provider.dart';

import 'item_adder.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: IconButton(
              icon: Icon(Icons.settings,size: 25,),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingPage()));
              },
            ),
          )
        ],
        title: Text('get it done'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '${Provider.of<ItemData>(context).items.length} items ',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListView.builder(
                    itemCount: Provider.of<ItemData>(context).items.length,
                    itemBuilder: (context, position) => ItemCard(
                        deleteItem: (_) {
                          Provider.of<ItemData>(context, listen: false)
                              .deleteItem(position);
                        },
                        title: Provider.of<ItemData>(context)
                            .items[position]
                            .title,
                        isDone: Provider.of<ItemData>(context)
                            .items[position]
                            .isDone,
                        toggleStatus: (_) {
                          Provider.of<ItemData>(context, listen: false)
                              .toggleStatus(position);
                        })),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              context: context,
              builder: (context) => ItemAdder());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
