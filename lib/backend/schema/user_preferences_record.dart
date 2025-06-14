import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserPreferencesRecord extends FirestoreRecord {
  UserPreferencesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "music_genre" field.
  List<String>? _musicGenre;
  List<String> get musicGenre => _musicGenre ?? const [];
  bool hasMusicGenre() => _musicGenre != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _uid = snapshotData['uid'] as DocumentReference?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _location = snapshotData['location'] as String?;
    _musicGenre = getDataList(snapshotData['music_genre']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('user_preferences')
          : FirebaseFirestore.instance.collectionGroup('user_preferences');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('user_preferences').doc(id);

  static Stream<UserPreferencesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserPreferencesRecord.fromSnapshot(s));

  static Future<UserPreferencesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserPreferencesRecord.fromSnapshot(s));

  static UserPreferencesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserPreferencesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserPreferencesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserPreferencesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserPreferencesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserPreferencesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserPreferencesRecordData({
  DocumentReference? uid,
  String? photoUrl,
  String? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'photo_url': photoUrl,
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserPreferencesRecordDocumentEquality
    implements Equality<UserPreferencesRecord> {
  const UserPreferencesRecordDocumentEquality();

  @override
  bool equals(UserPreferencesRecord? e1, UserPreferencesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.uid == e2?.uid &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.location == e2?.location &&
        listEquality.equals(e1?.musicGenre, e2?.musicGenre);
  }

  @override
  int hash(UserPreferencesRecord? e) => const ListEquality()
      .hash([e?.uid, e?.photoUrl, e?.location, e?.musicGenre]);

  @override
  bool isValidKey(Object? o) => o is UserPreferencesRecord;
}
