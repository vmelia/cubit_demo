import '../../model.dart';

abstract class BeersRepository {
  Future<List<BeerEntity>> get();
}
