import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PerformanceRecord extends FirestoreRecord {
  PerformanceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userObjectivePerformance" field.
  int? _userObjectivePerformance;
  int get userObjectivePerformance => _userObjectivePerformance ?? 0;
  bool hasUserObjectivePerformance() => _userObjectivePerformance != null;

  // "userChallengerPerformance" field.
  int? _userChallengerPerformance;
  int get userChallengerPerformance => _userChallengerPerformance ?? 0;
  bool hasUserChallengerPerformance() => _userChallengerPerformance != null;

  // "userChallengerComplete" field.
  int? _userChallengerComplete;
  int get userChallengerComplete => _userChallengerComplete ?? 0;
  bool hasUserChallengerComplete() => _userChallengerComplete != null;

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "totalAmount" field.
  int? _totalAmount;
  int get totalAmount => _totalAmount ?? 0;
  bool hasTotalAmount() => _totalAmount != null;

  // "userPerformanceRef" field.
  List<DocumentReference>? _userPerformanceRef;
  List<DocumentReference> get userPerformanceRef =>
      _userPerformanceRef ?? const [];
  bool hasUserPerformanceRef() => _userPerformanceRef != null;

  // "userObjectiveRef" field.
  List<DocumentReference>? _userObjectiveRef;
  List<DocumentReference> get userObjectiveRef => _userObjectiveRef ?? const [];
  bool hasUserObjectiveRef() => _userObjectiveRef != null;

  // "create_time" field.
  DateTime? _createTime;
  DateTime? get createTime => _createTime;
  bool hasCreateTime() => _createTime != null;

  void _initializeFields() {
    _userObjectivePerformance =
        castToType<int>(snapshotData['userObjectivePerformance']);
    _userChallengerPerformance =
        castToType<int>(snapshotData['userChallengerPerformance']);
    _userChallengerComplete =
        castToType<int>(snapshotData['userChallengerComplete']);
    _userID = snapshotData['userID'] as DocumentReference?;
    _totalAmount = castToType<int>(snapshotData['totalAmount']);
    _userPerformanceRef = getDataList(snapshotData['userPerformanceRef']);
    _userObjectiveRef = getDataList(snapshotData['userObjectiveRef']);
    _createTime = snapshotData['create_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('performance');

  static Stream<PerformanceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PerformanceRecord.fromSnapshot(s));

  static Future<PerformanceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PerformanceRecord.fromSnapshot(s));

  static PerformanceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PerformanceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PerformanceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PerformanceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PerformanceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PerformanceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPerformanceRecordData({
  int? userObjectivePerformance,
  int? userChallengerPerformance,
  int? userChallengerComplete,
  DocumentReference? userID,
  int? totalAmount,
  DateTime? createTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userObjectivePerformance': userObjectivePerformance,
      'userChallengerPerformance': userChallengerPerformance,
      'userChallengerComplete': userChallengerComplete,
      'userID': userID,
      'totalAmount': totalAmount,
      'create_time': createTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class PerformanceRecordDocumentEquality implements Equality<PerformanceRecord> {
  const PerformanceRecordDocumentEquality();

  @override
  bool equals(PerformanceRecord? e1, PerformanceRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userObjectivePerformance == e2?.userObjectivePerformance &&
        e1?.userChallengerPerformance == e2?.userChallengerPerformance &&
        e1?.userChallengerComplete == e2?.userChallengerComplete &&
        e1?.userID == e2?.userID &&
        e1?.totalAmount == e2?.totalAmount &&
        listEquality.equals(e1?.userPerformanceRef, e2?.userPerformanceRef) &&
        listEquality.equals(e1?.userObjectiveRef, e2?.userObjectiveRef) &&
        e1?.createTime == e2?.createTime;
  }

  @override
  int hash(PerformanceRecord? e) => const ListEquality().hash([
        e?.userObjectivePerformance,
        e?.userChallengerPerformance,
        e?.userChallengerComplete,
        e?.userID,
        e?.totalAmount,
        e?.userPerformanceRef,
        e?.userObjectiveRef,
        e?.createTime
      ]);

  @override
  bool isValidKey(Object? o) => o is PerformanceRecord;
}
