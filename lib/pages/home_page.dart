import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../model.dart';
import '../states.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final beersCubit = GetIt.I<BeersCubit>();
    return BlocProvider<BeersCubit>(
      create: (context) => beersCubit..load(),
      child: BlocBuilder<BeersCubit, BeersState>(
        builder: (context, state) {
          return _HomePageView(beers: state.data);
        },
      ),
    );
  }
}

class _HomePageView extends StatelessWidget {
  const _HomePageView({required this.beers});
  final List<BeerEntity> beers;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //const Text('Beers'),
            Expanded(
              child: ListView.builder(
                itemCount: beers.length,
                itemBuilder: (context, index) => Text(beers[index].name),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
