import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'game_competencia_record.g.dart';

abstract class GameCompetenciaRecord
    implements Built<GameCompetenciaRecord, GameCompetenciaRecordBuilder> {
  static Serializer<GameCompetenciaRecord> get serializer =>
      _$gameCompetenciaRecordSerializer;

  @BuiltValueField(wireName: 'Auticonhecimento')
  String? get auticonhecimento;

  @BuiltValueField(wireName: 'Autogesto')
  String? get autogesto;

  @BuiltValueField(wireName: 'TomadaRespon')
  String? get tomadaRespon;

  @BuiltValueField(wireName: 'ComptInterpe')
  String? get comptInterpe;

  @BuiltValueField(wireName: 'CompSocial')
  String? get compSocial;

  @BuiltValueField(wireName: 'Auto_Conhecimento')
  String? get autoConhecimento;

  @BuiltValueField(wireName: 'Auto_Gestao')
  String? get autoGestao;

  @BuiltValueField(wireName: 'Auto_Tomada_Respo')
  String? get autoTomadaRespo;

  @BuiltValueField(wireName: 'Auto_Comp_Inter')
  String? get autoCompInter;

  @BuiltValueField(wireName: 'Auto_Cons_Social')
  String? get autoConsSocial;

  @BuiltValueField(wireName: 'Idioma')
  String? get idioma;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GameCompetenciaRecordBuilder builder) =>
      builder
        ..auticonhecimento = ''
        ..autogesto = ''
        ..tomadaRespon = ''
        ..comptInterpe = ''
        ..compSocial = ''
        ..autoConhecimento = ''
        ..autoGestao = ''
        ..autoTomadaRespo = ''
        ..autoCompInter = ''
        ..autoConsSocial = ''
        ..idioma = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('GameCompetencia');

  static Stream<GameCompetenciaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GameCompetenciaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GameCompetenciaRecord._();
  factory GameCompetenciaRecord(
          [void Function(GameCompetenciaRecordBuilder) updates]) =
      _$GameCompetenciaRecord;

  static GameCompetenciaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGameCompetenciaRecordData({
  String? auticonhecimento,
  String? autogesto,
  String? tomadaRespon,
  String? comptInterpe,
  String? compSocial,
  String? autoConhecimento,
  String? autoGestao,
  String? autoTomadaRespo,
  String? autoCompInter,
  String? autoConsSocial,
  String? idioma,
}) {
  final firestoreData = serializers.toFirestore(
    GameCompetenciaRecord.serializer,
    GameCompetenciaRecord(
      (g) => g
        ..auticonhecimento = auticonhecimento
        ..autogesto = autogesto
        ..tomadaRespon = tomadaRespon
        ..comptInterpe = comptInterpe
        ..compSocial = compSocial
        ..autoConhecimento = autoConhecimento
        ..autoGestao = autoGestao
        ..autoTomadaRespo = autoTomadaRespo
        ..autoCompInter = autoCompInter
        ..autoConsSocial = autoConsSocial
        ..idioma = idioma,
    ),
  );

  return firestoreData;
}
