import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'studente_record.g.dart';

abstract class StudenteRecord
    implements Built<StudenteRecord, StudenteRecordBuilder> {
  static Serializer<StudenteRecord> get serializer =>
      _$studenteRecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Genero')
  String? get genero;

  @BuiltValueField(wireName: 'Age')
  String? get age;

  @BuiltValueField(wireName: 'Timestamp')
  DateTime? get timestamp;

  @BuiltValueField(wireName: 'ClassR')
  DocumentReference? get classR;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StudenteRecordBuilder builder) => builder
    ..name = ''
    ..genero = ''
    ..age = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Studente');

  static Stream<StudenteRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StudenteRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StudenteRecord._();
  factory StudenteRecord([void Function(StudenteRecordBuilder) updates]) =
      _$StudenteRecord;

  static StudenteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStudenteRecordData({
  String? name,
  String? genero,
  String? age,
  DateTime? timestamp,
  DocumentReference? classR,
}) {
  final firestoreData = serializers.toFirestore(
    StudenteRecord.serializer,
    StudenteRecord(
      (s) => s
        ..name = name
        ..genero = genero
        ..age = age
        ..timestamp = timestamp
        ..classR = classR,
    ),
  );

  return firestoreData;
}
