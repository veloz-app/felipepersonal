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

  // "finalObjectives" field.
  double? _finalObjectives;
  double get finalObjectives => _finalObjectives ?? 0.0;
  bool hasFinalObjectives() => _finalObjectives != null;

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

  void _initializeFields() {
    _userID = snapshotData['userID'] as String?;
    _finalObjectives = castToType<double>(snapshotData['finalObjectives']);
    _progressObjetive = castToType<double>(snapshotData['progressObjetive']);
    _startDate = snapshotData['startDate'] as DateTime?;
    _completed = snapshotData['completed'] as bool?;
    _descriptionObjectives = snapshotData['descriptionObjectives'] as String?;
    _dataPeriodObjective = castToType<int>(snapshotData['dataPeriodObjective']);
    _documentObjectiveRef =
        snapshotData['documentObjectiveRef'] as DocumentReference?;
    _userObjetiveRef = snapshotData['userObjetiveRef'] as DocumentReference?;
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
  double? finalObjectives,
  double? progressObjetive,
  DateTime? startDate,
  bool? completed,
  String? descriptionObjectives,
  int? dataPeriodObjective,
  DocumentReference? documentObjectiveRef,
  DocumentReference? userObjetiveRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
      'finalObjectives': finalObjectives,
      'progressObjetive': progressObjetive,
      'startDate': startDate,
      'completed': completed,
      'descriptionObjectives': descriptionObjectives,
      'dataPeriodObjective': dataPeriodObjective,
      'documentObjectiveRef': documentObjectiveRef,
      'userObjetiveRef': userObjetiveRef,
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
        e1?.finalObjectives == e2?.finalObjectives &&
        e1?.progressObjetive == e2?.progressObjetive &&
        e1?.startDate == e2?.startDate &&
        e1?.completed == e2?.completed &&
        e1?.descriptionObjectives == e2?.descriptionObjectives &&
        e1?.dataPeriodObjective == e2?.dataPeriodObjective &&
        e1?.documentObjectiveRef == e2?.documentObjectiveRef &&
        e1?.userObjetiveRef == e2?.userObjetiveRef;
  }

  @override
  int hash(UserObjectivesRecord? e) => const ListEquality().hash([
        e?.userID,
        e?.finalObjectives,
        e?.progressObjetive,
        e?.startDate,
        e?.completed,
        e?.descriptionObjectives,
        e?.dataPeriodObjective,
        e?.documentObjectiveRef,
        e?.userObjetiveRef
      ]);

  @override
  bool isValidKey(Object? o) => o is UserObjectivesRecord;
}
