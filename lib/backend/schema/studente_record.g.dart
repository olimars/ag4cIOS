// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'studente_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StudenteRecord> _$studenteRecordSerializer =
    new _$StudenteRecordSerializer();

class _$StudenteRecordSerializer
    implements StructuredSerializer<StudenteRecord> {
  @override
  final Iterable<Type> types = const [StudenteRecord, _$StudenteRecord];
  @override
  final String wireName = 'StudenteRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, StudenteRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.genero;
    if (value != null) {
      result
        ..add('Genero')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.age;
    if (value != null) {
      result
        ..add('Age')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timestamp;
    if (value != null) {
      result
        ..add('Timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.classR;
    if (value != null) {
      result
        ..add('ClassR')
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
  StudenteRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StudenteRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Genero':
          result.genero = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'ClassR':
          result.classR = serializers.deserialize(value,
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

class _$StudenteRecord extends StudenteRecord {
  @override
  final String? name;
  @override
  final String? genero;
  @override
  final String? age;
  @override
  final DateTime? timestamp;
  @override
  final DocumentReference<Object?>? classR;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$StudenteRecord([void Function(StudenteRecordBuilder)? updates]) =>
      (new StudenteRecordBuilder()..update(updates))._build();

  _$StudenteRecord._(
      {this.name,
      this.genero,
      this.age,
      this.timestamp,
      this.classR,
      this.ffRef})
      : super._();

  @override
  StudenteRecord rebuild(void Function(StudenteRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StudenteRecordBuilder toBuilder() =>
      new StudenteRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StudenteRecord &&
        name == other.name &&
        genero == other.genero &&
        age == other.age &&
        timestamp == other.timestamp &&
        classR == other.classR &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, name.hashCode), genero.hashCode), age.hashCode),
                timestamp.hashCode),
            classR.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StudenteRecord')
          ..add('name', name)
          ..add('genero', genero)
          ..add('age', age)
          ..add('timestamp', timestamp)
          ..add('classR', classR)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class StudenteRecordBuilder
    implements Builder<StudenteRecord, StudenteRecordBuilder> {
  _$StudenteRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _genero;
  String? get genero => _$this._genero;
  set genero(String? genero) => _$this._genero = genero;

  String? _age;
  String? get age => _$this._age;
  set age(String? age) => _$this._age = age;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  DocumentReference<Object?>? _classR;
  DocumentReference<Object?>? get classR => _$this._classR;
  set classR(DocumentReference<Object?>? classR) => _$this._classR = classR;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  StudenteRecordBuilder() {
    StudenteRecord._initializeBuilder(this);
  }

  StudenteRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _genero = $v.genero;
      _age = $v.age;
      _timestamp = $v.timestamp;
      _classR = $v.classR;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StudenteRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StudenteRecord;
  }

  @override
  void update(void Function(StudenteRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StudenteRecord build() => _build();

  _$StudenteRecord _build() {
    final _$result = _$v ??
        new _$StudenteRecord._(
            name: name,
            genero: genero,
            age: age,
            timestamp: timestamp,
            classR: classR,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
