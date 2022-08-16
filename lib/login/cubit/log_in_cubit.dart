import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mutatawiein/utils/pref_func.dart';
import '../../data/remote/dio_login.dart';

part 'log_in_state.dart';
part 'log_in_cubit.freezed.dart';

class LogInCubit extends Cubit<LogInState> {
  LogInCubit() : super(const LogInState.initial());

  Future<void> logIn(
    String userName,
    String password,
  ) async {
    emit(const LogInState.fetching());
    try {
      var model = await DioLogIn().logIn(
        userName,
        password,
      );

      await SharedFunc().setToken('token', model.jwtResponse.token);

      emit(const LogInState.success());
    } on Exception catch (e) {
      emit(const FailedLogIn());
    } catch (e) {
      emit(const FailedLogIn());
    }
  }
}
