part of 'association_bloc.dart';

@freezed
class AssociationState with _$AssociationState {
  const factory AssociationState.initial() = _Initial;
  const factory AssociationState.loading() = Loading;
  const factory AssociationState.loaded({
    required List<Association> association,
  }) = AssLoaded;
  const factory AssociationState.failure() = Failure;
}
