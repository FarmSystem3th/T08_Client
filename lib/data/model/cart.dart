// 장바구니모델
class Cart {
  final int id;
  final int userId;
  final int? orderId;  // null 가능 (주문 전에는 null일 수 있음)
  final int menuOptionId;
  final int menuId;
  final int quantity;
  final DateTime createdDate;
  final DateTime modifiedDate;

  Cart({
    required this.id,
    required this.userId,
    this.orderId,
    required this.menuOptionId,
    required this.menuId,
    required this.quantity,
    required this.createdDate,
    required this.modifiedDate,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'orderId': orderId,
      'menuOptionId': menuOptionId,
      'menuId': menuId,
      'quantity': quantity,
      'createdDate': createdDate.toIso8601String(),
      'modifiedDate': modifiedDate.toIso8601String(),
    };
  }

  factory Cart.fromMap(Map<String, dynamic> map) {
    return Cart(
      id: map['id'],
      userId: map['userId'],
      orderId: map['orderId'],
      menuOptionId: map['menuOptionId'],
      menuId: map['menuId'],
      quantity: map['quantity'],
      createdDate: DateTime.parse(map['createdDate']),
      modifiedDate: DateTime.parse(map['modifiedDate']),
    );
  }
}