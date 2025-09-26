import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompleteObjectivesRecord extends FirestoreRecord {
  CompleteObjectivesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "namObjectiveComplete" field.
  String? _namObjectiveComplete;
  String get namObjectiveComplete => _namObjectiveComplete ?? '';
  bool hasNamObjectiveComplete() => _namObjectiveComplete != null;

  void _initializeFields() {
    _userID = snapshotData['userID'] as String?;
    _namObjectiveComplete = snapshotData['namObjectiveComplete'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('completeObjectives');

  static Stream<CompleteObjectivesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompleteObjectivesRecord.fromSnapshot(s));

  static Future<CompleteObjectivesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CompleteObjectivesRecord.fromSnapshot(s));

  static CompleteObjectivesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompleteObjectivesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompleteObjectivesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompleteObjectivesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompleteObjectivesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompleteObjectivesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompleteObjectivesRecordData({
  String? userID,
  String? namObjectiveComplete,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
      'namObjectiveComplete': namObjectiveComplete,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompleteObjectivesRecordDocumentEquality
    implements Equality<CompleteObjectivesRecord> {
  const CompleteObjectivesRecordDocumentEquality();

  @override
  bool equals(CompleteObjectivesRecord? e1, CompleteObjectivesRecord? e2) {
    return e1?.userID == e2?.userID &&
        e1?.namObjectiveComplete == e2?.namObjectiveComplete;
  }

  @override
  int hash(CompleteObjectivesRecord? e) =>
      const ListEquality().hash([e?.userID, e?.namObjectiveComplete]);

  @override
  bool isValidKey(Object? o) => o is CompleteObjectivesRecord;
}
