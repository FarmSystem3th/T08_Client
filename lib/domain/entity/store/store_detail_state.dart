class storeSummaryState {
  final String hostNickname;
  final String title;
  final bool ishost;

  storeSummaryState({
    required this.hostNickname,
    required this.title,
    this.ishost = false,
  });

  storeSummaryState copyWith({
    String? hostNickname,
    String? title,
    bool? ishost,
  }) {
    return storeSummaryState(
      hostNickname: hostNickname ?? this.hostNickname,
      title: title ?? this.title,
      ishost: ishost ?? this.ishost,
    );
  }

  factory storeSummaryState.initial() {
    return storeSummaryState(
      hostNickname: '',
      title: '',
      ishost: false,
    );
  }

  factory storeSummaryState.fromJson(Map<String, dynamic> json) {
    return storeSummaryState(
      hostNickname: json['host_nickname'],
      title: json['title'],
      ishost: json['is_host'],
    );
  }
}
