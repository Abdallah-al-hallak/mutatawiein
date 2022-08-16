import 'package:mutatawiein/data/model/association.dart';
import 'package:mutatawiein/data/remote/dio_ass.dart';

class AssRepo {
  DioAssociation association = DioAssociation();
  Future<List<Association>> getAssrepo() async {
    return await association.getAssociation();
  }
}
