import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'class_char_record.g.dart';

abstract class ClassCharRecord
    implements Built<ClassCharRecord, ClassCharRecordBuilder> {
  static Serializer<ClassCharRecord> get serializer =>
      _$classCharRecordSerializer;

  BuiltList<int>? get quest;

  BuiltList<int>? get resp;

  DateTime? get time;

  @BuiltValueField(wireName: 'class_ref')
  DocumentReference? get classRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ClassCharRecordBuilder builder) => builder
    ..quest = ListBuilder()
    ..resp = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('class_char');

  static Stream<ClassCharRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ClassCharRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ClassCharRecord._();
  factory ClassCharRecord([void Function(ClassCharRecordBuilder) updates]) =
      _$ClassCharRecord;

  static ClassCharRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createClassCharRecordData({
  DateTime? time,
  DocumentReference? classRef,
}) {
  final firestoreData = serializers.toFirestore(
    ClassCharRecord.serializer,
    ClassCharRecord(
      (c) => c
        ..quest = null
        ..resp = null
        ..time = time
        ..classRef = classRef,
    ),
  );

  return firestoreData;
}
