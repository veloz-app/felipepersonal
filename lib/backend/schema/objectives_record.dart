import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ObjectivesRecord extends FirestoreRecord {
  ObjectivesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name_objective" field.
  String? _nameObjective;
  String get nameObjective => _nameObjective ?? '';
  bool hasNameObjective() => _nameObjective != null;

  // "type_objective" field.
  String? _typeObjective;
  String get typeObjective => _typeObjective ?? '';
  bool hasTypeObjective() => _typeObjective != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image_display" field.
  String? _imageDisplay;
  String get imageDisplay => _imageDisplay ?? '';
  bool hasImageDisplay() => _imageDisplay != null;

  void _initializeFields() {
    _nameObjective = snapshotData['name_objective'] as String?;
    _typeObjective = snapshotData['type_objective'] as String?;
    _description = snapshotData['description'] as String?;
    _imageDisplay = snapshotData['image_display'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('objectives');

  static Stream<ObjectivesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ObjectivesRecord.fromSnapshot(s));

  static Future<ObjectivesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ObjectivesRecord.fromSnapshot(s));

  static ObjectivesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ObjectivesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ObjectivesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ObjectivesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ObjectivesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ObjectivesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createObjectivesRecordData({
  String? nameObjective,
  String? typeObjective,
  String? description,
  String? imageDisplay,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name_objective': nameObjective,
      'type_objective': typeObjective,
      'description': description,
      'image_display': imageDisplay,
    }.withoutNulls,
  );

  return firestoreData;
}

class ObjectivesRecordDocumentEquality implements Equality<ObjectivesRecord> {
  const ObjectivesRecordDocumentEquality();

  @override
  bool equals(ObjectivesRecord? e1, ObjectivesRecord? e2) {
    return e1?.nameObjective == e2?.nameObjective &&
        e1?.typeObjective == e2?.typeObjective &&
        e1?.description == e2?.description &&
        e1?.imageDisplay == e2?.imageDisplay;
  }

  @override
  int hash(ObjectivesRecord? e) => const ListEquality().hash(
      [e?.nameObjective, e?.typeObjective, e?.description, e?.imageDisplay]);

  @override
  bool isValidKey(Object? o) => o is ObjectivesRecord;
}
