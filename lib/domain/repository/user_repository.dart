import 'package:farm04_modeul/core/wrapper/state_wrapper.dart';
import 'package:farm04_modeul/domain/entity/user/user_brief_state.dart';

abstract class UserRepository {
  Future<StateWrapper<UserBriefState>> readUserBrief();
}
