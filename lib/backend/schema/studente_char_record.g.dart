// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'studente_char_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StudenteCharRecord> _$studenteCharRecordSerializer =
    new _$StudenteCharRecordSerializer();

class _$StudenteCharRecordSerializer
    implements StructuredSerializer<StudenteCharRecord> {
  @override
  final Iterable<Type> types = const [StudenteCharRecord, _$StudenteCharRecord];
  @override
  final String wireName = 'StudenteCharRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, StudenteCharRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.quest;
    if (value != null) {
      result
        ..add('quest')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.resp;
    if (value != null) {
      result
        ..add('resp')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.aluno;
    if (value != null) {
      result
        ..add('aluno')
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
  StudenteCharRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StudenteCharRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'quest':
          result.quest.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'resp':
          result.resp.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'aluno':
          result.aluno = serializers.deserialize(value,
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

class _$StudenteCharRecord extends StudenteCharRecord {
  @override
  final BuiltList<int>? quest;
  @override
  final BuiltList<int>? resp;
  @override
  final DateTime? time;
  @override
  final DocumentReference<Object?>? aluno;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$StudenteCharRecord(
          [void Function(StudenteCharRecordBuilder)? updates]) =>
      (new StudenteCharRecordBuilder()..update(updates))._build();

  _$StudenteCharRecord._(
      {this.quest, this.resp, this.time, this.aluno, this.ffRef})
      : super._();

  @override
  StudenteCharRecord rebuild(
          void Function(StudenteCharRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StudenteCharRecordBuilder toBuilder() =>
      new StudenteCharRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StudenteCharRecord &&
        quest == other.quest &&
        resp == other.resp &&
        time == other.time &&
        aluno == other.aluno &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, quest.hashCode), resp.hashCode), time.hashCode),
            aluno.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StudenteCharRecord')
          ..add('quest', quest)
          ..add('resp', resp)
          ..add('time', time)
          ..add('aluno', aluno)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class StudenteCharRecordBuilder
    implements Builder<StudenteCharRecord, StudenteCharRecordBuilder> {
  _$StudenteCharRecord? _$v;

  ListBuilder<int>? _quest;
  ListBuilder<int> get quest => _$this._quest ??= new ListBuilder<int>();
  set quest(ListBuilder<int>? quest) => _$this._quest = quest;

  ListBuilder<int>? _resp;
  ListBuilder<int> get resp => _$this._resp ??= new ListBuilder<int>();
  set resp(ListBuilder<int>? resp) => _$this._resp = resp;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  DocumentReference<Object?>? _aluno;
  DocumentReference<Object?>? get aluno => _$this._aluno;
  set aluno(DocumentReference<Object?>? aluno) => _$this._aluno = aluno;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  StudenteCharRecordBuilder() {
    StudenteCharRecord._initializeBuilder(this);
  }

  StudenteCharRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _quest = $v.quest?.toBuilder();
      _resp = $v.resp?.toBuilder();
      _time = $v.time;
      _aluno = $v.aluno;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StudenteCharRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StudenteCharRecord;
  }

  @override
  void update(void Function(StudenteCharRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StudenteCharRecord build() => _build();

  _$StudenteCharRecord _build() {
    _$StudenteCharRecord _$result;
    try {
      _$result = _$v ??
          new _$StudenteCharRecord._(
              quest: _quest?.build(),
              resp: _resp?.build(),
              time: time,
              aluno: aluno,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'quest';
        _quest?.build();
        _$failedField = 'resp';
        _resp?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StudenteCharRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
