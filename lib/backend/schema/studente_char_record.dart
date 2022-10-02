import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'studente_char_record.g.dart';

abstract class StudenteCharRecord
    implements Built<StudenteCharRecord, StudenteCharRecordBuilder> {
  static Serializer<StudenteCharRecord> get serializer =>
      _$studenteCharRecordSerializer;

  BuiltList<int>? get quest;

  BuiltList<int>? get resp;

  DateTime? get time;

  DocumentReference? get aluno;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StudenteCharRecordBuilder builder) => builder
    ..quest = ListBuilder()
    ..resp = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('studente_char');

  static Stream<StudenteCharRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StudenteCharRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StudenteCharRecord._();
  factory StudenteCharRecord(
          [void Function(StudenteCharRecordBuilder) updates]) =
      _$StudenteCharRecord;

  static StudenteCharRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStudenteCharRecordData({
  DateTime? time,
  DocumentReference? aluno,
}) {
  final firestoreData = serializers.toFirestore(
    StudenteCharRecord.serializer,
    StudenteCharRecord(
      (s) => s
        ..quest = null
        ..resp = null
        ..time = time
        ..aluno = aluno,
    ),
  );

  return firestoreData;
}
