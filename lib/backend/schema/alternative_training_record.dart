import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlternativeTrainingRecord extends FirestoreRecord {
  AlternativeTrainingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "display_name_training" field.
  String? _displayNameTraining;
  String get displayNameTraining => _displayNameTraining ?? '';
  bool hasDisplayNameTraining() => _displayNameTraining != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "moreDetails" field.
  String? _moreDetails;
  String get moreDetails => _moreDetails ?? '';
  bool hasMoreDetails() => _moreDetails != null;

  // "newVideo" field.
  bool? _newVideo;
  bool get newVideo => _newVideo ?? false;
  bool hasNewVideo() => _newVideo != null;

  // "like" field.
  int? _like;
  int get like => _like ?? 0;
  bool hasLike() => _like != null;

  // "love" field.
  int? _love;
  int get love => _love ?? 0;
  bool hasLove() => _love != null;

  // "idAlternative" field.
  String? _idAlternative;
  String get idAlternative => _idAlternative ?? '';
  bool hasIdAlternative() => _idAlternative != null;

  // "timeStamp_training" field.
  DateTime? _timeStampTraining;
  DateTime? get timeStampTraining => _timeStampTraining;
  bool hasTimeStampTraining() => _timeStampTraining != null;

  // "video_url" field.
  String? _videoUrl;
  String get videoUrl => _videoUrl ?? '';
  bool hasVideoUrl() => _videoUrl != null;

  void _initializeFields() {
    _displayNameTraining = snapshotData['display_name_training'] as String?;
    _description = snapshotData['description'] as String?;
    _moreDetails = snapshotData['moreDetails'] as String?;
    _newVideo = snapshotData['newVideo'] as bool?;
    _like = castToType<int>(snapshotData['like']);
    _love = castToType<int>(snapshotData['love']);
    _idAlternative = snapshotData['idAlternative'] as String?;
    _timeStampTraining = snapshotData['timeStamp_training'] as DateTime?;
    _videoUrl = snapshotData['video_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alternativeTraining');

  static Stream<AlternativeTrainingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlternativeTrainingRecord.fromSnapshot(s));

  static Future<AlternativeTrainingRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AlternativeTrainingRecord.fromSnapshot(s));

  static AlternativeTrainingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AlternativeTrainingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlternativeTrainingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlternativeTrainingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlternativeTrainingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlternativeTrainingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlternativeTrainingRecordData({
  String? displayNameTraining,
  String? description,
  String? moreDetails,
  bool? newVideo,
  int? like,
  int? love,
  String? idAlternative,
  DateTime? timeStampTraining,
  String? videoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name_training': displayNameTraining,
      'description': description,
      'moreDetails': moreDetails,
      'newVideo': newVideo,
      'like': like,
      'love': love,
      'idAlternative': idAlternative,
      'timeStamp_training': timeStampTraining,
      'video_url': videoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlternativeTrainingRecordDocumentEquality
    implements Equality<AlternativeTrainingRecord> {
  const AlternativeTrainingRecordDocumentEquality();

  @override
  bool equals(AlternativeTrainingRecord? e1, AlternativeTrainingRecord? e2) {
    return e1?.displayNameTraining == e2?.displayNameTraining &&
        e1?.description == e2?.description &&
        e1?.moreDetails == e2?.moreDetails &&
        e1?.newVideo == e2?.newVideo &&
        e1?.like == e2?.like &&
        e1?.love == e2?.love &&
        e1?.idAlternative == e2?.idAlternative &&
        e1?.timeStampTraining == e2?.timeStampTraining &&
        e1?.videoUrl == e2?.videoUrl;
  }

  @override
  int hash(AlternativeTrainingRecord? e) => const ListEquality().hash([
        e?.displayNameTraining,
        e?.description,
        e?.moreDetails,
        e?.newVideo,
        e?.like,
        e?.love,
        e?.idAlternative,
        e?.timeStampTraining,
        e?.videoUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is AlternativeTrainingRecord;
}
