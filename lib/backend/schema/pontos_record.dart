import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PontosRecord extends FirestoreRecord {
  PontosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _desc = snapshotData['desc'] as String?;
    _img = snapshotData['img'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pontos');

  static Stream<PontosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PontosRecord.fromSnapshot(s));

  static Future<PontosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PontosRecord.fromSnapshot(s));

  static PontosRecord fromSnapshot(DocumentSnapshot snapshot) => PontosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PontosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PontosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PontosRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createPontosRecordData({
  String? nome,
  String? desc,
  String? img,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'desc': desc,
      'img': img,
    }.withoutNulls,
  );

  return firestoreData;
}
