import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'games_record.g.dart';

abstract class GamesRecord implements Built<GamesRecord, GamesRecordBuilder> {
  static Serializer<GamesRecord> get serializer => _$gamesRecordSerializer;

  @BuiltValueField(wireName: 'Configurao')
  String? get configurao;

  String? get desafio;

  @BuiltValueField(wireName: 'ConfigImagum')
  String? get configImagum;

  @BuiltValueField(wireName: 'ConfigImagdois')
  String? get configImagdois;

  @BuiltValueField(wireName: 'ConfigImagtres')
  String? get configImagtres;

  @BuiltValueField(wireName: 'CompImag')
  String? get compImag;

  @BuiltValueField(wireName: 'Equipamento')
  String? get equipamento;

  @BuiltValueField(wireName: 'AdaptaSimplificar')
  String? get adaptaSimplificar;

  @BuiltValueField(wireName: 'AdaptaProgredir')
  String? get adaptaProgredir;

  @BuiltValueField(wireName: 'Reflexao')
  String? get reflexao;

  @BuiltValueField(wireName: 'Video')
  String? get video;

  DateTime? get time;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'CompeImags')
  String? get compeImags;

  @BuiltValueField(wireName: 'GameMenu')
  String? get gameMenu;

  @BuiltValueField(wireName: 'Idioma')
  String? get idioma;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GamesRecordBuilder builder) => builder
    ..configurao = ''
    ..desafio = ''
    ..configImagum = ''
    ..configImagdois = ''
    ..configImagtres = ''
    ..compImag = ''
    ..equipamento = ''
    ..adaptaSimplificar = ''
    ..adaptaProgredir = ''
    ..reflexao = ''
    ..video = ''
    ..name = ''
    ..compeImags = ''
    ..gameMenu = ''
    ..idioma = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Games');

  static Stream<GamesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GamesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GamesRecord._();
  factory GamesRecord([void Function(GamesRecordBuilder) updates]) =
      _$GamesRecord;

  static GamesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGamesRecordData({
  String? configurao,
  String? desafio,
  String? configImagum,
  String? configImagdois,
  String? configImagtres,
  String? compImag,
  String? equipamento,
  String? adaptaSimplificar,
  String? adaptaProgredir,
  String? reflexao,
  String? video,
  DateTime? time,
  String? name,
  String? compeImags,
  String? gameMenu,
  String? idioma,
}) {
  final firestoreData = serializers.toFirestore(
    GamesRecord.serializer,
    GamesRecord(
      (g) => g
        ..configurao = configurao
        ..desafio = desafio
        ..configImagum = configImagum
        ..configImagdois = configImagdois
        ..configImagtres = configImagtres
        ..compImag = compImag
        ..equipamento = equipamento
        ..adaptaSimplificar = adaptaSimplificar
        ..adaptaProgredir = adaptaProgredir
        ..reflexao = reflexao
        ..video = video
        ..time = time
        ..name = name
        ..compeImags = compeImags
        ..gameMenu = gameMenu
        ..idioma = idioma,
    ),
  );

  return firestoreData;
}
