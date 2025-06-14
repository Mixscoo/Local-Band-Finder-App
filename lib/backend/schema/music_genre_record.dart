import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MusicGenreRecord extends FirestoreRecord {
  MusicGenreRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "genre" field.
  String? _genre;
  String get genre => _genre ?? '';
  bool hasGenre() => _genre != null;

  void _initializeFields() {
    _genre = snapshotData['genre'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('music_genre');

  static Stream<MusicGenreRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MusicGenreRecord.fromSnapshot(s));

  static Future<MusicGenreRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MusicGenreRecord.fromSnapshot(s));

  static MusicGenreRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MusicGenreRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MusicGenreRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MusicGenreRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MusicGenreRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MusicGenreRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMusicGenreRecordData({
  String? genre,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'genre': genre,
    }.withoutNulls,
  );

  return firestoreData;
}

class MusicGenreRecordDocumentEquality implements Equality<MusicGenreRecord> {
  const MusicGenreRecordDocumentEquality();

  @override
  bool equals(MusicGenreRecord? e1, MusicGenreRecord? e2) {
    return e1?.genre == e2?.genre;
  }

  @override
  int hash(MusicGenreRecord? e) => const ListEquality().hash([e?.genre]);

  @override
  bool isValidKey(Object? o) => o is MusicGenreRecord;
}
