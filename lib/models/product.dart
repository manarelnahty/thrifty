/// Product model for thrifted items
class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String category;
  final String condition;
  final List<String> images;
  final String sellerName;
  final String sellerPhone;
  final String location;
  final bool isAvailable;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.category,
    required this.condition,
    required this.images,
    required this.sellerName,
    required this.sellerPhone,
    required this.location,
    this.isAvailable = true,
  });

  /// Create Product from JSON
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as String? ?? '',
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      category: json['category'] as String,
      condition: json['condition'] as String,
      images: List<String>.from(json['images'] as List),
      sellerName: json['sellerName'] as String,
      sellerPhone: json['sellerPhone'] as String,
      location: json['location'] as String,
      isAvailable: json['isAvailable'] as bool? ?? true,
    );
  }

  /// Convert Product to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'category': category,
      'condition': condition,
      'images': images,
      'sellerName': sellerName,
      'sellerPhone': sellerPhone,
      'location': location,
      'isAvailable': isAvailable,
    };
  }

  /// Copy with method for immutable updates
  Product copyWith({
    String? id,
    String? title,
    String? description,
    double? price,
    String? category,
    String? condition,
    List<String>? images,
    String? sellerName,
    String? sellerPhone,
    String? location,
    bool? isAvailable,
  }) {
    return Product(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      category: category ?? this.category,
      condition: condition ?? this.condition,
      images: images ?? this.images,
      sellerName: sellerName ?? this.sellerName,
      sellerPhone: sellerPhone ?? this.sellerPhone,
      location: location ?? this.location,
      isAvailable: isAvailable ?? this.isAvailable,
    );
  }
}

/// Product categories
enum ProductCategory {
  clothes('clothes', 'ملابس'),
  bags('bags', 'حقائب'),
  home('home', 'منزل'),
  all('all', 'الكل');

  final String value;
  final String arabicLabel;

  const ProductCategory(this.value, this.arabicLabel);

  static ProductCategory fromValue(String value) {
    return ProductCategory.values.firstWhere(
      (category) => category.value == value,
      orElse: () => ProductCategory.all,
    );
  }
}

/// Product condition
enum ProductCondition {
  used('used', 'مستعمل'),
  vintage('vintage', 'أنتيك'),
  handmade('handmade', 'يدوي الصنع');

  final String value;
  final String arabicLabel;

  const ProductCondition(this.value, this.arabicLabel);

  static ProductCondition fromValue(String value) {
    return ProductCondition.values.firstWhere(
      (condition) => condition.value == value,
      orElse: () => ProductCondition.used,
    );
  }
}
