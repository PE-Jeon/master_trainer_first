import 'package:master_trainer_first/pages/setting/domain/entity/setting_model.dart';

abstract class ISettingRepository {
  Future<SettingModel> getCases();
}