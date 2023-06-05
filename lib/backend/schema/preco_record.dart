import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PrecoRecord extends FirestoreRecord {
  PrecoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "entrada" field.
  double? _entrada;
  double get entrada => _entrada ?? 0.0;
  bool hasEntrada() => _entrada != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _desc = snapshotData['desc'] as String?;
    _entrada = castToType<double>(snapshotData['entrada']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('preco')
          : FirebaseFirestore.instance.collectionGroup('preco');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('preco').doc();

  static Stream<PrecoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PrecoRecord.fromSnapshot(s));

  static Future<PrecoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PrecoRecord.fromSnapshot(s));

  static PrecoRecord fromSnapshot(DocumentSnapshot snapshot) => PrecoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PrecoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PrecoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PrecoRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createPrecoRecordData({
  String? desc,
  double? entrada,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'desc': desc,
      'entrada': entrada,
    }.withoutNulls,
  );

  return firestoreData;
}
