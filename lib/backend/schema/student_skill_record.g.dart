// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_skill_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StudentSkillRecord> _$studentSkillRecordSerializer =
    new _$StudentSkillRecordSerializer();

class _$StudentSkillRecordSerializer
    implements StructuredSerializer<StudentSkillRecord> {
  @override
  final Iterable<Type> types = const [StudentSkillRecord, _$StudentSkillRecord];
  @override
  final String wireName = 'StudentSkillRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, StudentSkillRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.quest1;
    if (value != null) {
      result
        ..add('Quest1')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.quest2;
    if (value != null) {
      result
        ..add('Quest2')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.quest3;
    if (value != null) {
      result
        ..add('Quest3')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.quest4;
    if (value != null) {
      result
        ..add('Quest4')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.quest5;
    if (value != null) {
      result
        ..add('Quest5')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.descicao;
    if (value != null) {
      result
        ..add('Descicao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.studenteRef;
    if (value != null) {
      result
        ..add('StudenteRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('Time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  StudentSkillRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StudentSkillRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Quest1':
          result.quest1 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Quest2':
          result.quest2 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Quest3':
          result.quest3 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Quest4':
          result.quest4 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Quest5':
          result.quest5 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Descicao':
          result.descicao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'StudenteRef':
          result.studenteRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$StudentSkillRecord extends StudentSkillRecord {
  @override
  final int? quest1;
  @override
  final int? quest2;
  @override
  final int? quest3;
  @override
  final int? quest4;
  @override
  final int? quest5;
  @override
  final String? descicao;
  @override
  final DocumentReference<Object?>? studenteRef;
  @override
  final DateTime? time;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$StudentSkillRecord(
          [void Function(StudentSkillRecordBuilder)? updates]) =>
      (new StudentSkillRecordBuilder()..update(updates))._build();

  _$StudentSkillRecord._(
      {this.quest1,
      this.quest2,
      this.quest3,
      this.quest4,
      this.quest5,
      this.descicao,
      this.studenteRef,
      this.time,
      this.ffRef})
      : super._();

  @override
  StudentSkillRecord rebuild(
          void Function(StudentSkillRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StudentSkillRecordBuilder toBuilder() =>
      new StudentSkillRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StudentSkillRecord &&
        quest1 == other.quest1 &&
        quest2 == other.quest2 &&
        quest3 == other.quest3 &&
        quest4 == other.quest4 &&
        quest5 == other.quest5 &&
        descicao == other.descicao &&
        studenteRef == other.studenteRef &&
        time == other.time &&
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
                            $jc($jc($jc(0, quest1.hashCode), quest2.hashCode),
                                quest3.hashCode),
                            quest4.hashCode),
                        quest5.hashCode),
                    descicao.hashCode),
                studenteRef.hashCode),
            time.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StudentSkillRecord')
          ..add('quest1', quest1)
          ..add('quest2', quest2)
          ..add('quest3', quest3)
          ..add('quest4', quest4)
          ..add('quest5', quest5)
          ..add('descicao', descicao)
          ..add('studenteRef', studenteRef)
          ..add('time', time)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class StudentSkillRecordBuilder
    implements Builder<StudentSkillRecord, StudentSkillRecordBuilder> {
  _$StudentSkillRecord? _$v;

  int? _quest1;
  int? get quest1 => _$this._quest1;
  set quest1(int? quest1) => _$this._quest1 = quest1;

  int? _quest2;
  int? get quest2 => _$this._quest2;
  set quest2(int? quest2) => _$this._quest2 = quest2;

  int? _quest3;
  int? get quest3 => _$this._quest3;
  set quest3(int? quest3) => _$this._quest3 = quest3;

  int? _quest4;
  int? get quest4 => _$this._quest4;
  set quest4(int? quest4) => _$this._quest4 = quest4;

  int? _quest5;
  int? get quest5 => _$this._quest5;
  set quest5(int? quest5) => _$this._quest5 = quest5;

  String? _descicao;
  String? get descicao => _$this._descicao;
  set descicao(String? descicao) => _$this._descicao = descicao;

  DocumentReference<Object?>? _studenteRef;
  DocumentReference<Object?>? get studenteRef => _$this._studenteRef;
  set studenteRef(DocumentReference<Object?>? studenteRef) =>
      _$this._studenteRef = studenteRef;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  StudentSkillRecordBuilder() {
    StudentSkillRecord._initializeBuilder(this);
  }

  StudentSkillRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _quest1 = $v.quest1;
      _quest2 = $v.quest2;
      _quest3 = $v.quest3;
      _quest4 = $v.quest4;
      _quest5 = $v.quest5;
      _descicao = $v.descicao;
      _studenteRef = $v.studenteRef;
      _time = $v.time;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StudentSkillRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StudentSkillRecord;
  }

  @override
  void update(void Function(StudentSkillRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StudentSkillRecord build() => _build();

  _$StudentSkillRecord _build() {
    final _$result = _$v ??
        new _$StudentSkillRecord._(
            quest1: quest1,
            quest2: quest2,
            quest3: quest3,
            quest4: quest4,
            quest5: quest5,
            descicao: descicao,
            studenteRef: studenteRef,
            time: time,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
