// ignore_for_file: constant_identifier_names

enum EDialogueStatus {
  PROCESSING(
    koName: '답변 대기 중',
    enName: 'Processing',
  ),
  HOST_ANSWER(
    koName: '관리자 답변',
    enName: 'Host Answer',
  ),
  AI_ANSWER(
    koName: 'AI 답변',
    enName: 'AI Answer',
  );

  final String koName;
  final String enName;

  const EDialogueStatus({
    required this.koName,
    required this.enName,
  });

  static EDialogueStatus fromString(String value) {
    switch (value.toUpperCase()) {
      case 'PROCESSING':
        return EDialogueStatus.PROCESSING;
      case 'HOST_ANSWER':
        return EDialogueStatus.HOST_ANSWER;
      case 'AI_ANSWER':
        return EDialogueStatus.AI_ANSWER;
      default:
        throw Exception('Unknown dialogue status: $value');
    }
  }
}
