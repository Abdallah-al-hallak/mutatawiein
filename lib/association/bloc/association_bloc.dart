import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mutatawiein/data/model/association.dart';
import 'package:mutatawiein/data/repository/ass_repo.dart';

part 'association_event.dart';
part 'association_state.dart';
part 'association_bloc.freezed.dart';

class AssociationBloc extends Bloc<AssociationEvent, AssociationState> {
  AssRepo assRepo;
  AssociationBloc(this.assRepo) : super(_Initial()) {
    on<AssFetching>(_getAss);
  }
  void _getAss(AssFetching event, Emitter<AssociationState> emit) async {
    try {
      emit(const AssociationState.loading());
      var model = await assRepo.getAssrepo();
      emit(AssociationState.loaded(association: model));
    } catch (e) {
      emit(const AssociationState.failure());
    }
  }
}
