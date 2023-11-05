import 'dart:convert';

import '../contracts/externals.dart';
import '../contracts/services.dart';
import '../model.dart';

class BeersRepositoryImpl implements BeersRepository {
  final _endpoint = '/api/Beers';

  final HttpProvider httpProvider;
  BeersRepositoryImpl(this.httpProvider);

  @override
  Future<List<BeerEntity>> get() async {
    var response = await httpProvider.get(_endpoint);
    if (response.statusCode != 200) {
      return [];
    }

    return (json.decode(response.body) as List).map((i) => BeerEntity.fromJson(i)).toList();
  }
}
