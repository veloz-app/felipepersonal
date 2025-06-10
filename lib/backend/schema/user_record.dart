import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "isAluno" field.
  bool? _isAluno;
  bool get isAluno => _isAluno ?? false;
  bool hasIsAluno() => _isAluno != null;

  // "IsAdm" field.
  bool? _isAdm;
  bool get isAdm => _isAdm ?? false;
  bool hasIsAdm() => _isAdm != null;

  // "Sobrenome" field.
  String? _sobrenome;
  String get sobrenome => _sobrenome ?? '';
  bool hasSobrenome() => _sobrenome != null;

  // "Sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  bool hasSexo() => _sexo != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "idade" field.
  int? _idade;
  int get idade => _idade ?? 0;
  bool hasIdade() => _idade != null;

  // "data_de_nascimento" field.
  String? _dataDeNascimento;
  String get dataDeNascimento => _dataDeNascimento ?? '';
  bool hasDataDeNascimento() => _dataDeNascimento != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _isAluno = snapshotData['isAluno'] as bool?;
    _isAdm = snapshotData['IsAdm'] as bool?;
    _sobrenome = snapshotData['Sobrenome'] as String?;
    _sexo = snapshotData['Sexo'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _idade = castToType<int>(snapshotData['idade']);
    _dataDeNascimento = snapshotData['data_de_nascimento'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  bool? isAluno,
  bool? isAdm,
  String? sobrenome,
  String? sexo,
  DateTime? createdTime,
  String? phoneNumber,
  int? idade,
  String? dataDeNascimento,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'isAluno': isAluno,
      'IsAdm': isAdm,
      'Sobrenome': sobrenome,
      'Sexo': sexo,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'idade': idade,
      'data_de_nascimento': dataDeNascimento,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.isAluno == e2?.isAluno &&
        e1?.isAdm == e2?.isAdm &&
        e1?.sobrenome == e2?.sobrenome &&
        e1?.sexo == e2?.sexo &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.idade == e2?.idade &&
        e1?.dataDeNascimento == e2?.dataDeNascimento;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.isAluno,
        e?.isAdm,
        e?.sobrenome,
        e?.sexo,
        e?.createdTime,
        e?.phoneNumber,
        e?.idade,
        e?.dataDeNascimento
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
