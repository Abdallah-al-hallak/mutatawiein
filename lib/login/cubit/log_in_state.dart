part of 'log_in_cubit.dart';

@freezed
class LogInState with _$LogInState {
  const factory LogInState.initial() = _Initial;
  const factory LogInState.fetching() = FetchingLogIn;
  const factory LogInState.success() = SuccessfulyLogged;
  const factory LogInState.failed() = FailedLogIn;
}
