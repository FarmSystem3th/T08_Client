import 'package:farm04_modeul/core/wrapper/response_wrapper.dart';

class StateWrapper<T> {
  final bool success;
  final String? message;
  final T? data;

  StateWrapper({
    required this.success,
    this.message,
    this.data,
  });

  StateWrapper copyWith({
    bool? success,
    String? message,
    T? data,
  }) {
    return StateWrapper(
      success: success ?? this.success,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  factory StateWrapper.fromResponse(ResponseWrapper response) {
    return StateWrapper(
      success: response.success,
      message: response.message,
      data: null,
    );
  }

  factory StateWrapper.fromResponseAndState(ResponseWrapper response, T data) {
    return StateWrapper(
      success: response.success,
      message: response.message,
      data: data,
    );
  }
}
