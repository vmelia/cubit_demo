import 'dart:convert';
import 'package:http/http.dart' as http;
import '../contracts.dart';
import '../model.dart';

class BeersRepositoryImpl implements BeersRepository {
  final _baseUrl = 'www.drifta.co.uk';
  final _endpoint = '/api/Beers';

  @override
  Future<List<BeerEntity>> get() async {
    final url = Uri.https(_baseUrl, _endpoint);
    var response = await http.get(url);
    if (response.statusCode != 200) {
      return [];
    }

    return (json.decode(response.body) as List).map((i) => BeerEntity.fromJson(i)).toList();
  }
}
