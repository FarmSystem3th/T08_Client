class UserBriefState {
  final String id;
  final String nickname;
  final int storeCount;
  final int modeullakCount;
  final int dialogueCount;

  UserBriefState({
    required this.id,
    required this.nickname,
    required this.storeCount,
    required this.modeullakCount,
    required this.dialogueCount,
  });

  UserBriefState copyWith({
    String? id,
    String? nickname,
    int? storeCount,
    int? modeullakCount,
    int? dialogueCount,
  }) {
    return UserBriefState(
      id: id ?? this.id,
      nickname: nickname ?? this.nickname,
      storeCount: storeCount ?? this.storeCount,
      modeullakCount: modeullakCount ?? this.modeullakCount,
      dialogueCount: dialogueCount ?? this.dialogueCount,
    );
  }

  factory UserBriefState.initial() {
    return UserBriefState(
      id: '',
      nickname: '',
      storeCount: 0,
      modeullakCount: 0,
      dialogueCount: 0,
    );
  }

  factory UserBriefState.fromJson(Map<String, dynamic> json) {
    return UserBriefState(
      id: json['id'],
      nickname: json['nickname'],
      storeCount: json['store_count'],
      modeullakCount: json['modeullak_count'],
      dialogueCount: json['dialogue_count'],
    );
  }
}
