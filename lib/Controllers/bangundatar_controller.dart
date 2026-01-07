import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Blocs/bangundatar_bloc.dart';
import '../Events/bangundatar.event.dart';

class BangunDatarController {
  final TextEditingController panjangController = TextEditingController();
  final TextEditingController lebarController = TextEditingController();

  void hitungLuas(BuildContext context) {
    final p = double.tryParse(panjangController.text) ?? 0;
    final l = double.tryParse(lebarController.text) ?? 0;
    context.read<BangunDatarBloc>().add(HitungLuasEvent(p, l));
  }

  void hitungKeliling(BuildContext context) {
    final p = double.tryParse(panjangController.text) ?? 0;
    final l = double.tryParse(lebarController.text) ?? 0;
    context.read<BangunDatarBloc>().add(HitungKelilingEvent(p, l));
  }

  void reset(BuildContext context) {
    panjangController.clear();
    lebarController.clear();
    context.read<BangunDatarBloc>().add(ResetEvent());
  }

  void dispose() {
    panjangController.dispose();
    lebarController.dispose();
  }
}
