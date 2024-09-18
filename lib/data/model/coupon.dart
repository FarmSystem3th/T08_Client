// 쿠폰모델
enum CouponStatus {
  active,    // 사용 가능한 상태
  used,      // 사용된 상태
  expired,   // 만료된 상태
  cancelled  // 취소된 상태
}

class Coupon {
  final int id;
  final int userId;
  final String name;
  final String content;
  final int deductedPrice;
  final int minDeliveryPrice;
  final DateTime createdDate;
  final DateTime modifiedDate;
  final DateTime expirationDate;  // 만료일 추가
  final CouponStatus status;

  Coupon({
    required this.id,
    required this.userId,
    required this.name,
    required this.content,
    required this.deductedPrice,
    required this.minDeliveryPrice,
    required this.createdDate,
    required this.modifiedDate,
    required this.expirationDate,  // 만료일 추가
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'name': name,
      'content': content,
      'deductedPrice': deductedPrice,
      'minDeliveryPrice': minDeliveryPrice,
      'createdDate': createdDate.toIso8601String(),
      'modifiedDate': modifiedDate.toIso8601String(),
      'expirationDate': expirationDate.toIso8601String(),  // 만료일 추가
      'status': status.toString().split('.').last,
    };
  }

  factory Coupon.fromMap(Map<String, dynamic> map) {
    return Coupon(
      id: map['id'],
      userId: map['userId'],
      name: map['name'],
      content: map['content'],
      deductedPrice: map['deductedPrice'],
      minDeliveryPrice: map['minDeliveryPrice'],
      createdDate: DateTime.parse(map['createdDate']),
      modifiedDate: DateTime.parse(map['modifiedDate']),
      expirationDate: DateTime.parse(map['expirationDate']),  // 만료일 추가
      status: CouponStatus.values.firstWhere(
            (e) => e.toString().split('.').last == map['status'],
      ),
    );
  }

  bool isValid() {
    final now = DateTime.now();
    return status == CouponStatus.active && now.isBefore(expirationDate);
  }
}