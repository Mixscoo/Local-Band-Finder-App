import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostEventsRecord extends FirestoreRecord {
  PostEventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "event_name" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "about_event" field.
  String? _aboutEvent;
  String get aboutEvent => _aboutEvent ?? '';
  bool hasAboutEvent() => _aboutEvent != null;

  // "event_date" field.
  DateTime? _eventDate;
  DateTime? get eventDate => _eventDate;
  bool hasEventDate() => _eventDate != null;

  // "event_time_start" field.
  DateTime? _eventTimeStart;
  DateTime? get eventTimeStart => _eventTimeStart;
  bool hasEventTimeStart() => _eventTimeStart != null;

  // "event_time_end" field.
  DateTime? _eventTimeEnd;
  DateTime? get eventTimeEnd => _eventTimeEnd;
  bool hasEventTimeEnd() => _eventTimeEnd != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "address_1" field.
  String? _address1;
  String get address1 => _address1 ?? '';
  bool hasAddress1() => _address1 != null;

  // "address_2" field.
  String? _address2;
  String get address2 => _address2 ?? '';
  bool hasAddress2() => _address2 != null;

  // "thumbnail_images" field.
  List<String>? _thumbnailImages;
  List<String> get thumbnailImages => _thumbnailImages ?? const [];
  bool hasThumbnailImages() => _thumbnailImages != null;

  // "music_genre" field.
  List<String>? _musicGenre;
  List<String> get musicGenre => _musicGenre ?? const [];
  bool hasMusicGenre() => _musicGenre != null;

  // "charge_fee" field.
  double? _chargeFee;
  double get chargeFee => _chargeFee ?? 0.0;
  bool hasChargeFee() => _chargeFee != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "band_name" field.
  String? _bandName;
  String get bandName => _bandName ?? '';
  bool hasBandName() => _bandName != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _eventName = snapshotData['event_name'] as String?;
    _aboutEvent = snapshotData['about_event'] as String?;
    _eventDate = snapshotData['event_date'] as DateTime?;
    _eventTimeStart = snapshotData['event_time_start'] as DateTime?;
    _eventTimeEnd = snapshotData['event_time_end'] as DateTime?;
    _city = snapshotData['city'] as String?;
    _address1 = snapshotData['address_1'] as String?;
    _address2 = snapshotData['address_2'] as String?;
    _thumbnailImages = getDataList(snapshotData['thumbnail_images']);
    _musicGenre = getDataList(snapshotData['music_genre']);
    _chargeFee = castToType<double>(snapshotData['charge_fee']);
    _createdTime = snapshotData['created_time'] as DateTime?;
    _bandName = snapshotData['band_name'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('post_events')
          : FirebaseFirestore.instance.collectionGroup('post_events');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('post_events').doc(id);

  static Stream<PostEventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostEventsRecord.fromSnapshot(s));

  static Future<PostEventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostEventsRecord.fromSnapshot(s));

  static PostEventsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PostEventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostEventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostEventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostEventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostEventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostEventsRecordData({
  String? eventName,
  String? aboutEvent,
  DateTime? eventDate,
  DateTime? eventTimeStart,
  DateTime? eventTimeEnd,
  String? city,
  String? address1,
  String? address2,
  double? chargeFee,
  DateTime? createdTime,
  String? bandName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'event_name': eventName,
      'about_event': aboutEvent,
      'event_date': eventDate,
      'event_time_start': eventTimeStart,
      'event_time_end': eventTimeEnd,
      'city': city,
      'address_1': address1,
      'address_2': address2,
      'charge_fee': chargeFee,
      'created_time': createdTime,
      'band_name': bandName,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostEventsRecordDocumentEquality implements Equality<PostEventsRecord> {
  const PostEventsRecordDocumentEquality();

  @override
  bool equals(PostEventsRecord? e1, PostEventsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.eventName == e2?.eventName &&
        e1?.aboutEvent == e2?.aboutEvent &&
        e1?.eventDate == e2?.eventDate &&
        e1?.eventTimeStart == e2?.eventTimeStart &&
        e1?.eventTimeEnd == e2?.eventTimeEnd &&
        e1?.city == e2?.city &&
        e1?.address1 == e2?.address1 &&
        e1?.address2 == e2?.address2 &&
        listEquality.equals(e1?.thumbnailImages, e2?.thumbnailImages) &&
        listEquality.equals(e1?.musicGenre, e2?.musicGenre) &&
        e1?.chargeFee == e2?.chargeFee &&
        e1?.createdTime == e2?.createdTime &&
        e1?.bandName == e2?.bandName;
  }

  @override
  int hash(PostEventsRecord? e) => const ListEquality().hash([
        e?.eventName,
        e?.aboutEvent,
        e?.eventDate,
        e?.eventTimeStart,
        e?.eventTimeEnd,
        e?.city,
        e?.address1,
        e?.address2,
        e?.thumbnailImages,
        e?.musicGenre,
        e?.chargeFee,
        e?.createdTime,
        e?.bandName
      ]);

  @override
  bool isValidKey(Object? o) => o is PostEventsRecord;
}
