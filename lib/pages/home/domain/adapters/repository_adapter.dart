

import 'package:master_trainer_first/pages/home/domain/entity/cases_model.dart';

abstract class IHomeRepository {
  Future<CasesModel> getCases();
}