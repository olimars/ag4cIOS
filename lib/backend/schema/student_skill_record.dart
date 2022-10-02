import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'student_skill_record.g.dart';

abstract class StudentSkillRecord
    implements Built<StudentSkillRecord, StudentSkillRecordBuilder> {
  static Serializer<StudentSkillRecord> get serializer =>
      _$studentSkillRecordSerializer;

  @BuiltValueField(wireName: 'Quest1')
  int? get quest1;

  @BuiltValueField(wireName: 'Quest2')
  int? get quest2;

  @BuiltValueField(wireName: 'Quest3')
  int? get quest3;

  @BuiltValueField(wireName: 'Quest4')
  int? get quest4;

  @BuiltValueField(wireName: 'Quest5')
  int? get quest5;

  @BuiltValueField(wireName: 'Descicao')
  String? get descicao;

  @BuiltValueField(wireName: 'StudenteRef')
  DocumentReference? get studenteRef;

  @BuiltValueField(wireName: 'Time')
  DateTime? get time;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StudentSkillRecordBuilder builder) => builder
    ..quest1 = 0
    ..quest2 = 0
    ..quest3 = 0
    ..quest4 = 0
    ..quest5 = 0
    ..descicao = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Student_Skill');

  static Stream<StudentSkillRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StudentSkillRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StudentSkillRecord._();
  factory StudentSkillRecord(
          [void Function(StudentSkillRecordBuilder) updates]) =
      _$StudentSkillRecord;

  static StudentSkillRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStudentSkillRecordData({
  int? quest1,
  int? quest2,
  int? quest3,
  int? quest4,
  int? quest5,
  String? descicao,
  DocumentReference? studenteRef,
  DateTime? time,
}) {
  final firestoreData = serializers.toFirestore(
    StudentSkillRecord.serializer,
    StudentSkillRecord(
      (s) => s
        ..quest1 = quest1
        ..quest2 = quest2
        ..quest3 = quest3
        ..quest4 = quest4
        ..quest5 = quest5
        ..descicao = descicao
        ..studenteRef = studenteRef
        ..time = time,
    ),
  );

  return firestoreData;
}
