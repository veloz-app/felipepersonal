import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserObjectivesRecord extends FirestoreRecord {
  UserObjectivesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "progressObjetive" field.
  double? _progressObjetive;
  double get progressObjetive => _progressObjetive ?? 0.0;
  bool hasProgressObjetive() => _progressObjetive != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  // "descriptionObjectives" field.
  String? _descriptionObjectives;
  String get descriptionObjectives => _descriptionObjectives ?? '';
  bool hasDescriptionObjectives() => _descriptionObjectives != null;

  // "dataPeriodObjective" field.
  int? _dataPeriodObjective;
  int get dataPeriodObjective => _dataPeriodObjective ?? 0;
  bool hasDataPeriodObjective() => _dataPeriodObjective != null;

  // "documentObjectiveRef" field.
  DocumentReference? _documentObjectiveRef;
  DocumentReference? get documentObjectiveRef => _documentObjectiveRef;
  bool hasDocumentObjectiveRef() => _documentObjectiveRef != null;

  // "userObjetiveRef" field.
  DocumentReference? _userObjetiveRef;
  DocumentReference? get userObjetiveRef => _userObjetiveRef;
  bool hasUserObjetiveRef() => _userObjetiveRef != null;

  // "typePeriod" field.
  String? _typePeriod;
  String get typePeriod => _typePeriod ?? '';
  bool hasTypePeriod() => _typePeriod != null;

  // "finalObjectives" field.
  double? _finalObjectives;
  double get finalObjectives => _finalObjectives ?? 0.0;
  bool hasFinalObjectives() => _finalObjectives != null;

  // "typeObjective" field.
  String? _typeObjective;
  String get typeObjective => _typeObjective ?? '';
  bool hasTypeObjective() => _typeObjective != null;

  // "docRef" field.
  String? _docRef;
  String get docRef => _docRef ?? '';
  bool hasDocRef() => _docRef != null;

  // "progressPercent" field.
  double? _progressPercent;
  double get progressPercent => _progressPercent ?? 0.0;
  bool hasProgressPercent() => _progressPercent != null;

  // "currentDistanceKm" field.
  double? _currentDistanceKm;
  double get currentDistanceKm => _currentDistanceKm ?? 0.0;
  bool hasCurrentDistanceKm() => _currentDistanceKm != null;

  // "nameObjetive" field.
  String? _nameObjetive;
  String get nameObjetive => _nameObjetive ?? '';
  bool hasNameObjetive() => _nameObjetive != null;

  void _initializeFields() {
    _userID = snapshotData['userID'] as String?;
    _progressObjetive = castToType<double>(snapshotData['progressObjetive']);
    _startDate = snapshotData['startDate'] as DateTime?;
    _completed = snapshotData['completed'] as bool?;
    _descriptionObjectives = snapshotData['descriptionObjectives'] as String?;
    _dataPeriodObjective = castToType<int>(snapshotData['dataPeriodObjective']);
    _documentObjectiveRef =
        snapshotData['documentObjectiveRef'] as DocumentReference?;
    _userObjetiveRef = snapshotData['userObjetiveRef'] as DocumentReference?;
    _typePeriod = snapshotData['typePeriod'] as String?;
    _finalObjectives = castToType<double>(snapshotData['finalObjectives']);
    _typeObjective = snapshotData['typeObjective'] as String?;
    _docRef = snapshotData['docRef'] as String?;
    _progressPercent = castToType<double>(snapshotData['progressPercent']);
    _currentDistanceKm = castToType<double>(snapshotData['currentDistanceKm']);
    _nameObjetive = snapshotData['nameObjetive'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userObjectives');

  static Stream<UserObjectivesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserObjectivesRecord.fromSnapshot(s));

  static Future<UserObjectivesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserObjectivesRecord.fromSnapshot(s));

  static UserObjectivesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserObjectivesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserObjectivesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserObjectivesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserObjectivesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserObjectivesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserObjectivesRecordData({
  String? userID,
  double? progressObjetive,
  DateTime? startDate,
  bool? completed,
  String? descriptionObjectives,
  int? dataPeriodObjective,
  DocumentReference? documentObjectiveRef,
  DocumentReference? userObjetiveRef,
  String? typePeriod,
  double? finalObjectives,
  String? typeObjective,
  String? docRef,
  double? progressPercent,
  double? currentDistanceKm,
  String? nameObjetive,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
      'progressObjetive': progressObjetive,
      'startDate': startDate,
      'completed': completed,
      'descriptionObjectives': descriptionObjectives,
      'dataPeriodObjective': dataPeriodObjective,
      'documentObjectiveRef': documentObjectiveRef,
      'userObjetiveRef': userObjetiveRef,
      'typePeriod': typePeriod,
      'finalObjectives': finalObjectives,
      'typeObjective': typeObjective,
      'docRef': docRef,
      'progressPercent': progressPercent,
      'currentDistanceKm': currentDistanceKm,
      'nameObjetive': nameObjetive,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserObjectivesRecordDocumentEquality
    implements Equality<UserObjectivesRecord> {
  const UserObjectivesRecordDocumentEquality();

  @override
  bool equals(UserObjectivesRecord? e1, UserObjectivesRecord? e2) {
    return e1?.userID == e2?.userID &&
        e1?.progressObjetive == e2?.progressObjetive &&
        e1?.startDate == e2?.startDate &&
        e1?.completed == e2?.completed &&
        e1?.descriptionObjectives == e2?.descriptionObjectives &&
        e1?.dataPeriodObjective == e2?.dataPeriodObjective &&
        e1?.documentObjectiveRef == e2?.documentObjectiveRef &&
        e1?.userObjetiveRef == e2?.userObjetiveRef &&
        e1?.typePeriod == e2?.typePeriod &&
        e1?.finalObjectives == e2?.finalObjectives &&
        e1?.typeObjective == e2?.typeObjective &&
        e1?.docRef == e2?.docRef &&
        e1?.progressPercent == e2?.progressPercent &&
        e1?.currentDistanceKm == e2?.currentDistanceKm &&
        e1?.nameObjetive == e2?.nameObjetive;
  }

  @override
  int hash(UserObjectivesRecord? e) => const ListEquality().hash([
        e?.userID,
        e?.progressObjetive,
        e?.startDate,
        e?.completed,
        e?.descriptionObjectives,
        e?.dataPeriodObjective,
        e?.documentObjectiveRef,
        e?.userObjetiveRef,
        e?.typePeriod,
        e?.finalObjectives,
        e?.typeObjective,
        e?.docRef,
        e?.progressPercent,
        e?.currentDistanceKm,
        e?.nameObjetive
      ]);

  @override
  bool isValidKey(Object? o) => o is UserObjectivesRecord;
}
