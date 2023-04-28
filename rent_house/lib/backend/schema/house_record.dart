import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'house_record.g.dart';

abstract class HouseRecord implements Built<HouseRecord, HouseRecordBuilder> {
  static Serializer<HouseRecord> get serializer => _$houseRecordSerializer;

  String? get name;

  String? get description;

  String? get specifications;

  double? get price;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'modified_at')
  DateTime? get modifiedAt;

  @BuiltValueField(wireName: 'on_sale')
  bool? get onSale;

  @BuiltValueField(wireName: 'sale_price')
  double? get salePrice;

  int? get quantity;

  String? get city;

  String? get municipality;

  String? get locality;

  String? get image;

  int? get contact;

  BuiltList<String>? get images;

  String? get type;

  @BuiltValueField(wireName: 'created_by')
  String? get createdBy;

  @BuiltValueField(wireName: 'created_by_name')
  String? get createdByName;

  int? get views;

  BuiltList<DocumentReference>? get favorites;

  bool? get isFav;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HouseRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..specifications = ''
    ..price = 0.0
    ..onSale = false
    ..salePrice = 0.0
    ..quantity = 0
    ..city = ''
    ..municipality = ''
    ..locality = ''
    ..image = ''
    ..contact = 0
    ..images = ListBuilder()
    ..type = ''
    ..createdBy = ''
    ..createdByName = ''
    ..views = 0
    ..favorites = ListBuilder()
    ..isFav = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('house');

  static Stream<HouseRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HouseRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HouseRecord._();
  factory HouseRecord([void Function(HouseRecordBuilder) updates]) =
      _$HouseRecord;

  static HouseRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
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
  int? contact,
  String? type,
  String? createdBy,
  String? createdByName,
  int? views,
  bool? isFav,
}) {
  final firestoreData = serializers.toFirestore(
    HouseRecord.serializer,
    HouseRecord(
      (h) => h
        ..name = name
        ..description = description
        ..specifications = specifications
        ..price = price
        ..createdAt = createdAt
        ..modifiedAt = modifiedAt
        ..onSale = onSale
        ..salePrice = salePrice
        ..quantity = quantity
        ..city = city
        ..municipality = municipality
        ..locality = locality
        ..image = image
        ..contact = contact
        ..images = null
        ..type = type
        ..createdBy = createdBy
        ..createdByName = createdByName
        ..views = views
        ..favorites = null
        ..isFav = isFav,
    ),
  );

  return firestoreData;
}
