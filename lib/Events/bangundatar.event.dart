abstract class BangunDatarEvent {}

class HitungLuasEvent extends BangunDatarEvent {
  final double panjang;
  final double lebar;

  HitungLuasEvent(this.panjang, this.lebar);
}

class HitungKelilingEvent extends BangunDatarEvent {
  final double panjang;
  final double lebar;

  HitungKelilingEvent(this.panjang, this.lebar);
}

class ResetEvent extends BangunDatarEvent {}
