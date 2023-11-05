import 'package:http/http.dart';

abstract class HttpProvider {
  Future<Response> get(String endpoint);
}
