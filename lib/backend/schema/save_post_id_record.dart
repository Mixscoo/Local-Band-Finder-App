import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SavePostIdRecord extends FirestoreRecord {
  SavePostIdRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "save_at" field.
  DateTime? _saveAt;
  DateTime? get saveAt => _saveAt;
  bool hasSaveAt() => _saveAt != null;

  // "post_id" field.
  DocumentReference? _postId;
  DocumentReference? get postId => _postId;
  bool hasPostId() => _postId != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _saveAt = snapshotData['save_at'] as DateTime?;
    _postId = snapshotData['post_id'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('save_post_id')
          : FirebaseFirestore.instance.collectionGroup('save_post_id');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('save_post_id').doc(id);

  static Stream<SavePostIdRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SavePostIdRecord.fromSnapshot(s));

  static Future<SavePostIdRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SavePostIdRecord.fromSnapshot(s));

  static SavePostIdRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SavePostIdRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SavePostIdRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SavePostIdRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SavePostIdRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SavePostIdRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSavePostIdRecordData({
  DateTime? saveAt,
  DocumentReference? postId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'save_at': saveAt,
      'post_id': postId,
    }.withoutNulls,
  );

  return firestoreData;
}

class SavePostIdRecordDocumentEquality implements Equality<SavePostIdRecord> {
  const SavePostIdRecordDocumentEquality();

  @override
  bool equals(SavePostIdRecord? e1, SavePostIdRecord? e2) {
    return e1?.saveAt == e2?.saveAt && e1?.postId == e2?.postId;
  }

  @override
  int hash(SavePostIdRecord? e) =>
      const ListEquality().hash([e?.saveAt, e?.postId]);

  @override
  bool isValidKey(Object? o) => o is SavePostIdRecord;
}
