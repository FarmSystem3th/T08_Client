enum MenuCategory {
  chicken,
  pizza,
  korean,
  snack,
  porkFeet,
  chinese,
  japanese,
  fastFood,
  cafeAndDessert,
  western,
  nightSnack,
  lunchBox
}

// 메뉴모델
class Menu {
  final int id;
  final int storeId;
  final MenuCategory category;
  final String name;
  final int price;
  final String menuPictureUrl;
  final bool popularity;
  final DateTime createdDate;
  final DateTime modifiedDate;
  final String status;

  Menu({
    required this.id,
    required this.storeId,
    required this.category,
    required this.name,
    required this.price,
    required this.menuPictureUrl,
    required this.popularity,
    required this.createdDate,
    required this.modifiedDate,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'storeId': storeId,
      'category': category.toString().split('.').last,
      'name': name,
      'price': price,
      'menuPictureUrl': menuPictureUrl,
      'popularity': popularity ? 1 : 0,
      'createdDate': createdDate.toIso8601String(),
      'modifiedDate': modifiedDate.toIso8601String(),
      'status': status,
    };
  }

  factory Menu.fromMap(Map<String, dynamic> map) {
    return Menu(
      id: map['id'],
      storeId: map['storeId'],
      category: MenuCategory.values.firstWhere(
            (e) => e.toString().split('.').last == map['category'],
      ),
      name: map['name'],
      price: map['price'],
      menuPictureUrl: map['menuPictureUrl'],
      popularity: map['popularity'] == 1,
      createdDate: DateTime.parse(map['createdDate']),
      modifiedDate: DateTime.parse(map['modifiedDate']),
      status: map['status'],
    );
  }

  static String categoryToString(MenuCategory category) {
    switch (category) {
      case MenuCategory.chicken: return '치킨';
      case MenuCategory.pizza: return '피자';
      case MenuCategory.korean: return '한식';
      case MenuCategory.snack: return '분식';
      case MenuCategory.porkFeet: return '족발/보쌈';
      case MenuCategory.chinese: return '중식';
      case MenuCategory.japanese: return '돈까스/회/일식';
      case MenuCategory.fastFood: return '패스트푸드';
      case MenuCategory.cafeAndDessert: return '카페/디저트';
      case MenuCategory.western: return '아시안/양식';
      case MenuCategory.nightSnack: return '야식';
      case MenuCategory.lunchBox: return '도시락';
    }
  }

  static MenuCategory stringToCategory(String category) {
    switch (category) {
      case '치킨': return MenuCategory.chicken;
      case '피자': return MenuCategory.pizza;
      case '한식': return MenuCategory.korean;
      case '분식': return MenuCategory.snack;
      case '족발/보쌈': return MenuCategory.porkFeet;
      case '중식': return MenuCategory.chinese;
      case '돈까스/회/일식': return MenuCategory.japanese;
      case '패스트푸드': return MenuCategory.fastFood;
      case '카페/디저트': return MenuCategory.cafeAndDessert;
      case '아시안/양식': return MenuCategory.western;
      case '야식': return MenuCategory.nightSnack;
      case '도시락': return MenuCategory.lunchBox;
      default: throw ArgumentError('Invalid category: $category');
    }
  }
}