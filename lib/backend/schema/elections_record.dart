import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ElectionsRecord extends FirestoreRecord {
  ElectionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ElectionID" field.
  String? _electionID;
  String get electionID => _electionID ?? '';
  bool hasElectionID() => _electionID != null;

  // "ElectionName" field.
  String? _electionName;
  String get electionName => _electionName ?? '';
  bool hasElectionName() => _electionName != null;

  // "ElectionStartDate" field.
  DateTime? _electionStartDate;
  DateTime? get electionStartDate => _electionStartDate;
  bool hasElectionStartDate() => _electionStartDate != null;

  // "ElectionEndDate" field.
  DateTime? _electionEndDate;
  DateTime? get electionEndDate => _electionEndDate;
  bool hasElectionEndDate() => _electionEndDate != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "Election_image" field.
  String? _electionImage;
  String get electionImage => _electionImage ?? '';
  bool hasElectionImage() => _electionImage != null;

  // "Winner" field.
  DocumentReference? _winner;
  DocumentReference? get winner => _winner;
  bool hasWinner() => _winner != null;

  // "Created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _electionID = snapshotData['ElectionID'] as String?;
    _electionName = snapshotData['ElectionName'] as String?;
    _electionStartDate = snapshotData['ElectionStartDate'] as DateTime?;
    _electionEndDate = snapshotData['ElectionEndDate'] as DateTime?;
    _status = snapshotData['Status'] as String?;
    _electionImage = snapshotData['Election_image'] as String?;
    _winner = snapshotData['Winner'] as DocumentReference?;
    _createdTime = snapshotData['Created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Elections');

  static Stream<ElectionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ElectionsRecord.fromSnapshot(s));

  static Future<ElectionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ElectionsRecord.fromSnapshot(s));

  static ElectionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ElectionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ElectionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ElectionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ElectionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ElectionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createElectionsRecordData({
  String? electionID,
  String? electionName,
  DateTime? electionStartDate,
  DateTime? electionEndDate,
  String? status,
  String? electionImage,
  DocumentReference? winner,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ElectionID': electionID,
      'ElectionName': electionName,
      'ElectionStartDate': electionStartDate,
      'ElectionEndDate': electionEndDate,
      'Status': status,
      'Election_image': electionImage,
      'Winner': winner,
      'Created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class ElectionsRecordDocumentEquality implements Equality<ElectionsRecord> {
  const ElectionsRecordDocumentEquality();

  @override
  bool equals(ElectionsRecord? e1, ElectionsRecord? e2) {
    return e1?.electionID == e2?.electionID &&
        e1?.electionName == e2?.electionName &&
        e1?.electionStartDate == e2?.electionStartDate &&
        e1?.electionEndDate == e2?.electionEndDate &&
        e1?.status == e2?.status &&
        e1?.electionImage == e2?.electionImage &&
        e1?.winner == e2?.winner &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(ElectionsRecord? e) => const ListEquality().hash([
        e?.electionID,
        e?.electionName,
        e?.electionStartDate,
        e?.electionEndDate,
        e?.status,
        e?.electionImage,
        e?.winner,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is ElectionsRecord;
}
