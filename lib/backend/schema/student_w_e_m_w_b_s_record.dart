import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'student_w_e_m_w_b_s_record.g.dart';

abstract class StudentWEMWBSRecord
    implements Built<StudentWEMWBSRecord, StudentWEMWBSRecordBuilder> {
  static Serializer<StudentWEMWBSRecord> get serializer =>
      _$studentWEMWBSRecordSerializer;

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

  @BuiltValueField(wireName: 'Quest6')
  int? get quest6;

  @BuiltValueField(wireName: 'Quest7')
  int? get quest7;

  @BuiltValueField(wireName: 'Quest8')
  int? get quest8;

  @BuiltValueField(wireName: 'Quest9')
  int? get quest9;

  @BuiltValueField(wireName: 'Quest10')
  int? get quest10;

  @BuiltValueField(wireName: 'Quest11')
  int? get quest11;

  @BuiltValueField(wireName: 'Quest12')
  int? get quest12;

  @BuiltValueField(wireName: 'Quest13')
  int? get quest13;

  @BuiltValueField(wireName: 'Quest14')
  int? get quest14;

  @BuiltValueField(wireName: 'StudentAref')
  DocumentReference? get studentAref;

  @BuiltValueField(wireName: 'Time')
  DateTime? get time;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StudentWEMWBSRecordBuilder builder) => builder
    ..quest1 = 0
    ..quest2 = 0
    ..quest3 = 0
    ..quest4 = 0
    ..quest5 = 0
    ..quest6 = 0
    ..quest7 = 0
    ..quest8 = 0
    ..quest9 = 0
    ..quest10 = 0
    ..quest11 = 0
    ..quest12 = 0
    ..quest13 = 0
    ..quest14 = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Student_WEMWBS');

  static Stream<StudentWEMWBSRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StudentWEMWBSRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StudentWEMWBSRecord._();
  factory StudentWEMWBSRecord(
          [void Function(StudentWEMWBSRecordBuilder) updates]) =
      _$StudentWEMWBSRecord;

  static StudentWEMWBSRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStudentWEMWBSRecordData({
  int? quest1,
  int? quest2,
  int? quest3,
  int? quest4,
  int? quest5,
  int? quest6,
  int? quest7,
  int? quest8,
  int? quest9,
  int? quest10,
  int? quest11,
  int? quest12,
  int? quest13,
  int? quest14,
  DocumentReference? studentAref,
  DateTime? time,
}) {
  final firestoreData = serializers.toFirestore(
    StudentWEMWBSRecord.serializer,
    StudentWEMWBSRecord(
      (s) => s
        ..quest1 = quest1
        ..quest2 = quest2
        ..quest3 = quest3
        ..quest4 = quest4
        ..quest5 = quest5
        ..quest6 = quest6
        ..quest7 = quest7
        ..quest8 = quest8
        ..quest9 = quest9
        ..quest10 = quest10
        ..quest11 = quest11
        ..quest12 = quest12
        ..quest13 = quest13
        ..quest14 = quest14
        ..studentAref = studentAref
        ..time = time,
    ),
  );

  return firestoreData;
}
