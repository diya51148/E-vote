import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VotersRecord extends FirestoreRecord {
  VotersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "VoterID" field.
  String? _voterID;
  String get voterID => _voterID ?? '';
  bool hasVoterID() => _voterID != null;

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

  // "VerificationStatus" field.
  String? _verificationStatus;
  String get verificationStatus => _verificationStatus ?? '';
  bool hasVerificationStatus() => _verificationStatus != null;

  // "ElectionID" field.
  DocumentReference? _electionID;
  DocumentReference? get electionID => _electionID;
  bool hasElectionID() => _electionID != null;

  // "Vid_front" field.
  String? _vidFront;
  String get vidFront => _vidFront ?? '';
  bool hasVidFront() => _vidFront != null;

  // "vid_back" field.
  String? _vidBack;
  String get vidBack => _vidBack ?? '';
  bool hasVidBack() => _vidBack != null;

  void _initializeFields() {
    _voterID = snapshotData['VoterID'] as String?;
    _name = snapshotData['Name'] as String?;
    _dateOfBirth = snapshotData['DateOfBirth'] as DateTime?;
    _gender = snapshotData['Gender'] as String?;
    _address = snapshotData['Address'] as String?;
    _contactNumber = castToType<int>(snapshotData['ContactNumber']);
    _email = snapshotData['Email'] as String?;
    _verificationStatus = snapshotData['VerificationStatus'] as String?;
    _electionID = snapshotData['ElectionID'] as DocumentReference?;
    _vidFront = snapshotData['Vid_front'] as String?;
    _vidBack = snapshotData['vid_back'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Voters');

  static Stream<VotersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VotersRecord.fromSnapshot(s));

  static Future<VotersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VotersRecord.fromSnapshot(s));

  static VotersRecord fromSnapshot(DocumentSnapshot snapshot) => VotersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VotersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VotersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VotersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VotersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVotersRecordData({
  String? voterID,
  String? name,
  DateTime? dateOfBirth,
  String? gender,
  String? address,
  int? contactNumber,
  String? email,
  String? verificationStatus,
  DocumentReference? electionID,
  String? vidFront,
  String? vidBack,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'VoterID': voterID,
      'Name': name,
      'DateOfBirth': dateOfBirth,
      'Gender': gender,
      'Address': address,
      'ContactNumber': contactNumber,
      'Email': email,
      'VerificationStatus': verificationStatus,
      'ElectionID': electionID,
      'Vid_front': vidFront,
      'vid_back': vidBack,
    }.withoutNulls,
  );

  return firestoreData;
}

class VotersRecordDocumentEquality implements Equality<VotersRecord> {
  const VotersRecordDocumentEquality();

  @override
  bool equals(VotersRecord? e1, VotersRecord? e2) {
    return e1?.voterID == e2?.voterID &&
        e1?.name == e2?.name &&
        e1?.dateOfBirth == e2?.dateOfBirth &&
        e1?.gender == e2?.gender &&
        e1?.address == e2?.address &&
        e1?.contactNumber == e2?.contactNumber &&
        e1?.email == e2?.email &&
        e1?.verificationStatus == e2?.verificationStatus &&
        e1?.electionID == e2?.electionID &&
        e1?.vidFront == e2?.vidFront &&
        e1?.vidBack == e2?.vidBack;
  }

  @override
  int hash(VotersRecord? e) => const ListEquality().hash([
        e?.voterID,
        e?.name,
        e?.dateOfBirth,
        e?.gender,
        e?.address,
        e?.contactNumber,
        e?.email,
        e?.verificationStatus,
        e?.electionID,
        e?.vidFront,
        e?.vidBack
      ]);

  @override
  bool isValidKey(Object? o) => o is VotersRecord;
}
