import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'number_event.dart';

part 'number_state.dart';

class NumberBloc extends Bloc<NumberEvent, NumberState> {
  NumberBloc() : super(NumberInitial()) {
    on<TakeNumberEvent>(_onTakeNumberEvent);
  }

  _onTakeNumberEvent(TakeNumberEvent event, Emitter<NumberState> state) async {
    emit(NumberLoading());

    await Future.delayed(const Duration(seconds: 5));

    emit(NumberLoaded(number: event.number));
  }
}
