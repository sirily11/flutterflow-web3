// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CandidateStruct extends BaseStruct {
  CandidateStruct({
    String? name,
    String? address,
    int? count,
  })  : _name = name,
        _address = address,
        _count = count;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;
  bool hasAddress() => _address != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;
  void incrementCount(int amount) => _count = count + amount;
  bool hasCount() => _count != null;

  static CandidateStruct fromMap(Map<String, dynamic> data) => CandidateStruct(
        name: data['name'] as String?,
        address: data['address'] as String?,
        count: castToType<int>(data['count']),
      );

  static CandidateStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CandidateStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'address': _address,
        'count': _count,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
      }.withoutNulls;

  static CandidateStruct fromSerializableMap(Map<String, dynamic> data) =>
      CandidateStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CandidateStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CandidateStruct &&
        name == other.name &&
        address == other.address &&
        count == other.count;
  }

  @override
  int get hashCode => const ListEquality().hash([name, address, count]);
}

CandidateStruct createCandidateStruct({
  String? name,
  String? address,
  int? count,
}) =>
    CandidateStruct(
      name: name,
      address: address,
      count: count,
    );
