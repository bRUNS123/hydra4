import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'swipe_index_event.dart';
part 'swipe_index_state.dart';

class SwipeIndexBloc extends Bloc<SwipeIndexEvent, SwipeIndexState> {
  SwipeIndexBloc() : super(SwipeIndexInitial()) {
    on<SwipeIndexEvent>((event, emit) {});
  }
}
