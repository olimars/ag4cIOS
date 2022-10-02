// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_w_e_m_w_b_s_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StudentWEMWBSRecord> _$studentWEMWBSRecordSerializer =
    new _$StudentWEMWBSRecordSerializer();

class _$StudentWEMWBSRecordSerializer
    implements StructuredSerializer<StudentWEMWBSRecord> {
  @override
  final Iterable<Type> types = const [
    StudentWEMWBSRecord,
    _$StudentWEMWBSRecord
  ];
  @override
  final String wireName = 'StudentWEMWBSRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, StudentWEMWBSRecord object,
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
    value = object.quest6;
    if (value != null) {
      result
        ..add('Quest6')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.quest7;
    if (value != null) {
      result
        ..add('Quest7')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.quest8;
    if (value != null) {
      result
        ..add('Quest8')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.quest9;
    if (value != null) {
      result
        ..add('Quest9')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.quest10;
    if (value != null) {
      result
        ..add('Quest10')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.quest11;
    if (value != null) {
      result
        ..add('Quest11')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.quest12;
    if (value != null) {
      result
        ..add('Quest12')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.quest13;
    if (value != null) {
      result
        ..add('Quest13')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.quest14;
    if (value != null) {
      result
        ..add('Quest14')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.studentAref;
    if (value != null) {
      result
        ..add('StudentAref')
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
  StudentWEMWBSRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StudentWEMWBSRecordBuilder();

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
        case 'Quest6':
          result.quest6 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Quest7':
          result.quest7 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Quest8':
          result.quest8 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Quest9':
          result.quest9 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Quest10':
          result.quest10 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Quest11':
          result.quest11 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Quest12':
          result.quest12 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Quest13':
          result.quest13 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Quest14':
          result.quest14 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'StudentAref':
          result.studentAref = serializers.deserialize(value,
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

class _$StudentWEMWBSRecord extends StudentWEMWBSRecord {
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
  final int? quest6;
  @override
  final int? quest7;
  @override
  final int? quest8;
  @override
  final int? quest9;
  @override
  final int? quest10;
  @override
  final int? quest11;
  @override
  final int? quest12;
  @override
  final int? quest13;
  @override
  final int? quest14;
  @override
  final DocumentReference<Object?>? studentAref;
  @override
  final DateTime? time;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$StudentWEMWBSRecord(
          [void Function(StudentWEMWBSRecordBuilder)? updates]) =>
      (new StudentWEMWBSRecordBuilder()..update(updates))._build();

  _$StudentWEMWBSRecord._(
      {this.quest1,
      this.quest2,
      this.quest3,
      this.quest4,
      this.quest5,
      this.quest6,
      this.quest7,
      this.quest8,
      this.quest9,
      this.quest10,
      this.quest11,
      this.quest12,
      this.quest13,
      this.quest14,
      this.studentAref,
      this.time,
      this.ffRef})
      : super._();

  @override
  StudentWEMWBSRecord rebuild(
          void Function(StudentWEMWBSRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StudentWEMWBSRecordBuilder toBuilder() =>
      new StudentWEMWBSRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StudentWEMWBSRecord &&
        quest1 == other.quest1 &&
        quest2 == other.quest2 &&
        quest3 == other.quest3 &&
        quest4 == other.quest4 &&
        quest5 == other.quest5 &&
        quest6 == other.quest6 &&
        quest7 == other.quest7 &&
        quest8 == other.quest8 &&
        quest9 == other.quest9 &&
        quest10 == other.quest10 &&
        quest11 == other.quest11 &&
        quest12 == other.quest12 &&
        quest13 == other.quest13 &&
        quest14 == other.quest14 &&
        studentAref == other.studentAref &&
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
                                                                        quest1
                                                                            .hashCode),
                                                                    quest2
                                                                        .hashCode),
                                                                quest3
                                                                    .hashCode),
                                                            quest4.hashCode),
                                                        quest5.hashCode),
                                                    quest6.hashCode),
                                                quest7.hashCode),
                                            quest8.hashCode),
                                        quest9.hashCode),
                                    quest10.hashCode),
                                quest11.hashCode),
                            quest12.hashCode),
                        quest13.hashCode),
                    quest14.hashCode),
                studentAref.hashCode),
            time.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StudentWEMWBSRecord')
          ..add('quest1', quest1)
          ..add('quest2', quest2)
          ..add('quest3', quest3)
          ..add('quest4', quest4)
          ..add('quest5', quest5)
          ..add('quest6', quest6)
          ..add('quest7', quest7)
          ..add('quest8', quest8)
          ..add('quest9', quest9)
          ..add('quest10', quest10)
          ..add('quest11', quest11)
          ..add('quest12', quest12)
          ..add('quest13', quest13)
          ..add('quest14', quest14)
          ..add('studentAref', studentAref)
          ..add('time', time)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class StudentWEMWBSRecordBuilder
    implements Builder<StudentWEMWBSRecord, StudentWEMWBSRecordBuilder> {
  _$StudentWEMWBSRecord? _$v;

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

  int? _quest6;
  int? get quest6 => _$this._quest6;
  set quest6(int? quest6) => _$this._quest6 = quest6;

  int? _quest7;
  int? get quest7 => _$this._quest7;
  set quest7(int? quest7) => _$this._quest7 = quest7;

  int? _quest8;
  int? get quest8 => _$this._quest8;
  set quest8(int? quest8) => _$this._quest8 = quest8;

  int? _quest9;
  int? get quest9 => _$this._quest9;
  set quest9(int? quest9) => _$this._quest9 = quest9;

  int? _quest10;
  int? get quest10 => _$this._quest10;
  set quest10(int? quest10) => _$this._quest10 = quest10;

  int? _quest11;
  int? get quest11 => _$this._quest11;
  set quest11(int? quest11) => _$this._quest11 = quest11;

  int? _quest12;
  int? get quest12 => _$this._quest12;
  set quest12(int? quest12) => _$this._quest12 = quest12;

  int? _quest13;
  int? get quest13 => _$this._quest13;
  set quest13(int? quest13) => _$this._quest13 = quest13;

  int? _quest14;
  int? get quest14 => _$this._quest14;
  set quest14(int? quest14) => _$this._quest14 = quest14;

  DocumentReference<Object?>? _studentAref;
  DocumentReference<Object?>? get studentAref => _$this._studentAref;
  set studentAref(DocumentReference<Object?>? studentAref) =>
      _$this._studentAref = studentAref;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  StudentWEMWBSRecordBuilder() {
    StudentWEMWBSRecord._initializeBuilder(this);
  }

  StudentWEMWBSRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _quest1 = $v.quest1;
      _quest2 = $v.quest2;
      _quest3 = $v.quest3;
      _quest4 = $v.quest4;
      _quest5 = $v.quest5;
      _quest6 = $v.quest6;
      _quest7 = $v.quest7;
      _quest8 = $v.quest8;
      _quest9 = $v.quest9;
      _quest10 = $v.quest10;
      _quest11 = $v.quest11;
      _quest12 = $v.quest12;
      _quest13 = $v.quest13;
      _quest14 = $v.quest14;
      _studentAref = $v.studentAref;
      _time = $v.time;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StudentWEMWBSRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StudentWEMWBSRecord;
  }

  @override
  void update(void Function(StudentWEMWBSRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StudentWEMWBSRecord build() => _build();

  _$StudentWEMWBSRecord _build() {
    final _$result = _$v ??
        new _$StudentWEMWBSRecord._(
            quest1: quest1,
            quest2: quest2,
            quest3: quest3,
            quest4: quest4,
            quest5: quest5,
            quest6: quest6,
            quest7: quest7,
            quest8: quest8,
            quest9: quest9,
            quest10: quest10,
            quest11: quest11,
            quest12: quest12,
            quest13: quest13,
            quest14: quest14,
            studentAref: studentAref,
            time: time,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
