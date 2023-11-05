import 'package:cubit_demo/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'contracts.dart';
import 'externals.dart';
import 'services.dart';
import 'states.dart';

void main() {
  GetIt.I.registerSingleton<HttpProvider>(HttpProviderImpl());
  GetIt.I.registerSingleton<BeersRepository>(BeersRepositoryImpl(GetIt.I()));
  GetIt.I.registerSingleton<BeersCubit>(BeersCubit(GetIt.I()));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
