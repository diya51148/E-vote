import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CandidatesRecord extends FirestoreRecord {
  CandidatesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "CandidateID" field.
  String? _candidateID;
  String get candidateID => _candidateID ?? '';
  bool hasCandidateID() => _candidateID != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "DateOfBirth" field.
  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _dateOfBirth;
  bool hasDateOfBirth() => _dateOfBirth != null;

  // "Gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "ContactNumber" field.
  int? _contactNumber;
  int get contactNumber => _contactNumber ?? 0;
  bool hasContactNumber() => _contactNumber != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "PartyName" field.
  String? _partyName;
  String get partyName => _partyName ?? '';
  bool hasPartyName() => _partyName != null;

  // "ElectionID" field.
  DocumentReference? _electionID;
  DocumentReference? get electionID => _electionID;
  bool hasElectionID() => _electionID != null;

  // "Party_id" field.
  DocumentReference? _partyId;
  DocumentReference? get partyId => _partyId;
  bool hasPartyId() => _partyId != null;

  // "cand_image" field.
  String? _candImage;
  String get candImage => _candImage ?? '';
  bool hasCandImage() => _candImage != null;

  // "Created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _candidateID = snapshotData['CandidateID'] as String?;
    _name = snapshotData['Name'] as String?;
    _dateOfBirth = snapshotData['DateOfBirth'] as DateTime?;
    _gender = snapshotData['Gender'] as String?;
    _address = snapshotData['Address'] as String?;
    _contactNumber = castToType<int>(snapshotData['ContactNumber']);
    _email = snapshotData['Email'] as String?;
    _partyName = snapshotData['PartyName'] as String?;
    _electionID = snapshotData['ElectionID'] as DocumentReference?;
    _partyId = snapshotData['Party_id'] as DocumentReference?;
    _candImage = snapshotData['cand_image'] as String?;
    _createdTime = snapshotData['Created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Candidates');

  static Stream<CandidatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CandidatesRecord.fromSnapshot(s));

  static Future<CandidatesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CandidatesRecord.fromSnapshot(s));

  static CandidatesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CandidatesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CandidatesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CandidatesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CandidatesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CandidatesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCandidatesRecordData({
  String? candidateID,
  String? name,
  DateTime? dateOfBirth,
  String? gender,
  String? address,
  int? contactNumber,
  String? email,
  String? partyName,
  DocumentReference? electionID,
  DocumentReference? partyId,
  String? candImage,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CandidateID': candidateID,
      'Name': name,
      'DateOfBirth': dateOfBirth,
      'Gender': gender,
      'Address': address,
      'ContactNumber': contactNumber,
      'Email': email,
      'PartyName': partyName,
      'ElectionID': electionID,
      'Party_id': partyId,
      'cand_image': candImage,
      'Created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class CandidatesRecordDocumentEquality implements Equality<CandidatesRecord> {
  const CandidatesRecordDocumentEquality();

  @override
  bool equals(CandidatesRecord? e1, CandidatesRecord? e2) {
    return e1?.candidateID == e2?.candidateID &&
        e1?.name == e2?.name &&
        e1?.dateOfBirth == e2?.dateOfBirth &&
        e1?.gender == e2?.gender &&
        e1?.address == e2?.address &&
        e1?.contactNumber == e2?.contactNumber &&
        e1?.email == e2?.email &&
        e1?.partyName == e2?.partyName &&
        e1?.electionID == e2?.electionID &&
        e1?.partyId == e2?.partyId &&
        e1?.candImage == e2?.candImage &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(CandidatesRecord? e) => const ListEquality().hash([
        e?.candidateID,
        e?.name,
        e?.dateOfBirth,
        e?.gender,
        e?.address,
        e?.contactNumber,
        e?.email,
        e?.partyName,
        e?.electionID,
        e?.partyId,
        e?.candImage,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is CandidatesRecord;
}
