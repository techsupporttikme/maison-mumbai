import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'loyalty_1_record.g.dart';

abstract class Loyalty1Record
    implements Built<Loyalty1Record, Loyalty1RecordBuilder> {
  static Serializer<Loyalty1Record> get serializer =>
      _$loyalty1RecordSerializer;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  String get uid;

  @nullable
  String get imageurl;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(Loyalty1RecordBuilder builder) => builder
    ..email = ''
    ..uid = ''
    ..imageurl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('loyalty-1');

  static Stream<Loyalty1Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  Loyalty1Record._();
  factory Loyalty1Record([void Function(Loyalty1RecordBuilder) updates]) =
      _$Loyalty1Record;

  static Loyalty1Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createLoyalty1RecordData({
  String email,
  DateTime createdTime,
  String uid,
  String imageurl,
}) =>
    serializers.toFirestore(
        Loyalty1Record.serializer,
        Loyalty1Record((l) => l
          ..email = email
          ..createdTime = createdTime
          ..uid = uid
          ..imageurl = imageurl));
