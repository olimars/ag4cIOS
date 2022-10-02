// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_char_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ClassCharRecord> _$classCharRecordSerializer =
    new _$ClassCharRecordSerializer();

class _$ClassCharRecordSerializer
    implements StructuredSerializer<ClassCharRecord> {
  @override
  final Iterable<Type> types = const [ClassCharRecord, _$ClassCharRecord];
  @override
  final String wireName = 'ClassCharRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ClassCharRecord object,
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
    value = object.classRef;
    if (value != null) {
      result
        ..add('class_ref')
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
  ClassCharRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClassCharRecordBuilder();

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
        case 'class_ref':
          result.classRef = serializers.deserialize(value,
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

class _$ClassCharRecord extends ClassCharRecord {
  @override
  final BuiltList<int>? quest;
  @override
  final BuiltList<int>? resp;
  @override
  final DateTime? time;
  @override
  final DocumentReference<Object?>? classRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ClassCharRecord([void Function(ClassCharRecordBuilder)? updates]) =>
      (new ClassCharRecordBuilder()..update(updates))._build();

  _$ClassCharRecord._(
      {this.quest, this.resp, this.time, this.classRef, this.ffRef})
      : super._();

  @override
  ClassCharRecord rebuild(void Function(ClassCharRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClassCharRecordBuilder toBuilder() =>
      new ClassCharRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClassCharRecord &&
        quest == other.quest &&
        resp == other.resp &&
        time == other.time &&
        classRef == other.classRef &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, quest.hashCode), resp.hashCode), time.hashCode),
            classRef.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClassCharRecord')
          ..add('quest', quest)
          ..add('resp', resp)
          ..add('time', time)
          ..add('classRef', classRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ClassCharRecordBuilder
    implements Builder<ClassCharRecord, ClassCharRecordBuilder> {
  _$ClassCharRecord? _$v;

  ListBuilder<int>? _quest;
  ListBuilder<int> get quest => _$this._quest ??= new ListBuilder<int>();
  set quest(ListBuilder<int>? quest) => _$this._quest = quest;

  ListBuilder<int>? _resp;
  ListBuilder<int> get resp => _$this._resp ??= new ListBuilder<int>();
  set resp(ListBuilder<int>? resp) => _$this._resp = resp;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  DocumentReference<Object?>? _classRef;
  DocumentReference<Object?>? get classRef => _$this._classRef;
  set classRef(DocumentReference<Object?>? classRef) =>
      _$this._classRef = classRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ClassCharRecordBuilder() {
    ClassCharRecord._initializeBuilder(this);
  }

  ClassCharRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _quest = $v.quest?.toBuilder();
      _resp = $v.resp?.toBuilder();
      _time = $v.time;
      _classRef = $v.classRef;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClassCharRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClassCharRecord;
  }

  @override
  void update(void Function(ClassCharRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClassCharRecord build() => _build();

  _$ClassCharRecord _build() {
    _$ClassCharRecord _$result;
    try {
      _$result = _$v ??
          new _$ClassCharRecord._(
              quest: _quest?.build(),
              resp: _resp?.build(),
              time: time,
              classRef: classRef,
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
            r'ClassCharRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
