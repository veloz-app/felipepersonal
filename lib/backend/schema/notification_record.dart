import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationRecord extends FirestoreRecord {
  NotificationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "notificationType" field.
  String? _notificationType;
  String get notificationType => _notificationType ?? '';
  bool hasNotificationType() => _notificationType != null;

  // "idNotification" field.
  String? _idNotification;
  String get idNotification => _idNotification ?? '';
  bool hasIdNotification() => _idNotification != null;

  // "statusNotification" field.
  bool? _statusNotification;
  bool get statusNotification => _statusNotification ?? false;
  bool hasStatusNotification() => _statusNotification != null;

  // "timeStamp_notification" field.
  DateTime? _timeStampNotification;
  DateTime? get timeStampNotification => _timeStampNotification;
  bool hasTimeStampNotification() => _timeStampNotification != null;

  // "imageCover_url" field.
  String? _imageCoverUrl;
  String get imageCoverUrl => _imageCoverUrl ?? '';
  bool hasImageCoverUrl() => _imageCoverUrl != null;

  void _initializeFields() {
    _notificationType = snapshotData['notificationType'] as String?;
    _idNotification = snapshotData['idNotification'] as String?;
    _statusNotification = snapshotData['statusNotification'] as bool?;
    _timeStampNotification =
        snapshotData['timeStamp_notification'] as DateTime?;
    _imageCoverUrl = snapshotData['imageCover_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notification');

  static Stream<NotificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationRecord.fromSnapshot(s));

  static Future<NotificationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationRecord.fromSnapshot(s));

  static NotificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationRecordData({
  String? notificationType,
  String? idNotification,
  bool? statusNotification,
  DateTime? timeStampNotification,
  String? imageCoverUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'notificationType': notificationType,
      'idNotification': idNotification,
      'statusNotification': statusNotification,
      'timeStamp_notification': timeStampNotification,
      'imageCover_url': imageCoverUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationRecordDocumentEquality
    implements Equality<NotificationRecord> {
  const NotificationRecordDocumentEquality();

  @override
  bool equals(NotificationRecord? e1, NotificationRecord? e2) {
    return e1?.notificationType == e2?.notificationType &&
        e1?.idNotification == e2?.idNotification &&
        e1?.statusNotification == e2?.statusNotification &&
        e1?.timeStampNotification == e2?.timeStampNotification &&
        e1?.imageCoverUrl == e2?.imageCoverUrl;
  }

  @override
  int hash(NotificationRecord? e) => const ListEquality().hash([
        e?.notificationType,
        e?.idNotification,
        e?.statusNotification,
        e?.timeStampNotification,
        e?.imageCoverUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationRecord;
}
