import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HouseRecord extends FirestoreRecord {
  HouseRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "municipality" field.
  String? _municipality;
  String get municipality => _municipality ?? '';
  bool hasMunicipality() => _municipality != null;

  // "locality" field.
  String? _locality;
  String get locality => _locality ?? '';
  bool hasLocality() => _locality != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "created_by" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "created_by_name" field.
  String? _createdByName;
  String get createdByName => _createdByName ?? '';
  bool hasCreatedByName() => _createdByName != null;

  // "views" field.
  int? _views;
  int get views => _views ?? 0;
  bool hasViews() => _views != null;

  // "favorites" field.
  List<DocumentReference>? _favorites;
  List<DocumentReference> get favorites => _favorites ?? const [];
  bool hasFavorites() => _favorites != null;

  // "isFav" field.
  bool? _isFav;
  bool get isFav => _isFav ?? false;
  bool hasIsFav() => _isFav != null;

  // "likes" field.
  int? _likes;
  int get likes => _likes ?? 0;
  bool hasLikes() => _likes != null;

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  bool hasContact() => _contact != null;

  // "imageAlt" field.
  String? _imageAlt;
  String get imageAlt => _imageAlt ?? '';
  bool hasImageAlt() => _imageAlt != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  bool hasCurrency() => _currency != null;

  // "rentBy" field.
  String? _rentBy;
  String get rentBy => _rentBy ?? '';
  bool hasRentBy() => _rentBy != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _onSale = snapshotData['on_sale'] as bool?;
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _quantity = snapshotData['quantity'] as int?;
    _city = snapshotData['city'] as String?;
    _municipality = snapshotData['municipality'] as String?;
    _locality = snapshotData['locality'] as String?;
    _image = snapshotData['image'] as String?;
    _images = getDataList(snapshotData['images']);
    _type = snapshotData['type'] as String?;
    _createdBy = snapshotData['created_by'] as String?;
    _createdByName = snapshotData['created_by_name'] as String?;
    _views = snapshotData['views'] as int?;
    _favorites = getDataList(snapshotData['favorites']);
    _isFav = snapshotData['isFav'] as bool?;
    _likes = snapshotData['likes'] as int?;
    _contact = snapshotData['contact'] as String?;
    _imageAlt = snapshotData['imageAlt'] as String?;
    _currency = snapshotData['currency'] as String?;
    _rentBy = snapshotData['rentBy'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('house');

  static Stream<HouseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HouseRecord.fromSnapshot(s));

  static Future<HouseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HouseRecord.fromSnapshot(s));

  static HouseRecord fromSnapshot(DocumentSnapshot snapshot) => HouseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HouseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HouseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HouseRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createHouseRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? onSale,
  double? salePrice,
  int? quantity,
  String? city,
  String? municipality,
  String? locality,
  String? image,
  String? type,
  String? createdBy,
  String? createdByName,
  int? views,
  bool? isFav,
  int? likes,
  String? contact,
  String? imageAlt,
  String? currency,
  String? rentBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'specifications': specifications,
      'price': price,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'on_sale': onSale,
      'sale_price': salePrice,
      'quantity': quantity,
      'city': city,
      'municipality': municipality,
      'locality': locality,
      'image': image,
      'type': type,
      'created_by': createdBy,
      'created_by_name': createdByName,
      'views': views,
      'isFav': isFav,
      'likes': likes,
      'contact': contact,
      'imageAlt': imageAlt,
      'currency': currency,
      'rentBy': rentBy,
    }.withoutNulls,
  );

  return firestoreData;
}
