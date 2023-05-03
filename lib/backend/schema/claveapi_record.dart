import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'claveapi_record.g.dart';

abstract class ClaveapiRecord
    implements Built<ClaveapiRecord, ClaveapiRecordBuilder> {
  static Serializer<ClaveapiRecord> get serializer =>
      _$claveapiRecordSerializer;

  BuiltList<String>? get claveapi;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ClaveapiRecordBuilder builder) =>
      builder..claveapi = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('claveapi');

  static Stream<ClaveapiRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ClaveapiRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ClaveapiRecord._();
  factory ClaveapiRecord([void Function(ClaveapiRecordBuilder) updates]) =
      _$ClaveapiRecord;

  static ClaveapiRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createClaveapiRecordData() {
  final firestoreData = serializers.toFirestore(
    ClaveapiRecord.serializer,
    ClaveapiRecord(
      (c) => c..claveapi = null,
    ),
  );

  return firestoreData;
}
