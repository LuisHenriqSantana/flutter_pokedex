import 'package:flutter/material.dart';
import 'package:flutter_pokedex/pages/home_page/home_page.dart';
import 'package:flutter_pokedex/stores/pokeapi_store.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt getIt = GetIt.instance;
  getIt.registerSingleton<PokeApiStore>(PokeApiStore());
  return
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

