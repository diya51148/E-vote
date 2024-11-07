import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocumentsRecord extends FirestoreRecord {
  DocumentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "Doc_image" field.
  String? _docImage;
  String get docImage => _docImage ?? '';
  bool hasDocImage() => _docImage != null;

  // "Doc_file" field.
  String? _docFile;
  String get docFile => _docFile ?? '';
  bool hasDocFile() => _docFile != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdTime = snapshotData['Created_time'] as DateTime?;
    _docImage = snapshotData['Doc_image'] as String?;
    _docFile = snapshotData['Doc_file'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Documents')
          : FirebaseFirestore.instance.collectionGroup('Documents');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Documents').doc(id);

  static Stream<DocumentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DocumentsRecord.fromSnapshot(s));

  static Future<DocumentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DocumentsRecord.fromSnapshot(s));

  static DocumentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DocumentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DocumentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DocumentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DocumentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DocumentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDocumentsRecordData({
  DateTime? createdTime,
  String? docImage,
  String? docFile,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Created_time': createdTime,
      'Doc_image': docImage,
      'Doc_file': docFile,
    }.withoutNulls,
  );

  return firestoreData;
}

class DocumentsRecordDocumentEquality implements Equality<DocumentsRecord> {
  const DocumentsRecordDocumentEquality();

  @override
  bool equals(DocumentsRecord? e1, DocumentsRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.docImage == e2?.docImage &&
        e1?.docFile == e2?.docFile;
  }

  @override
  int hash(DocumentsRecord? e) =>
      const ListEquality().hash([e?.createdTime, e?.docImage, e?.docFile]);

  @override
  bool isValidKey(Object? o) => o is DocumentsRecord;
}
