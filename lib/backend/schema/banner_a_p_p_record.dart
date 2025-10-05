import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BannerAPPRecord extends FirestoreRecord {
  BannerAPPRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image1" field.
  String? _image1;
  String get image1 => _image1 ?? '';
  bool hasImage1() => _image1 != null;

  // "image2" field.
  String? _image2;
  String get image2 => _image2 ?? '';
  bool hasImage2() => _image2 != null;

  // "image3" field.
  String? _image3;
  String get image3 => _image3 ?? '';
  bool hasImage3() => _image3 != null;

  void _initializeFields() {
    _image1 = snapshotData['image1'] as String?;
    _image2 = snapshotData['image2'] as String?;
    _image3 = snapshotData['image3'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bannerAPP');

  static Stream<BannerAPPRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BannerAPPRecord.fromSnapshot(s));

  static Future<BannerAPPRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BannerAPPRecord.fromSnapshot(s));

  static BannerAPPRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BannerAPPRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BannerAPPRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BannerAPPRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BannerAPPRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BannerAPPRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBannerAPPRecordData({
  String? image1,
  String? image2,
  String? image3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image1': image1,
      'image2': image2,
      'image3': image3,
    }.withoutNulls,
  );

  return firestoreData;
}

class BannerAPPRecordDocumentEquality implements Equality<BannerAPPRecord> {
  const BannerAPPRecordDocumentEquality();

  @override
  bool equals(BannerAPPRecord? e1, BannerAPPRecord? e2) {
    return e1?.image1 == e2?.image1 &&
        e1?.image2 == e2?.image2 &&
        e1?.image3 == e2?.image3;
  }

  @override
  int hash(BannerAPPRecord? e) =>
      const ListEquality().hash([e?.image1, e?.image2, e?.image3]);

  @override
  bool isValidKey(Object? o) => o is BannerAPPRecord;
}
