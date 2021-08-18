import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'loyalty_3_record.g.dart';

abstract class Loyalty3Record
    implements Built<Loyalty3Record, Loyalty3RecordBuilder> {
  static Serializer<Loyalty3Record> get serializer =>
      _$loyalty3RecordSerializer;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'image-url')
  String get imageUrl;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(Loyalty3RecordBuilder builder) => builder
    ..email = ''
    ..uid = ''
    ..imageUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('loyalty-3');

  static Stream<Loyalty3Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  Loyalty3Record._();
  factory Loyalty3Record([void Function(Loyalty3RecordBuilder) updates]) =
      _$Loyalty3Record;

  static Loyalty3Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createLoyalty3RecordData({
  String email,
  DateTime createdTime,
  String uid,
  String imageUrl,
}) =>
    serializers.toFirestore(
        Loyalty3Record.serializer,
        Loyalty3Record((l) => l
          ..email = email
          ..createdTime = createdTime
          ..uid = uid
          ..imageUrl = imageUrl));
