// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostgresTestStruct extends BaseStruct {
  PostgresTestStruct({
    bool? isconnected,
  }) : _isconnected = isconnected;

  // "isconnected" field.
  bool? _isconnected;
  bool get isconnected => _isconnected ?? false;
  set isconnected(bool? val) => _isconnected = val;
  bool hasIsconnected() => _isconnected != null;

  static PostgresTestStruct fromMap(Map<String, dynamic> data) =>
      PostgresTestStruct(
        isconnected: data['isconnected'] as bool?,
      );

  static PostgresTestStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PostgresTestStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'isconnected': _isconnected,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isconnected': serializeParam(
          _isconnected,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PostgresTestStruct fromSerializableMap(Map<String, dynamic> data) =>
      PostgresTestStruct(
        isconnected: deserializeParam(
          data['isconnected'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PostgresTestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PostgresTestStruct && isconnected == other.isconnected;
  }

  @override
  int get hashCode => const ListEquality().hash([isconnected]);
}

PostgresTestStruct createPostgresTestStruct({
  bool? isconnected,
}) =>
    PostgresTestStruct(
      isconnected: isconnected,
    );
