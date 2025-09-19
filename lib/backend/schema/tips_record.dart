import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TipsRecord extends FirestoreRecord {
  TipsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "display_nameTypes" field.
  String? _displayNameTypes;
  String get displayNameTypes => _displayNameTypes ?? '';
  bool hasDisplayNameTypes() => _displayNameTypes != null;

  // "tipDetail" field.
  String? _tipDetail;
  String get tipDetail => _tipDetail ?? '';
  bool hasTipDetail() => _tipDetail != null;

  // "idTips" field.
  String? _idTips;
  String get idTips => _idTips ?? '';
  bool hasIdTips() => _idTips != null;

  // "likeCount" field.
  int? _likeCount;
  int get likeCount => _likeCount ?? 0;
  bool hasLikeCount() => _likeCount != null;

  // "loveCount" field.
  int? _loveCount;
  int get loveCount => _loveCount ?? 0;
  bool hasLoveCount() => _loveCount != null;

  // "time_stampTips" field.
  DateTime? _timeStampTips;
  DateTime? get timeStampTips => _timeStampTips;
  bool hasTimeStampTips() => _timeStampTips != null;

  void _initializeFields() {
    _displayNameTypes = snapshotData['display_nameTypes'] as String?;
    _tipDetail = snapshotData['tipDetail'] as String?;
    _idTips = snapshotData['idTips'] as String?;
    _likeCount = castToType<int>(snapshotData['likeCount']);
    _loveCount = castToType<int>(snapshotData['loveCount']);
    _timeStampTips = snapshotData['time_stampTips'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tips');

  static Stream<TipsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TipsRecord.fromSnapshot(s));

  static Future<TipsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TipsRecord.fromSnapshot(s));

  static TipsRecord fromSnapshot(DocumentSnapshot snapshot) => TipsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TipsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TipsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TipsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TipsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTipsRecordData({
  String? displayNameTypes,
  String? tipDetail,
  String? idTips,
  int? likeCount,
  int? loveCount,
  DateTime? timeStampTips,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_nameTypes': displayNameTypes,
      'tipDetail': tipDetail,
      'idTips': idTips,
      'likeCount': likeCount,
      'loveCount': loveCount,
      'time_stampTips': timeStampTips,
    }.withoutNulls,
  );

  return firestoreData;
}

class TipsRecordDocumentEquality implements Equality<TipsRecord> {
  const TipsRecordDocumentEquality();

  @override
  bool equals(TipsRecord? e1, TipsRecord? e2) {
    return e1?.displayNameTypes == e2?.displayNameTypes &&
        e1?.tipDetail == e2?.tipDetail &&
        e1?.idTips == e2?.idTips &&
        e1?.likeCount == e2?.likeCount &&
        e1?.loveCount == e2?.loveCount &&
        e1?.timeStampTips == e2?.timeStampTips;
  }

  @override
  int hash(TipsRecord? e) => const ListEquality().hash([
        e?.displayNameTypes,
        e?.tipDetail,
        e?.idTips,
        e?.likeCount,
        e?.loveCount,
        e?.timeStampTips
      ]);

  @override
  bool isValidKey(Object? o) => o is TipsRecord;
}
