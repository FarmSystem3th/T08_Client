// 주문모델
class Order {
  final int id;
  final int userId;
  final int storeId;
  final String paymentMethod;
  final int totalPrice;
  final String requests;
  final DateTime createdDate;
  final DateTime modifiedDate;
  final String status;

  Order({
    required this.id,
    required this.userId,
    required this.storeId,
    required this.paymentMethod,
    required this.totalPrice,
    required this.requests,
    required this.createdDate,
    required this.modifiedDate,
    required this.status,
  });

  // Convert an Order instance into a Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'storeId': storeId,
      'paymentMethod': paymentMethod,
      'totalPrice': totalPrice,
      'requests': requests,
      'createdDate': createdDate.toIso8601String(),
      'modifiedDate': modifiedDate.toIso8601String(),
      'status': status,
    };
  }

  // Create an Order instance from a Map
  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      id: map['id'],
      userId: map['userId'],
      storeId: map['storeId'],
      paymentMethod: map['paymentMethod'],
      totalPrice: map['totalPrice'],
      requests: map['requests'],
      createdDate: DateTime.parse(map['createdDate']),
      modifiedDate: DateTime.parse(map['modifiedDate']),
      status: map['status'],
    );
  }
}