// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newposts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NewpostsRecord> _$newpostsRecordSerializer =
    new _$NewpostsRecordSerializer();

class _$NewpostsRecordSerializer
    implements StructuredSerializer<NewpostsRecord> {
  @override
  final Iterable<Type> types = const [NewpostsRecord, _$NewpostsRecord];
  @override
  final String wireName = 'NewpostsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, NewpostsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.title;
    if (value != null) {
      result
        ..add('Title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('Price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('Description')
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
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  NewpostsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewpostsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'Description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$NewpostsRecord extends NewpostsRecord {
  @override
  final String title;
  @override
  final double price;
  @override
  final String description;
  @override
  final BuiltList<String> images;
  @override
  final String imageUrl;
  @override
  final DocumentReference<Object> reference;

  factory _$NewpostsRecord([void Function(NewpostsRecordBuilder) updates]) =>
      (new NewpostsRecordBuilder()..update(updates)).build();

  _$NewpostsRecord._(
      {this.title,
      this.price,
      this.description,
      this.images,
      this.imageUrl,
      this.reference})
      : super._();

  @override
  NewpostsRecord rebuild(void Function(NewpostsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewpostsRecordBuilder toBuilder() =>
      new NewpostsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewpostsRecord &&
        title == other.title &&
        price == other.price &&
        description == other.description &&
        images == other.images &&
        imageUrl == other.imageUrl &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, title.hashCode), price.hashCode),
                    description.hashCode),
                images.hashCode),
            imageUrl.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewpostsRecord')
          ..add('Title', title)
          ..add('price', price)
          ..add('Description', description)
          ..add('images', images)
          ..add('imageUrl', imageUrl)
          ..add('reference', reference))
        .toString();
  }
}

class NewpostsRecordBuilder
    implements Builder<NewpostsRecord, NewpostsRecordBuilder> {
  _$NewpostsRecord _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  double _price;
  double get price => _$this._price;
  set price(double price) => _$this._price = price;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ListBuilder<String> _images;
  ListBuilder<String> get images =>
      _$this._images ??= new ListBuilder<String>();
  set images(ListBuilder<String> images) => _$this._images = images;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  NewpostsRecordBuilder() {
    NewpostsRecord._initializeBuilder(this);
  }

  NewpostsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _price = $v.price;
      _description = $v.description;
      _images = $v.images?.toBuilder();
      _imageUrl = $v.imageUrl;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewpostsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewpostsRecord;
  }

  @override
  void update(void Function(NewpostsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NewpostsRecord build() {
    _$NewpostsRecord _$result;
    try {
      _$result = _$v ??
          new _$NewpostsRecord._(
              title: title,
              price: price,
              description: description,
              images: _images?.build(),
              imageUrl: imageUrl,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NewpostsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
