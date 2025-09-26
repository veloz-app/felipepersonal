import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

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

  // "time_stampTips" field.
  DateTime? _timeStampTips;
  DateTime? get timeStampTips => _timeStampTips;
  bool hasTimeStampTips() => _timeStampTips != null;

  // "likeCountTips" field.
  int? _likeCountTips;
  int get likeCountTips => _likeCountTips ?? 0;
  bool hasLikeCountTips() => _likeCountTips != null;

  // "loveCountTips" field.
  int? _loveCountTips;
  int get loveCountTips => _loveCountTips ?? 0;
  bool hasLoveCountTips() => _loveCountTips != null;

  // "liked_tips" field.
  List<DocumentReference>? _likedTips;
  List<DocumentReference> get likedTips => _likedTips ?? const [];
  bool hasLikedTips() => _likedTips != null;

  // "loved_tips" field.
  List<DocumentReference>? _lovedTips;
  List<DocumentReference> get lovedTips => _lovedTips ?? const [];
  bool hasLovedTips() => _lovedTips != null;

  void _initializeFields() {
    _displayNameTypes = snapshotData['display_nameTypes'] as String?;
    _tipDetail = snapshotData['tipDetail'] as String?;
    _idTips = snapshotData['idTips'] as String?;
    _timeStampTips = snapshotData['time_stampTips'] as DateTime?;
    _likeCountTips = castToType<int>(snapshotData['likeCountTips']);
    _loveCountTips = castToType<int>(snapshotData['loveCountTips']);
    _likedTips = getDataList(snapshotData['liked_tips']);
    _lovedTips = getDataList(snapshotData['loved_tips']);
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
  DateTime? timeStampTips,
  int? likeCountTips,
  int? loveCountTips,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_nameTypes': displayNameTypes,
      'tipDetail': tipDetail,
      'idTips': idTips,
      'time_stampTips': timeStampTips,
      'likeCountTips': likeCountTips,
      'loveCountTips': loveCountTips,
    }.withoutNulls,
  );

  return firestoreData;
}

class TipsRecordDocumentEquality implements Equality<TipsRecord> {
  const TipsRecordDocumentEquality();

  @override
  bool equals(TipsRecord? e1, TipsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.displayNameTypes == e2?.displayNameTypes &&
        e1?.tipDetail == e2?.tipDetail &&
        e1?.idTips == e2?.idTips &&
        e1?.timeStampTips == e2?.timeStampTips &&
        e1?.likeCountTips == e2?.likeCountTips &&
        e1?.loveCountTips == e2?.loveCountTips &&
        listEquality.equals(e1?.likedTips, e2?.likedTips) &&
        listEquality.equals(e1?.lovedTips, e2?.lovedTips);
  }

  @override
  int hash(TipsRecord? e) => const ListEquality().hash([
        e?.displayNameTypes,
        e?.tipDetail,
        e?.idTips,
        e?.timeStampTips,
        e?.likeCountTips,
        e?.loveCountTips,
        e?.likedTips,
        e?.lovedTips
      ]);

  @override
  bool isValidKey(Object? o) => o is TipsRecord;
}
