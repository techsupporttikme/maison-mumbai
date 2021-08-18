import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'loyalty_4_record.g.dart';

abstract class Loyalty4Record
    implements Built<Loyalty4Record, Loyalty4RecordBuilder> {
  static Serializer<Loyalty4Record> get serializer =>
      _$loyalty4RecordSerializer;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  DateTime get createdAt;

  @nullable
  @BuiltValueField(wireName: 'loyalty-3')
  DocumentReference get loyalty3;

  @nullable
  String get uid;

  @nullable
  String get imageurl;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(Loyalty4RecordBuilder builder) => builder
    ..email = ''
    ..uid = ''
    ..imageurl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('loyalty-4');

  static Stream<Loyalty4Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  Loyalty4Record._();
  factory Loyalty4Record([void Function(Loyalty4RecordBuilder) updates]) =
      _$Loyalty4Record;

  static Loyalty4Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createLoyalty4RecordData({
  String email,
  DateTime createdAt,
  DocumentReference loyalty3,
  String uid,
  String imageurl,
}) =>
    serializers.toFirestore(
        Loyalty4Record.serializer,
        Loyalty4Record((l) => l
          ..email = email
          ..createdAt = createdAt
          ..loyalty3 = loyalty3
          ..uid = uid
          ..imageurl = imageurl));
