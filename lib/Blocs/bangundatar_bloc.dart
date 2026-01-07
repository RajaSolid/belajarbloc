import 'package:flutter_bloc/flutter_bloc.dart';
import '../Events/bangundatar.event.dart';
import '../States/bangundatar_state.dart';

class BangunDatarBloc extends Bloc<BangunDatarEvent, BangunDatarState> {
  BangunDatarBloc() : super(BangunDatarState.initial()) {
    on<HitungLuasEvent>((event, emit) {
      final hasil = event.panjang * event.lebar;
      emit(BangunDatarState(hasil: hasil));
    });

    on<HitungKelilingEvent>((event, emit) {
      final hasil = 2 * (event.panjang + event.lebar);
      emit(BangunDatarState(hasil: hasil));
    });

    on<ResetEvent>((event, emit) {
      emit(BangunDatarState.initial());
    });
  }
}
