// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claveapi_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ClaveapiRecord> _$claveapiRecordSerializer =
    new _$ClaveapiRecordSerializer();

class _$ClaveapiRecordSerializer
    implements StructuredSerializer<ClaveapiRecord> {
  @override
  final Iterable<Type> types = const [ClaveapiRecord, _$ClaveapiRecord];
  @override
  final String wireName = 'ClaveapiRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ClaveapiRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.claveapi;
    if (value != null) {
      result
        ..add('claveapi')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  ClaveapiRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClaveapiRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'claveapi':
          result.claveapi.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$ClaveapiRecord extends ClaveapiRecord {
  @override
  final BuiltList<String>? claveapi;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ClaveapiRecord([void Function(ClaveapiRecordBuilder)? updates]) =>
      (new ClaveapiRecordBuilder()..update(updates))._build();

  _$ClaveapiRecord._({this.claveapi, this.ffRef}) : super._();

  @override
  ClaveapiRecord rebuild(void Function(ClaveapiRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClaveapiRecordBuilder toBuilder() =>
      new ClaveapiRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClaveapiRecord &&
        claveapi == other.claveapi &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, claveapi.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClaveapiRecord')
          ..add('claveapi', claveapi)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ClaveapiRecordBuilder
    implements Builder<ClaveapiRecord, ClaveapiRecordBuilder> {
  _$ClaveapiRecord? _$v;

  ListBuilder<String>? _claveapi;
  ListBuilder<String> get claveapi =>
      _$this._claveapi ??= new ListBuilder<String>();
  set claveapi(ListBuilder<String>? claveapi) => _$this._claveapi = claveapi;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ClaveapiRecordBuilder() {
    ClaveapiRecord._initializeBuilder(this);
  }

  ClaveapiRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _claveapi = $v.claveapi?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClaveapiRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClaveapiRecord;
  }

  @override
  void update(void Function(ClaveapiRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClaveapiRecord build() => _build();

  _$ClaveapiRecord _build() {
    _$ClaveapiRecord _$result;
    try {
      _$result = _$v ??
          new _$ClaveapiRecord._(claveapi: _claveapi?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'claveapi';
        _claveapi?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ClaveapiRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
