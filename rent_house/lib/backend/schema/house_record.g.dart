// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HouseRecord> _$houseRecordSerializer = new _$HouseRecordSerializer();

class _$HouseRecordSerializer implements StructuredSerializer<HouseRecord> {
  @override
  final Iterable<Type> types = const [HouseRecord, _$HouseRecord];
  @override
  final String wireName = 'HouseRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, HouseRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.specifications;
    if (value != null) {
      result
        ..add('specifications')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.modifiedAt;
    if (value != null) {
      result
        ..add('modified_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.onSale;
    if (value != null) {
      result
        ..add('on_sale')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.salePrice;
    if (value != null) {
      result
        ..add('sale_price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.municipality;
    if (value != null) {
      result
        ..add('municipality')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.locality;
    if (value != null) {
      result
        ..add('locality')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.images;
    if (value != null) {
      result
        ..add('images')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdBy;
    if (value != null) {
      result
        ..add('created_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdByName;
    if (value != null) {
      result
        ..add('created_by_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.views;
    if (value != null) {
      result
        ..add('views')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.favorites;
    if (value != null) {
      result
        ..add('favorites')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.isFav;
    if (value != null) {
      result
        ..add('isFav')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.likes;
    if (value != null) {
      result
        ..add('likes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.contact;
    if (value != null) {
      result
        ..add('contact')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  HouseRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HouseRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'specifications':
          result.specifications = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'modified_at':
          result.modifiedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'on_sale':
          result.onSale = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'sale_price':
          result.salePrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'municipality':
          result.municipality = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'locality':
          result.locality = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_by':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_by_name':
          result.createdByName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'views':
          result.views = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'favorites':
          result.favorites.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'isFav':
          result.isFav = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'contact':
          result.contact = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$HouseRecord extends HouseRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? specifications;
  @override
  final double? price;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? modifiedAt;
  @override
  final bool? onSale;
  @override
  final double? salePrice;
  @override
  final int? quantity;
  @override
  final String? city;
  @override
  final String? municipality;
  @override
  final String? locality;
  @override
  final String? image;
  @override
  final BuiltList<String>? images;
  @override
  final String? type;
  @override
  final String? createdBy;
  @override
  final String? createdByName;
  @override
  final int? views;
  @override
  final BuiltList<DocumentReference<Object?>>? favorites;
  @override
  final bool? isFav;
  @override
  final int? likes;
  @override
  final String? contact;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HouseRecord([void Function(HouseRecordBuilder)? updates]) =>
      (new HouseRecordBuilder()..update(updates))._build();

  _$HouseRecord._(
      {this.name,
      this.description,
      this.specifications,
      this.price,
      this.createdAt,
      this.modifiedAt,
      this.onSale,
      this.salePrice,
      this.quantity,
      this.city,
      this.municipality,
      this.locality,
      this.image,
      this.images,
      this.type,
      this.createdBy,
      this.createdByName,
      this.views,
      this.favorites,
      this.isFav,
      this.likes,
      this.contact,
      this.ffRef})
      : super._();

  @override
  HouseRecord rebuild(void Function(HouseRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HouseRecordBuilder toBuilder() => new HouseRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HouseRecord &&
        name == other.name &&
        description == other.description &&
        specifications == other.specifications &&
        price == other.price &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt &&
        onSale == other.onSale &&
        salePrice == other.salePrice &&
        quantity == other.quantity &&
        city == other.city &&
        municipality == other.municipality &&
        locality == other.locality &&
        image == other.image &&
        images == other.images &&
        type == other.type &&
        createdBy == other.createdBy &&
        createdByName == other.createdByName &&
        views == other.views &&
        favorites == other.favorites &&
        isFav == other.isFav &&
        likes == other.likes &&
        contact == other.contact &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, specifications.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jc(_$hash, onSale.hashCode);
    _$hash = $jc(_$hash, salePrice.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, municipality.hashCode);
    _$hash = $jc(_$hash, locality.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, createdByName.hashCode);
    _$hash = $jc(_$hash, views.hashCode);
    _$hash = $jc(_$hash, favorites.hashCode);
    _$hash = $jc(_$hash, isFav.hashCode);
    _$hash = $jc(_$hash, likes.hashCode);
    _$hash = $jc(_$hash, contact.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HouseRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('specifications', specifications)
          ..add('price', price)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt)
          ..add('onSale', onSale)
          ..add('salePrice', salePrice)
          ..add('quantity', quantity)
          ..add('city', city)
          ..add('municipality', municipality)
          ..add('locality', locality)
          ..add('image', image)
          ..add('images', images)
          ..add('type', type)
          ..add('createdBy', createdBy)
          ..add('createdByName', createdByName)
          ..add('views', views)
          ..add('favorites', favorites)
          ..add('isFav', isFav)
          ..add('likes', likes)
          ..add('contact', contact)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HouseRecordBuilder implements Builder<HouseRecord, HouseRecordBuilder> {
  _$HouseRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _specifications;
  String? get specifications => _$this._specifications;
  set specifications(String? specifications) =>
      _$this._specifications = specifications;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _$this._modifiedAt;
  set modifiedAt(DateTime? modifiedAt) => _$this._modifiedAt = modifiedAt;

  bool? _onSale;
  bool? get onSale => _$this._onSale;
  set onSale(bool? onSale) => _$this._onSale = onSale;

  double? _salePrice;
  double? get salePrice => _$this._salePrice;
  set salePrice(double? salePrice) => _$this._salePrice = salePrice;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _municipality;
  String? get municipality => _$this._municipality;
  set municipality(String? municipality) => _$this._municipality = municipality;

  String? _locality;
  String? get locality => _$this._locality;
  set locality(String? locality) => _$this._locality = locality;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  ListBuilder<String>? _images;
  ListBuilder<String> get images =>
      _$this._images ??= new ListBuilder<String>();
  set images(ListBuilder<String>? images) => _$this._images = images;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  String? _createdByName;
  String? get createdByName => _$this._createdByName;
  set createdByName(String? createdByName) =>
      _$this._createdByName = createdByName;

  int? _views;
  int? get views => _$this._views;
  set views(int? views) => _$this._views = views;

  ListBuilder<DocumentReference<Object?>>? _favorites;
  ListBuilder<DocumentReference<Object?>> get favorites =>
      _$this._favorites ??= new ListBuilder<DocumentReference<Object?>>();
  set favorites(ListBuilder<DocumentReference<Object?>>? favorites) =>
      _$this._favorites = favorites;

  bool? _isFav;
  bool? get isFav => _$this._isFav;
  set isFav(bool? isFav) => _$this._isFav = isFav;

  int? _likes;
  int? get likes => _$this._likes;
  set likes(int? likes) => _$this._likes = likes;

  String? _contact;
  String? get contact => _$this._contact;
  set contact(String? contact) => _$this._contact = contact;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HouseRecordBuilder() {
    HouseRecord._initializeBuilder(this);
  }

  HouseRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _specifications = $v.specifications;
      _price = $v.price;
      _createdAt = $v.createdAt;
      _modifiedAt = $v.modifiedAt;
      _onSale = $v.onSale;
      _salePrice = $v.salePrice;
      _quantity = $v.quantity;
      _city = $v.city;
      _municipality = $v.municipality;
      _locality = $v.locality;
      _image = $v.image;
      _images = $v.images?.toBuilder();
      _type = $v.type;
      _createdBy = $v.createdBy;
      _createdByName = $v.createdByName;
      _views = $v.views;
      _favorites = $v.favorites?.toBuilder();
      _isFav = $v.isFav;
      _likes = $v.likes;
      _contact = $v.contact;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HouseRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HouseRecord;
  }

  @override
  void update(void Function(HouseRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HouseRecord build() => _build();

  _$HouseRecord _build() {
    _$HouseRecord _$result;
    try {
      _$result = _$v ??
          new _$HouseRecord._(
              name: name,
              description: description,
              specifications: specifications,
              price: price,
              createdAt: createdAt,
              modifiedAt: modifiedAt,
              onSale: onSale,
              salePrice: salePrice,
              quantity: quantity,
              city: city,
              municipality: municipality,
              locality: locality,
              image: image,
              images: _images?.build(),
              type: type,
              createdBy: createdBy,
              createdByName: createdByName,
              views: views,
              favorites: _favorites?.build(),
              isFav: isFav,
              likes: likes,
              contact: contact,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();

        _$failedField = 'favorites';
        _favorites?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HouseRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
