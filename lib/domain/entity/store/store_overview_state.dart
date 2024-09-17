class storeOverviewState {
  final int id;
  final String title;
  final bool isHostOnline;
  final int currentParticipantCount;
  final String participatedAt;

  storeOverviewState({
    required this.id,
    required this.title,
    required this.isHostOnline,
    required this.currentParticipantCount,
    required this.participatedAt,
  });

  storeOverviewState copyWith({
    int? id,
    String? title,
    bool? isHostOnline,
    int? currentParticipantCount,
    String? participatedAt,
  }) {
    return storeOverviewState(
      id: id ?? this.id,
      title: title ?? this.title,
      isHostOnline: isHostOnline ?? this.isHostOnline,
      currentParticipantCount:
          currentParticipantCount ?? this.currentParticipantCount,
      participatedAt: participatedAt ?? this.participatedAt,
    );
  }

  factory storeOverviewState.initial() {
    return storeOverviewState(
      id: 0,
      title: '',
      isHostOnline: false,
      currentParticipantCount: 0,
      participatedAt: '',
    );
  }

  factory storeOverviewState.fromJson(Map<String, dynamic> json) {
    return storeOverviewState(
      id: json['id'],
      title: json['title'],
      isHostOnline: json['is_host_online'],
      currentParticipantCount: json['current_participant_count'],
      participatedAt: json['participated_at'],
    );
  }
}
