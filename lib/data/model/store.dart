import 'dart:convert';
// 가게모델
class Store {
  final int id;
  final String name;
  final List<String> type;
  final int grade;
  final String category;
  final String address;
  final String storePictureUrl;
  final String phone;
  final String content;
  final int minDeliveryPrice;
  final int deliveryTip;
  final double rating;
  final int dibsCount;
  final int reviewCount;
  final String operationHours;
  final String closedDays;
  final String deliveryAddress;
  final int earnPointsPercentage;
  final int cashBackPercentage;
  final DateTime createdDate;
  final DateTime modifiedDate;
  final String status;

  Store({
    required this.id,
    required this.name,
    required this.type,
    required this.grade,
    required this.category,
    required this.address,
    required this.storePictureUrl,
    required this.phone,
    required this.content,
    required this.minDeliveryPrice,
    required this.deliveryTip,
    required this.rating,
    required this.dibsCount,
    required this.reviewCount,
    required this.operationHours,
    required this.closedDays,
    required this.deliveryAddress,
    required this.earnPointsPercentage,
    required this.cashBackPercentage,
    required this.createdDate,
    required this.modifiedDate,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'type': jsonEncode(type),
      'grade': grade,
      'category': category,
      'address': address,
      'storePictureUrl': storePictureUrl,
      'phone': phone,
      'content': content,
      'minDeliveryPrice': minDeliveryPrice,
      'deliveryTip': deliveryTip,
      'rating': rating,
      'dibsCount': dibsCount,
      'reviewCount': reviewCount,
      'operationHours': operationHours,
      'closedDays': closedDays,
      'deliveryAddress': deliveryAddress,
      'earnPointsPercentage': earnPointsPercentage,
      'cashBackPercentage': cashBackPercentage,
      'createdDate': createdDate.toIso8601String(),
      'modifiedDate': modifiedDate.toIso8601String(),
      'status': status,
    };
  }

  factory Store.fromMap(Map<String, dynamic> map) {
    return Store(
      id: map['id'],
      name: map['name'],
      type: List<String>.from(jsonDecode(map['type'])),
      grade: map['grade'],
      category: map['category'],
      address: map['address'],
      storePictureUrl: map['storePictureUrl'],
      phone: map['phone'],
      content: map['content'],
      minDeliveryPrice: map['minDeliveryPrice'],
      deliveryTip: map['deliveryTip'],
      rating: map['rating'],
      dibsCount: map['dibsCount'],
      reviewCount: map['reviewCount'],
      operationHours: map['operationHours'],
      closedDays: map['closedDays'],
      deliveryAddress: map['deliveryAddress'],
      earnPointsPercentage: map['earnPointsPercentage'],
      cashBackPercentage: map['cashBackPercentage'],
      createdDate: DateTime.parse(map['createdDate']),
      modifiedDate: DateTime.parse(map['modifiedDate']),
      status: map['status'],
    );
  }
}