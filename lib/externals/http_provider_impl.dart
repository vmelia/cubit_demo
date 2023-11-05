import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import '../contracts/externals.dart';

class HttpProviderImpl implements HttpProvider {
    final _baseUrl = 'www.drifta.co.uk';
    
  @override
  Future<Response> get(String endpoint) async {
    final url = Uri.https(_baseUrl, endpoint);
    return await http.get(url);
  }
}
