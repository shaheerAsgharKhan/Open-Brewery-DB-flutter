import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/brewery_list_screen.dart';
import './providers/brewery_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => BreweryProvider(),
      child: MaterialApp(
        title: 'Open Brewery',
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          primaryColor: Colors.blue.shade100,
          scaffoldBackgroundColor: Colors.blueGrey.shade900,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          textTheme: TextTheme(
            bodyText1: TextStyle(),
            bodyText2: TextStyle(),
          ).apply(
            bodyColor: Colors.white,
            displayColor: Colors.blue,
          ),
        ),
        home: BreweryListScreen(),
      ),
    );
  }
}
