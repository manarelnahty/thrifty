import 'dart:convert';
import '../models/product.dart';

/// Service for managing products
/// Currently uses mock data, can be extended to use Firebase later
class ProductService {
  static final ProductService _instance = ProductService._internal();
  factory ProductService() => _instance;
  ProductService._internal();

  /// Mock product data in Arabic
  static const String _mockProductsJson = '''
  {
    "products": [
      {
        "id": "1",
        "title": "بنطلون جينز أزرق كلاسيك",
        "description": "بنطلون جينز حالة ممتازة، ستايل كاجوال يومي",
        "price": 220,
        "category": "clothes",
        "condition": "used",
        "images": [
          "https://i.pinimg.com/1200x/23/37/60/2337606247420a329368009ee29fb460.jpg"
        ],
        "sellerName": "سارة",
        "sellerPhone": "01012345678",
        "location": "القاهرة",
        "isAvailable": true
      },
      {
        "id": "2",
        "title": "توب بوهو أبيض",
        "description": "توب بوهو خفيف مناسب للصيف والخروجات",
        "price": 180,
        "category": "clothes",
        "condition": "used",
        "images": [
          "https://i.pinimg.com/1200x/50/f6/25/50f6253d0e7bc5b8e4ccf3864322a8b0.jpg"
        ],
        "sellerName": "منى",
        "sellerPhone": "01198765432",
        "location": "الجيزة",
        "isAvailable": true
      },
      {
        "id": "3",
        "title": "شنطة جلد Vintage",
        "description": "شنطة جلد قديم أصلي، ستايل أنتيك",
        "price": 350,
        "category": "bags",
        "condition": "vintage",
        "images": [
          "https://i.pinimg.com/1200x/af/15/e6/af15e6ded1172c4bdb58a838929edd1f.jpg"
        ],
        "sellerName": "دينا",
        "sellerPhone": "01234567890",
        "location": "الإسكندرية",
        "isAvailable": true
      },
      {
        "id": "4",
        "title": "مراية حائط أنتيكا",
        "description": "مراية قديمة بإطار خشب محفور يدويًا",
        "price": 600,
        "category": "home",
        "condition": "vintage",
        "images": [
          "https://i.pinimg.com/736x/07/f4/27/07f427b5cf86ec1aba294b77074d569c.jpg"
        ],
        "sellerName": "أحمد",
        "sellerPhone": "01055667788",
        "location": "المنصورة",
        "isAvailable": true
      },
      {
        "id": "5",
        "title": "طقم فناجين قهوة Handmade",
        "description": "طقم فناجين مصنوع يدويًا – قطعة فنية",
        "price": 420,
        "category": "home",
        "condition": "handmade",
        "images": [
          "https://i.pinimg.com/736x/06/78/c1/0678c12bb5acb9d93854013af00613a0.jpg"
        ],
        "sellerName": "ليلى",
        "sellerPhone": "01533445566",
        "location": "طنطا",
        "isAvailable": true
      },
      {
        "id": "6",
        "title": "منظم مكتب من خشب الزان",
        "description": "منظم عملي وأنيق مصنوع من خشب الزان الطبيعي",
        "price": 300,
        "category": "home",
        "condition": "handmade",
        "images": [
          "https://i.pinimg.com/1200x/57/db/e0/57dbe033e5037acb4a3082413c77b0b1.jpg"
        ],
        "sellerName": "محمود",
        "sellerPhone": "01099887766",
        "location": "القاهرة",
        "isAvailable": true
      }
    ]
  }
  ''';

  List<Product>? _cachedProducts;

  /// Get all products
  Future<List<Product>> getAllProducts() async {
    if (_cachedProducts != null) {
      return _cachedProducts!;
    }

    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 500));

    final jsonData = json.decode(_mockProductsJson);
    final List<dynamic> productsJson = jsonData['products'];

    _cachedProducts = productsJson
        .map((productJson) => Product.fromJson(productJson))
        .toList();

    return _cachedProducts!;
  }

  /// Get products by category
  Future<List<Product>> getProductsByCategory(String category) async {
    final allProducts = await getAllProducts();

    if (category == 'all') {
      return allProducts;
    }

    return allProducts
        .where((product) => product.category == category)
        .toList();
  }

  /// Search products by title or description
  Future<List<Product>> searchProducts(String query) async {
    final allProducts = await getAllProducts();

    if (query.isEmpty) {
      return allProducts;
    }

    final lowercaseQuery = query.toLowerCase();
    return allProducts.where((product) {
      return product.title.toLowerCase().contains(lowercaseQuery) ||
          product.description.toLowerCase().contains(lowercaseQuery);
    }).toList();
  }

  /// Get product by ID
  Future<Product?> getProductById(String id) async {
    final allProducts = await getAllProducts();
    try {
      return allProducts.firstWhere((product) => product.id == id);
    } catch (e) {
      return null;
    }
  }

  /// Clear cache (useful for refresh)
  void clearCache() {
    _cachedProducts = null;
  }
}
