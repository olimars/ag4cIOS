import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'class_avali_record.g.dart';

abstract class ClassAvaliRecord
    implements Built<ClassAvaliRecord, ClassAvaliRecordBuilder> {
  static Serializer<ClassAvaliRecord> get serializer =>
      _$classAvaliRecordSerializer;

  @BuiltValueField(wireName: 'Autoconhecimento')
  int? get autoconhecimento;

  @BuiltValueField(wireName: 'Autogestao')
  int? get autogestao;

  @BuiltValueField(wireName: 'TRD')
  int? get trd;

  @BuiltValueField(wireName: 'CI')
  int? get ci;

  @BuiltValueField(wireName: 'CS')
  int? get cs;

  @BuiltValueField(wireName: 'Descicao')
  String? get descicao;

  @BuiltValueField(wireName: 'Date')
  DateTime? get date;

  @BuiltValueField(wireName: 'Classref')
  DocumentReference? get classref;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ClassAvaliRecordBuilder builder) => builder
    ..autoconhecimento = 0
    ..autogestao = 0
    ..trd = 0
    ..ci = 0
    ..cs = 0
    ..descicao = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ClassAvali');

  static Stream<ClassAvaliRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ClassAvaliRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ClassAvaliRecord._();
  factory ClassAvaliRecord([void Function(ClassAvaliRecordBuilder) updates]) =
      _$ClassAvaliRecord;

  static ClassAvaliRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createClassAvaliRecordData({
  int? autoconhecimento,
  int? autogestao,
  int? trd,
  int? ci,
  int? cs,
  String? descicao,
  DateTime? date,
  DocumentReference? classref,
}) {
  final firestoreData = serializers.toFirestore(
    ClassAvaliRecord.serializer,
    ClassAvaliRecord(
      (c) => c
        ..autoconhecimento = autoconhecimento
        ..autogestao = autogestao
        ..trd = trd
        ..ci = ci
        ..cs = cs
        ..descicao = descicao
        ..date = date
        ..classref = classref,
    ),
  );

  return firestoreData;
}
