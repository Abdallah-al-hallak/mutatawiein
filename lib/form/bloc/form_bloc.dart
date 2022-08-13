import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_event.dart';
part 'form_state.dart';
part 'form_bloc.freezed.dart';

class FormBloc extends Bloc<FormEvent, FormStateBloc> {
  FormBloc() : super(_Initial()) {
    on<FormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
