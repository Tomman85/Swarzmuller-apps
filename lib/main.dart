import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/presentation/screens/add/add_place_screen.dart';
import 'package:flutter_complete_guide/presentation/screens/list_of_places/components/great_places.dart';
import 'package:flutter_complete_guide/presentation/screens/list_of_places/places_list_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
        },
      ),
    );
  }
}
