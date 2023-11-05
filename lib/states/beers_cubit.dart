import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../contracts/services.dart';
import '../model.dart';

class BeersState extends Equatable {
  const BeersState(this.data);
  const BeersState.initial() : data = const[];
  final List<BeerEntity> data;
  
  @override
  List<Object?> get props => [data];
}

class BeersCubit extends Cubit<BeersState> {
  BeersCubit(this.beersRepository): super(const BeersState.initial());
  final BeersRepository beersRepository;

  Future<void> load() async {
    emit(BeersState(await beersRepository.get()));
  }
}
