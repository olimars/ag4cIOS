// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_avali_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ClassAvaliRecord> _$classAvaliRecordSerializer =
    new _$ClassAvaliRecordSerializer();

class _$ClassAvaliRecordSerializer
    implements StructuredSerializer<ClassAvaliRecord> {
  @override
  final Iterable<Type> types = const [ClassAvaliRecord, _$ClassAvaliRecord];
  @override
  final String wireName = 'ClassAvaliRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ClassAvaliRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.autoconhecimento;
    if (value != null) {
      result
        ..add('Autoconhecimento')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.autogestao;
    if (value != null) {
      result
        ..add('Autogestao')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.trd;
    if (value != null) {
      result
        ..add('TRD')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ci;
    if (value != null) {
      result
        ..add('CI')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cs;
    if (value != null) {
      result
        ..add('CS')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.descicao;
    if (value != null) {
      result
        ..add('Descicao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.classref;
    if (value != null) {
      result
        ..add('Classref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  ClassAvaliRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClassAvaliRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Autoconhecimento':
          result.autoconhecimento = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Autogestao':
          result.autogestao = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'TRD':
          result.trd = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'CI':
          result.ci = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'CS':
          result.cs = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Descicao':
          result.descicao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Classref':
          result.classref = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$ClassAvaliRecord extends ClassAvaliRecord {
  @override
  final int? autoconhecimento;
  @override
  final int? autogestao;
  @override
  final int? trd;
  @override
  final int? ci;
  @override
  final int? cs;
  @override
  final String? descicao;
  @override
  final DateTime? date;
  @override
  final DocumentReference<Object?>? classref;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ClassAvaliRecord(
          [void Function(ClassAvaliRecordBuilder)? updates]) =>
      (new ClassAvaliRecordBuilder()..update(updates))._build();

  _$ClassAvaliRecord._(
      {this.autoconhecimento,
      this.autogestao,
      this.trd,
      this.ci,
      this.cs,
      this.descicao,
      this.date,
      this.classref,
      this.ffRef})
      : super._();

  @override
  ClassAvaliRecord rebuild(void Function(ClassAvaliRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClassAvaliRecordBuilder toBuilder() =>
      new ClassAvaliRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClassAvaliRecord &&
        autoconhecimento == other.autoconhecimento &&
        autogestao == other.autogestao &&
        trd == other.trd &&
        ci == other.ci &&
        cs == other.cs &&
        descicao == other.descicao &&
        date == other.date &&
        classref == other.classref &&
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
                                $jc($jc(0, autoconhecimento.hashCode),
                                    autogestao.hashCode),
                                trd.hashCode),
                            ci.hashCode),
                        cs.hashCode),
                    descicao.hashCode),
                date.hashCode),
            classref.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClassAvaliRecord')
          ..add('autoconhecimento', autoconhecimento)
          ..add('autogestao', autogestao)
          ..add('trd', trd)
          ..add('ci', ci)
          ..add('cs', cs)
          ..add('descicao', descicao)
          ..add('date', date)
          ..add('classref', classref)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ClassAvaliRecordBuilder
    implements Builder<ClassAvaliRecord, ClassAvaliRecordBuilder> {
  _$ClassAvaliRecord? _$v;

  int? _autoconhecimento;
  int? get autoconhecimento => _$this._autoconhecimento;
  set autoconhecimento(int? autoconhecimento) =>
      _$this._autoconhecimento = autoconhecimento;

  int? _autogestao;
  int? get autogestao => _$this._autogestao;
  set autogestao(int? autogestao) => _$this._autogestao = autogestao;

  int? _trd;
  int? get trd => _$this._trd;
  set trd(int? trd) => _$this._trd = trd;

  int? _ci;
  int? get ci => _$this._ci;
  set ci(int? ci) => _$this._ci = ci;

  int? _cs;
  int? get cs => _$this._cs;
  set cs(int? cs) => _$this._cs = cs;

  String? _descicao;
  String? get descicao => _$this._descicao;
  set descicao(String? descicao) => _$this._descicao = descicao;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  DocumentReference<Object?>? _classref;
  DocumentReference<Object?>? get classref => _$this._classref;
  set classref(DocumentReference<Object?>? classref) =>
      _$this._classref = classref;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ClassAvaliRecordBuilder() {
    ClassAvaliRecord._initializeBuilder(this);
  }

  ClassAvaliRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _autoconhecimento = $v.autoconhecimento;
      _autogestao = $v.autogestao;
      _trd = $v.trd;
      _ci = $v.ci;
      _cs = $v.cs;
      _descicao = $v.descicao;
      _date = $v.date;
      _classref = $v.classref;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClassAvaliRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClassAvaliRecord;
  }

  @override
  void update(void Function(ClassAvaliRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClassAvaliRecord build() => _build();

  _$ClassAvaliRecord _build() {
    final _$result = _$v ??
        new _$ClassAvaliRecord._(
            autoconhecimento: autoconhecimento,
            autogestao: autogestao,
            trd: trd,
            ci: ci,
            cs: cs,
            descicao: descicao,
            date: date,
            classref: classref,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
