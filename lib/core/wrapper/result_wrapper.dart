import 'package:farm04_modeul/core/wrapper/state_wrapper.dart';

class ResultWrapper {
  final bool success;
  final String? message;

  ResultWrapper({
    required this.success,
    this.message,
  });

  ResultWrapper copyWith({
    bool? success,
    String? message,
  }) {
    return ResultWrapper(
      success: success ?? this.success,
      message: message ?? this.message,
    );
  }

  factory ResultWrapper.fromState(StateWrapper state) {
    return ResultWrapper(
      success: state.success,
      message: state.message,
    );
  }
}
