import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'newposts_record.g.dart';

abstract class NewpostsRecord
    implements Built<NewpostsRecord, NewpostsRecordBuilder> {
  static Serializer<NewpostsRecord> get serializer =>
      _$newpostsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Title')
  String get title;

  @nullable
  @BuiltValueField(wireName: 'Price')
  double get price;

  @nullable
  @BuiltValueField(wireName: 'Description')
  String get description;

  @nullable
  @BuiltValueField(wireName: 'Images')
  BuiltList<String> get images;

  @nullable
  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(NewpostsRecordBuilder builder) => builder
    ..title = ''
    ..price = 0.0
    ..description = ''
    ..images = ListBuilder()
    ..imageUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('newposts');

  static Stream<NewpostsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<NewpostsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  NewpostsRecord._();
  factory NewpostsRecord([void Function(NewpostsRecordBuilder) updates]) =
      _$NewpostsRecord;

  static NewpostsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createNewpostsRecordData({
  String title,
  double price,
  String description,
  String imageUrl,
}) =>
    serializers.toFirestore(
        NewpostsRecord.serializer,
        NewpostsRecord((n) => n
          ..title = title
          ..price = price
          ..description = description
          ..images = null
          ..imageUrl = imageUrl));
