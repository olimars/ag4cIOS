// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_competencia_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GameCompetenciaRecord> _$gameCompetenciaRecordSerializer =
    new _$GameCompetenciaRecordSerializer();

class _$GameCompetenciaRecordSerializer
    implements StructuredSerializer<GameCompetenciaRecord> {
  @override
  final Iterable<Type> types = const [
    GameCompetenciaRecord,
    _$GameCompetenciaRecord
  ];
  @override
  final String wireName = 'GameCompetenciaRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GameCompetenciaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.auticonhecimento;
    if (value != null) {
      result
        ..add('Auticonhecimento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.autogesto;
    if (value != null) {
      result
        ..add('Autogesto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tomadaRespon;
    if (value != null) {
      result
        ..add('TomadaRespon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comptInterpe;
    if (value != null) {
      result
        ..add('ComptInterpe')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.compSocial;
    if (value != null) {
      result
        ..add('CompSocial')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.autoConhecimento;
    if (value != null) {
      result
        ..add('Auto_Conhecimento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.autoGestao;
    if (value != null) {
      result
        ..add('Auto_Gestao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.autoTomadaRespo;
    if (value != null) {
      result
        ..add('Auto_Tomada_Respo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.autoCompInter;
    if (value != null) {
      result
        ..add('Auto_Comp_Inter')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.autoConsSocial;
    if (value != null) {
      result
        ..add('Auto_Cons_Social')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idioma;
    if (value != null) {
      result
        ..add('Idioma')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  GameCompetenciaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GameCompetenciaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Auticonhecimento':
          result.auticonhecimento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Autogesto':
          result.autogesto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'TomadaRespon':
          result.tomadaRespon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ComptInterpe':
          result.comptInterpe = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CompSocial':
          result.compSocial = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Auto_Conhecimento':
          result.autoConhecimento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Auto_Gestao':
          result.autoGestao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Auto_Tomada_Respo':
          result.autoTomadaRespo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Auto_Comp_Inter':
          result.autoCompInter = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Auto_Cons_Social':
          result.autoConsSocial = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Idioma':
          result.idioma = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$GameCompetenciaRecord extends GameCompetenciaRecord {
  @override
  final String? auticonhecimento;
  @override
  final String? autogesto;
  @override
  final String? tomadaRespon;
  @override
  final String? comptInterpe;
  @override
  final String? compSocial;
  @override
  final String? autoConhecimento;
  @override
  final String? autoGestao;
  @override
  final String? autoTomadaRespo;
  @override
  final String? autoCompInter;
  @override
  final String? autoConsSocial;
  @override
  final String? idioma;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GameCompetenciaRecord(
          [void Function(GameCompetenciaRecordBuilder)? updates]) =>
      (new GameCompetenciaRecordBuilder()..update(updates))._build();

  _$GameCompetenciaRecord._(
      {this.auticonhecimento,
      this.autogesto,
      this.tomadaRespon,
      this.comptInterpe,
      this.compSocial,
      this.autoConhecimento,
      this.autoGestao,
      this.autoTomadaRespo,
      this.autoCompInter,
      this.autoConsSocial,
      this.idioma,
      this.ffRef})
      : super._();

  @override
  GameCompetenciaRecord rebuild(
          void Function(GameCompetenciaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameCompetenciaRecordBuilder toBuilder() =>
      new GameCompetenciaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GameCompetenciaRecord &&
        auticonhecimento == other.auticonhecimento &&
        autogesto == other.autogesto &&
        tomadaRespon == other.tomadaRespon &&
        comptInterpe == other.comptInterpe &&
        compSocial == other.compSocial &&
        autoConhecimento == other.autoConhecimento &&
        autoGestao == other.autoGestao &&
        autoTomadaRespo == other.autoTomadaRespo &&
        autoCompInter == other.autoCompInter &&
        autoConsSocial == other.autoConsSocial &&
        idioma == other.idioma &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(0,
                                                    auticonhecimento.hashCode),
                                                autogesto.hashCode),
                                            tomadaRespon.hashCode),
                                        comptInterpe.hashCode),
                                    compSocial.hashCode),
                                autoConhecimento.hashCode),
                            autoGestao.hashCode),
                        autoTomadaRespo.hashCode),
                    autoCompInter.hashCode),
                autoConsSocial.hashCode),
            idioma.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GameCompetenciaRecord')
          ..add('auticonhecimento', auticonhecimento)
          ..add('autogesto', autogesto)
          ..add('tomadaRespon', tomadaRespon)
          ..add('comptInterpe', comptInterpe)
          ..add('compSocial', compSocial)
          ..add('autoConhecimento', autoConhecimento)
          ..add('autoGestao', autoGestao)
          ..add('autoTomadaRespo', autoTomadaRespo)
          ..add('autoCompInter', autoCompInter)
          ..add('autoConsSocial', autoConsSocial)
          ..add('idioma', idioma)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GameCompetenciaRecordBuilder
    implements Builder<GameCompetenciaRecord, GameCompetenciaRecordBuilder> {
  _$GameCompetenciaRecord? _$v;

  String? _auticonhecimento;
  String? get auticonhecimento => _$this._auticonhecimento;
  set auticonhecimento(String? auticonhecimento) =>
      _$this._auticonhecimento = auticonhecimento;

  String? _autogesto;
  String? get autogesto => _$this._autogesto;
  set autogesto(String? autogesto) => _$this._autogesto = autogesto;

  String? _tomadaRespon;
  String? get tomadaRespon => _$this._tomadaRespon;
  set tomadaRespon(String? tomadaRespon) => _$this._tomadaRespon = tomadaRespon;

  String? _comptInterpe;
  String? get comptInterpe => _$this._comptInterpe;
  set comptInterpe(String? comptInterpe) => _$this._comptInterpe = comptInterpe;

  String? _compSocial;
  String? get compSocial => _$this._compSocial;
  set compSocial(String? compSocial) => _$this._compSocial = compSocial;

  String? _autoConhecimento;
  String? get autoConhecimento => _$this._autoConhecimento;
  set autoConhecimento(String? autoConhecimento) =>
      _$this._autoConhecimento = autoConhecimento;

  String? _autoGestao;
  String? get autoGestao => _$this._autoGestao;
  set autoGestao(String? autoGestao) => _$this._autoGestao = autoGestao;

  String? _autoTomadaRespo;
  String? get autoTomadaRespo => _$this._autoTomadaRespo;
  set autoTomadaRespo(String? autoTomadaRespo) =>
      _$this._autoTomadaRespo = autoTomadaRespo;

  String? _autoCompInter;
  String? get autoCompInter => _$this._autoCompInter;
  set autoCompInter(String? autoCompInter) =>
      _$this._autoCompInter = autoCompInter;

  String? _autoConsSocial;
  String? get autoConsSocial => _$this._autoConsSocial;
  set autoConsSocial(String? autoConsSocial) =>
      _$this._autoConsSocial = autoConsSocial;

  String? _idioma;
  String? get idioma => _$this._idioma;
  set idioma(String? idioma) => _$this._idioma = idioma;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GameCompetenciaRecordBuilder() {
    GameCompetenciaRecord._initializeBuilder(this);
  }

  GameCompetenciaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _auticonhecimento = $v.auticonhecimento;
      _autogesto = $v.autogesto;
      _tomadaRespon = $v.tomadaRespon;
      _comptInterpe = $v.comptInterpe;
      _compSocial = $v.compSocial;
      _autoConhecimento = $v.autoConhecimento;
      _autoGestao = $v.autoGestao;
      _autoTomadaRespo = $v.autoTomadaRespo;
      _autoCompInter = $v.autoCompInter;
      _autoConsSocial = $v.autoConsSocial;
      _idioma = $v.idioma;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GameCompetenciaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GameCompetenciaRecord;
  }

  @override
  void update(void Function(GameCompetenciaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GameCompetenciaRecord build() => _build();

  _$GameCompetenciaRecord _build() {
    final _$result = _$v ??
        new _$GameCompetenciaRecord._(
            auticonhecimento: auticonhecimento,
            autogesto: autogesto,
            tomadaRespon: tomadaRespon,
            comptInterpe: comptInterpe,
            compSocial: compSocial,
            autoConhecimento: autoConhecimento,
            autoGestao: autoGestao,
            autoTomadaRespo: autoTomadaRespo,
            autoCompInter: autoCompInter,
            autoConsSocial: autoConsSocial,
            idioma: idioma,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
