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

  // "challengesReference" field.
  List<DocumentReference>? _challengesReference;
  List<DocumentReference> get challengesReference =>
      _challengesReference ?? const [];
  bool hasChallengesReference() => _challengesReference != null;

  // "chellengerStatus" field.
  bool? _chellengerStatus;
  bool get chellengerStatus => _chellengerStatus ?? false;
  bool hasChellengerStatus() => _chellengerStatus != null;

  // "durationMs" field.
  int? _durationMs;
  int get durationMs => _durationMs ?? 0;
  bool hasDurationMs() => _durationMs != null;

  // "challengerStartDate" field.
  DateTime? _challengerStartDate;
  DateTime? get challengerStartDate => _challengerStartDate;
  bool hasChallengerStartDate() => _challengerStartDate != null;

  // "chellengerEndDate" field.
  DateTime? _chellengerEndDate;
  DateTime? get chellengerEndDate => _chellengerEndDate;
  bool hasChellengerEndDate() => _chellengerEndDate != null;

  // "refChallengerTotal" field.
  DocumentReference? _refChallengerTotal;
  DocumentReference? get refChallengerTotal => _refChallengerTotal;
  bool hasRefChallengerTotal() => _refChallengerTotal != null;

  void _initializeFields() {
    _displayNameTraining = snapshotData['display_name_training'] as String?;
    _description = snapshotData['description'] as String?;
    _moreDetails = snapshotData['moreDetails'] as String?;
    _timeStampTraining = snapshotData['timeStamp_training'] as DateTime?;
    _videoUrl = snapshotData['video_url'] as String?;
    _likeCountVideo = castToType<int>(snapshotData['likeCountVideo']);
    _loveCountVideo = castToType<int>(snapshotData['loveCountVideo']);
    _likedBy = getDataList(snapshotData['liked_by']);
    _lovedBy = getDataList(snapshotData['loved_by']);
    _challengesReference = getDataList(snapshotData['challengesReference']);
    _chellengerStatus = snapshotData['chellengerStatus'] as bool?;
    _durationMs = castToType<int>(snapshotData['durationMs']);
    _challengerStartDate = snapshotData['challengerStartDate'] as DateTime?;
    _chellengerEndDate = snapshotData['chellengerEndDate'] as DateTime?;
    _refChallengerTotal =
        snapshotData['refChallengerTotal'] as DocumentReference?;
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
  DateTime? timeStampTraining,
  String? videoUrl,
  int? likeCountVideo,
  int? loveCountVideo,
  bool? chellengerStatus,
  int? durationMs,
  DateTime? challengerStartDate,
  DateTime? chellengerEndDate,
  DocumentReference? refChallengerTotal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name_training': displayNameTraining,
      'description': description,
      'moreDetails': moreDetails,
      'timeStamp_training': timeStampTraining,
      'video_url': videoUrl,
      'likeCountVideo': likeCountVideo,
      'loveCountVideo': loveCountVideo,
      'chellengerStatus': chellengerStatus,
      'durationMs': durationMs,
      'challengerStartDate': challengerStartDate,
      'chellengerEndDate': chellengerEndDate,
      'refChallengerTotal': refChallengerTotal,
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
        e1?.timeStampTraining == e2?.timeStampTraining &&
        e1?.videoUrl == e2?.videoUrl &&
        e1?.likeCountVideo == e2?.likeCountVideo &&
        e1?.loveCountVideo == e2?.loveCountVideo &&
        listEquality.equals(e1?.likedBy, e2?.likedBy) &&
        listEquality.equals(e1?.lovedBy, e2?.lovedBy) &&
        listEquality.equals(e1?.challengesReference, e2?.challengesReference) &&
        e1?.chellengerStatus == e2?.chellengerStatus &&
        e1?.durationMs == e2?.durationMs &&
        e1?.challengerStartDate == e2?.challengerStartDate &&
        e1?.chellengerEndDate == e2?.chellengerEndDate &&
        e1?.refChallengerTotal == e2?.refChallengerTotal;
  }

  @override
  int hash(AlternativeTrainingRecord? e) => const ListEquality().hash([
        e?.displayNameTraining,
        e?.description,
        e?.moreDetails,
        e?.timeStampTraining,
        e?.videoUrl,
        e?.likeCountVideo,
        e?.loveCountVideo,
        e?.likedBy,
        e?.lovedBy,
        e?.challengesReference,
        e?.chellengerStatus,
        e?.durationMs,
        e?.challengerStartDate,
        e?.chellengerEndDate,
        e?.refChallengerTotal
      ]);

  @override
  bool isValidKey(Object? o) => o is AlternativeTrainingRecord;
}
