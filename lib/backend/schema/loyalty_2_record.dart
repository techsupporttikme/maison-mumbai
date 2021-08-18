import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'loyalty_2_record.g.dart';

abstract class Loyalty2Record
    implements Built<Loyalty2Record, Loyalty2RecordBuilder> {
  static Serializer<Loyalty2Record> get serializer =>
      _$loyalty2RecordSerializer;

  @nullable
  String get email;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  DateTime get createdAt;

  @nullable
  @BuiltValueField(wireName: 'loyalty-1')
  DocumentReference get loyalty1;

  @nullable
  String get imageurl;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(Loyalty2RecordBuilder builder) => builder
    ..email = ''
    ..uid = ''
    ..imageurl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('loyalty-2');

  static Stream<Loyalty2Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  Loyalty2Record._();
  factory Loyalty2Record([void Function(Loyalty2RecordBuilder) updates]) =
      _$Loyalty2Record;

  static Loyalty2Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createLoyalty2RecordData({
  String email,
  String uid,
  DateTime createdAt,
  DocumentReference loyalty1,
  String imageurl,
}) =>
    serializers.toFirestore(
        Loyalty2Record.serializer,
        Loyalty2Record((l) => l
          ..email = email
          ..uid = uid
          ..createdAt = createdAt
          ..loyalty1 = loyalty1
          ..imageurl = imageurl));
