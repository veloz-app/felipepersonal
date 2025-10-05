import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserChallengersRecord extends FirestoreRecord {
  UserChallengersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "startDateChallenger" field.
  DateTime? _startDateChallenger;
  DateTime? get startDateChallenger => _startDateChallenger;
  bool hasStartDateChallenger() => _startDateChallenger != null;

  // "endDateChallenger" field.
  DateTime? _endDateChallenger;
  DateTime? get endDateChallenger => _endDateChallenger;
  bool hasEndDateChallenger() => _endDateChallenger != null;

  // "userRefChallenger" field.
  DocumentReference? _userRefChallenger;
  DocumentReference? get userRefChallenger => _userRefChallenger;
  bool hasUserRefChallenger() => _userRefChallenger != null;

  // "userStatus" field.
  bool? _userStatus;
  bool get userStatus => _userStatus ?? false;
  bool hasUserStatus() => _userStatus != null;

  void _initializeFields() {
    _startDateChallenger = snapshotData['startDateChallenger'] as DateTime?;
    _endDateChallenger = snapshotData['endDateChallenger'] as DateTime?;
    _userRefChallenger =
        snapshotData['userRefChallenger'] as DocumentReference?;
    _userStatus = snapshotData['userStatus'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userChallengers');

  static Stream<UserChallengersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserChallengersRecord.fromSnapshot(s));

  static Future<UserChallengersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserChallengersRecord.fromSnapshot(s));

  static UserChallengersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserChallengersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserChallengersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserChallengersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserChallengersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserChallengersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserChallengersRecordData({
  DateTime? startDateChallenger,
  DateTime? endDateChallenger,
  DocumentReference? userRefChallenger,
  bool? userStatus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'startDateChallenger': startDateChallenger,
      'endDateChallenger': endDateChallenger,
      'userRefChallenger': userRefChallenger,
      'userStatus': userStatus,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserChallengersRecordDocumentEquality
    implements Equality<UserChallengersRecord> {
  const UserChallengersRecordDocumentEquality();

  @override
  bool equals(UserChallengersRecord? e1, UserChallengersRecord? e2) {
    return e1?.startDateChallenger == e2?.startDateChallenger &&
        e1?.endDateChallenger == e2?.endDateChallenger &&
        e1?.userRefChallenger == e2?.userRefChallenger &&
        e1?.userStatus == e2?.userStatus;
  }

  @override
  int hash(UserChallengersRecord? e) => const ListEquality().hash([
        e?.startDateChallenger,
        e?.endDateChallenger,
        e?.userRefChallenger,
        e?.userStatus
      ]);

  @override
  bool isValidKey(Object? o) => o is UserChallengersRecord;
}
