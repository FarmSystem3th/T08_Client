class ResponseWrapper {
  final bool success;
  final String? message;
  final Map<String, dynamic>? data;

  ResponseWrapper({
    required this.success,
    this.message,
    this.data,
  });

  ResponseWrapper copyWith({
    bool? success,
    String? message,
    Map<String, dynamic>? data,
  }) {
    return ResponseWrapper(
      success: success ?? this.success,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  factory ResponseWrapper.fromJson(Map<String, dynamic> json) {
    return ResponseWrapper(
      success: json['success'],
      data: json['data'],
      message: json['error']?['message'],
    );
  }

  factory ResponseWrapper.noContent() {
    return ResponseWrapper(
      success: true,
    );
  }
}
