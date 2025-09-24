import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

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

  // "likeCountVideo" field.
  int? _likeCountVideo;
  int get likeCountVideo => _likeCountVideo ?? 0;
  bool hasLikeCountVideo() => _likeCountVideo != null;

  // "loveCountVideo" field.
  int? _loveCountVideo;
  int get loveCountVideo => _loveCountVideo ?? 0;
  bool hasLoveCountVideo() => _loveCountVideo != null;

  // "liked_by" field.
  List<DocumentReference>? _likedBy;
  List<DocumentReference> get likedBy => _likedBy ?? const [];
  bool hasLikedBy() => _likedBy != null;

  // "loved_by" field.
  List<DocumentReference>? _lovedBy;
  List<DocumentReference> get lovedBy => _lovedBy ?? const [];
  bool hasLovedBy() => _lovedBy != null;

  void _initializeFields() {
    _displayNameTraining = snapshotData['display_name_training'] as String?;
    _description = snapshotData['description'] as String?;
    _moreDetails = snapshotData['moreDetails'] as String?;
    _idAlternative = snapshotData['idAlternative'] as String?;
    _timeStampTraining = snapshotData['timeStamp_training'] as DateTime?;
    _videoUrl = snapshotData['video_url'] as String?;
    _likeCountVideo = castToType<int>(snapshotData['likeCountVideo']);
    _loveCountVideo = castToType<int>(snapshotData['loveCountVideo']);
    _likedBy = getDataList(snapshotData['liked_by']);
    _lovedBy = getDataList(snapshotData['loved_by']);
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
  String? idAlternative,
  DateTime? timeStampTraining,
  String? videoUrl,
  int? likeCountVideo,
  int? loveCountVideo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name_training': displayNameTraining,
      'description': description,
      'moreDetails': moreDetails,
      'idAlternative': idAlternative,
      'timeStamp_training': timeStampTraining,
      'video_url': videoUrl,
      'likeCountVideo': likeCountVideo,
      'loveCountVideo': loveCountVideo,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlternativeTrainingRecordDocumentEquality
    implements Equality<AlternativeTrainingRecord> {
  const AlternativeTrainingRecordDocumentEquality();

  @override
  bool equals(AlternativeTrainingRecord? e1, AlternativeTrainingRecord? e2) {
    const listEquality = ListEquality();
    return e1?.displayNameTraining == e2?.displayNameTraining &&
        e1?.description == e2?.description &&
        e1?.moreDetails == e2?.moreDetails &&
        e1?.idAlternative == e2?.idAlternative &&
        e1?.timeStampTraining == e2?.timeStampTraining &&
        e1?.videoUrl == e2?.videoUrl &&
        e1?.likeCountVideo == e2?.likeCountVideo &&
        e1?.loveCountVideo == e2?.loveCountVideo &&
        listEquality.equals(e1?.likedBy, e2?.likedBy) &&
        listEquality.equals(e1?.lovedBy, e2?.lovedBy);
  }

  @override
  int hash(AlternativeTrainingRecord? e) => const ListEquality().hash([
        e?.displayNameTraining,
        e?.description,
        e?.moreDetails,
        e?.idAlternative,
        e?.timeStampTraining,
        e?.videoUrl,
        e?.likeCountVideo,
        e?.loveCountVideo,
        e?.likedBy,
        e?.lovedBy
      ]);

  @override
  bool isValidKey(Object? o) => o is AlternativeTrainingRecord;
}
