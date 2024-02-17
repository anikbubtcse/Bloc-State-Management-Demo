part of 'number_bloc.dart';

abstract class NumberEvent extends Equatable {
  const NumberEvent();
}

class TakeNumberEvent extends NumberEvent {
  String number;

  TakeNumberEvent({required this.number});

  @override
  List<Object?> get props => [number];
}
