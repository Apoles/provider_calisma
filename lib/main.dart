import 'package:flutter/material.dart';
import 'package:provider_uygulamasi/models/%C4%B1tems_data.dart';
import 'package:provider_uygulamasi/models/color_theme_data.dart';
import './screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<ItemData>(
        create: (BuildContext context) => ItemData()),
    ChangeNotifierProvider<ColorThemeData>(create: (context)=>ColorThemeData(),)
  ],
  child: MyApp()));
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Provider.of<ColorThemeData>(context).selectedThemeData,
      home: HomePage(),
    );
  }
}
