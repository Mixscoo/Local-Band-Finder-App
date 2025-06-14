// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserTypeStruct extends FFFirebaseStruct {
  UserTypeStruct({
    String? visitor,
    String? band,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _visitor = visitor,
        _band = band,
        super(firestoreUtilData);

  // "Visitor" field.
  String? _visitor;
  String get visitor => _visitor ?? '';
  set visitor(String? val) => _visitor = val;

  bool hasVisitor() => _visitor != null;

  // "Band" field.
  String? _band;
  String get band => _band ?? '';
  set band(String? val) => _band = val;

  bool hasBand() => _band != null;

  static UserTypeStruct fromMap(Map<String, dynamic> data) => UserTypeStruct(
        visitor: data['Visitor'] as String?,
        band: data['Band'] as String?,
      );

  static UserTypeStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserTypeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Visitor': _visitor,
        'Band': _band,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Visitor': serializeParam(
          _visitor,
          ParamType.String,
        ),
        'Band': serializeParam(
          _band,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserTypeStruct(
        visitor: deserializeParam(
          data['Visitor'],
          ParamType.String,
          false,
        ),
        band: deserializeParam(
          data['Band'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserTypeStruct &&
        visitor == other.visitor &&
        band == other.band;
  }

  @override
  int get hashCode => const ListEquality().hash([visitor, band]);
}

UserTypeStruct createUserTypeStruct({
  String? visitor,
  String? band,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserTypeStruct(
      visitor: visitor,
      band: band,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserTypeStruct? updateUserTypeStruct(
  UserTypeStruct? userType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserTypeStructData(
  Map<String, dynamic> firestoreData,
  UserTypeStruct? userType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userType == null) {
    return;
  }
  if (userType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userTypeData = getUserTypeFirestoreData(userType, forFieldValue);
  final nestedData = userTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserTypeFirestoreData(
  UserTypeStruct? userType, [
  bool forFieldValue = false,
]) {
  if (userType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userType.toMap());

  // Add any Firestore field values
  userType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserTypeListFirestoreData(
  List<UserTypeStruct>? userTypes,
) =>
    userTypes?.map((e) => getUserTypeFirestoreData(e, true)).toList() ?? [];
