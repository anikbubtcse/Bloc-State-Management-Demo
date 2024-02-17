part of 'number_bloc.dart';

abstract class NumberState extends Equatable {
  const NumberState();
}

class NumberInitial extends NumberState {
  @override
  List<Object> get props => [];
}

class NumberLoading extends NumberState {
  @override
  List<Object> get props => [];
}

class NumberError extends NumberState {
  final String message;

  const NumberError({required this.message});

  @override
  List<Object> get props => [message];
}

class NumberLoaded extends NumberState {
  final String number;

  const NumberLoaded({required this.number});

  @override
  List<Object> get props => [number];
}
