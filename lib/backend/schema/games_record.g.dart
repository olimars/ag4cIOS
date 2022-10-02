// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'games_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GamesRecord> _$gamesRecordSerializer = new _$GamesRecordSerializer();

class _$GamesRecordSerializer implements StructuredSerializer<GamesRecord> {
  @override
  final Iterable<Type> types = const [GamesRecord, _$GamesRecord];
  @override
  final String wireName = 'GamesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, GamesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.configurao;
    if (value != null) {
      result
        ..add('Configurao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.desafio;
    if (value != null) {
      result
        ..add('desafio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.configImagum;
    if (value != null) {
      result
        ..add('ConfigImagum')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.configImagdois;
    if (value != null) {
      result
        ..add('ConfigImagdois')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.configImagtres;
    if (value != null) {
      result
        ..add('ConfigImagtres')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.compImag;
    if (value != null) {
      result
        ..add('CompImag')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.equipamento;
    if (value != null) {
      result
        ..add('Equipamento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adaptaSimplificar;
    if (value != null) {
      result
        ..add('AdaptaSimplificar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adaptaProgredir;
    if (value != null) {
      result
        ..add('AdaptaProgredir')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reflexao;
    if (value != null) {
      result
        ..add('Reflexao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('Video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.compeImags;
    if (value != null) {
      result
        ..add('CompeImags')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gameMenu;
    if (value != null) {
      result
        ..add('GameMenu')
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
  GamesRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GamesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Configurao':
          result.configurao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'desafio':
          result.desafio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ConfigImagum':
          result.configImagum = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ConfigImagdois':
          result.configImagdois = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ConfigImagtres':
          result.configImagtres = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CompImag':
          result.compImag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Equipamento':
          result.equipamento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'AdaptaSimplificar':
          result.adaptaSimplificar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'AdaptaProgredir':
          result.adaptaProgredir = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Reflexao':
          result.reflexao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CompeImags':
          result.compeImags = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'GameMenu':
          result.gameMenu = serializers.deserialize(value,
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

class _$GamesRecord extends GamesRecord {
  @override
  final String? configurao;
  @override
  final String? desafio;
  @override
  final String? configImagum;
  @override
  final String? configImagdois;
  @override
  final String? configImagtres;
  @override
  final String? compImag;
  @override
  final String? equipamento;
  @override
  final String? adaptaSimplificar;
  @override
  final String? adaptaProgredir;
  @override
  final String? reflexao;
  @override
  final String? video;
  @override
  final DateTime? time;
  @override
  final String? name;
  @override
  final String? compeImags;
  @override
  final String? gameMenu;
  @override
  final String? idioma;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GamesRecord([void Function(GamesRecordBuilder)? updates]) =>
      (new GamesRecordBuilder()..update(updates))._build();

  _$GamesRecord._(
      {this.configurao,
      this.desafio,
      this.configImagum,
      this.configImagdois,
      this.configImagtres,
      this.compImag,
      this.equipamento,
      this.adaptaSimplificar,
      this.adaptaProgredir,
      this.reflexao,
      this.video,
      this.time,
      this.name,
      this.compeImags,
      this.gameMenu,
      this.idioma,
      this.ffRef})
      : super._();

  @override
  GamesRecord rebuild(void Function(GamesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GamesRecordBuilder toBuilder() => new GamesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GamesRecord &&
        configurao == other.configurao &&
        desafio == other.desafio &&
        configImagum == other.configImagum &&
        configImagdois == other.configImagdois &&
        configImagtres == other.configImagtres &&
        compImag == other.compImag &&
        equipamento == other.equipamento &&
        adaptaSimplificar == other.adaptaSimplificar &&
        adaptaProgredir == other.adaptaProgredir &&
        reflexao == other.reflexao &&
        video == other.video &&
        time == other.time &&
        name == other.name &&
        compeImags == other.compeImags &&
        gameMenu == other.gameMenu &&
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
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        configurao
                                                                            .hashCode),
                                                                    desafio
                                                                        .hashCode),
                                                                configImagum
                                                                    .hashCode),
                                                            configImagdois
                                                                .hashCode),
                                                        configImagtres
                                                            .hashCode),
                                                    compImag.hashCode),
                                                equipamento.hashCode),
                                            adaptaSimplificar.hashCode),
                                        adaptaProgredir.hashCode),
                                    reflexao.hashCode),
                                video.hashCode),
                            time.hashCode),
                        name.hashCode),
                    compeImags.hashCode),
                gameMenu.hashCode),
            idioma.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GamesRecord')
          ..add('configurao', configurao)
          ..add('desafio', desafio)
          ..add('configImagum', configImagum)
          ..add('configImagdois', configImagdois)
          ..add('configImagtres', configImagtres)
          ..add('compImag', compImag)
          ..add('equipamento', equipamento)
          ..add('adaptaSimplificar', adaptaSimplificar)
          ..add('adaptaProgredir', adaptaProgredir)
          ..add('reflexao', reflexao)
          ..add('video', video)
          ..add('time', time)
          ..add('name', name)
          ..add('compeImags', compeImags)
          ..add('gameMenu', gameMenu)
          ..add('idioma', idioma)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GamesRecordBuilder implements Builder<GamesRecord, GamesRecordBuilder> {
  _$GamesRecord? _$v;

  String? _configurao;
  String? get configurao => _$this._configurao;
  set configurao(String? configurao) => _$this._configurao = configurao;

  String? _desafio;
  String? get desafio => _$this._desafio;
  set desafio(String? desafio) => _$this._desafio = desafio;

  String? _configImagum;
  String? get configImagum => _$this._configImagum;
  set configImagum(String? configImagum) => _$this._configImagum = configImagum;

  String? _configImagdois;
  String? get configImagdois => _$this._configImagdois;
  set configImagdois(String? configImagdois) =>
      _$this._configImagdois = configImagdois;

  String? _configImagtres;
  String? get configImagtres => _$this._configImagtres;
  set configImagtres(String? configImagtres) =>
      _$this._configImagtres = configImagtres;

  String? _compImag;
  String? get compImag => _$this._compImag;
  set compImag(String? compImag) => _$this._compImag = compImag;

  String? _equipamento;
  String? get equipamento => _$this._equipamento;
  set equipamento(String? equipamento) => _$this._equipamento = equipamento;

  String? _adaptaSimplificar;
  String? get adaptaSimplificar => _$this._adaptaSimplificar;
  set adaptaSimplificar(String? adaptaSimplificar) =>
      _$this._adaptaSimplificar = adaptaSimplificar;

  String? _adaptaProgredir;
  String? get adaptaProgredir => _$this._adaptaProgredir;
  set adaptaProgredir(String? adaptaProgredir) =>
      _$this._adaptaProgredir = adaptaProgredir;

  String? _reflexao;
  String? get reflexao => _$this._reflexao;
  set reflexao(String? reflexao) => _$this._reflexao = reflexao;

  String? _video;
  String? get video => _$this._video;
  set video(String? video) => _$this._video = video;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _compeImags;
  String? get compeImags => _$this._compeImags;
  set compeImags(String? compeImags) => _$this._compeImags = compeImags;

  String? _gameMenu;
  String? get gameMenu => _$this._gameMenu;
  set gameMenu(String? gameMenu) => _$this._gameMenu = gameMenu;

  String? _idioma;
  String? get idioma => _$this._idioma;
  set idioma(String? idioma) => _$this._idioma = idioma;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GamesRecordBuilder() {
    GamesRecord._initializeBuilder(this);
  }

  GamesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurao = $v.configurao;
      _desafio = $v.desafio;
      _configImagum = $v.configImagum;
      _configImagdois = $v.configImagdois;
      _configImagtres = $v.configImagtres;
      _compImag = $v.compImag;
      _equipamento = $v.equipamento;
      _adaptaSimplificar = $v.adaptaSimplificar;
      _adaptaProgredir = $v.adaptaProgredir;
      _reflexao = $v.reflexao;
      _video = $v.video;
      _time = $v.time;
      _name = $v.name;
      _compeImags = $v.compeImags;
      _gameMenu = $v.gameMenu;
      _idioma = $v.idioma;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GamesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GamesRecord;
  }

  @override
  void update(void Function(GamesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GamesRecord build() => _build();

  _$GamesRecord _build() {
    final _$result = _$v ??
        new _$GamesRecord._(
            configurao: configurao,
            desafio: desafio,
            configImagum: configImagum,
            configImagdois: configImagdois,
            configImagtres: configImagtres,
            compImag: compImag,
            equipamento: equipamento,
            adaptaSimplificar: adaptaSimplificar,
            adaptaProgredir: adaptaProgredir,
            reflexao: reflexao,
            video: video,
            time: time,
            name: name,
            compeImags: compeImags,
            gameMenu: gameMenu,
            idioma: idioma,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
