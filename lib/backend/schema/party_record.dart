import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PartyRecord extends FirestoreRecord {
  PartyRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "PartyID" field.
  String? _partyID;
  String get partyID => _partyID ?? '';
  bool hasPartyID() => _partyID != null;

  // "PartyName" field.
  String? _partyName;
  String get partyName => _partyName ?? '';
  bool hasPartyName() => _partyName != null;

  // "PartyLeader" field.
  String? _partyLeader;
  String get partyLeader => _partyLeader ?? '';
  bool hasPartyLeader() => _partyLeader != null;

  // "Headquarters" field.
  String? _headquarters;
  String get headquarters => _headquarters ?? '';
  bool hasHeadquarters() => _headquarters != null;

  // "Symbol" field.
  String? _symbol;
  String get symbol => _symbol ?? '';
  bool hasSymbol() => _symbol != null;

  // "ContactNumber" field.
  String? _contactNumber;
  String get contactNumber => _contactNumber ?? '';
  bool hasContactNumber() => _contactNumber != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "Website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "About" field.
  String? _about;
  String get about => _about ?? '';
  bool hasAbout() => _about != null;

  // "Created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "FoundedYear" field.
  int? _foundedYear;
  int get foundedYear => _foundedYear ?? 0;
  bool hasFoundedYear() => _foundedYear != null;

  void _initializeFields() {
    _partyID = snapshotData['PartyID'] as String?;
    _partyName = snapshotData['PartyName'] as String?;
    _partyLeader = snapshotData['PartyLeader'] as String?;
    _headquarters = snapshotData['Headquarters'] as String?;
    _symbol = snapshotData['Symbol'] as String?;
    _contactNumber = snapshotData['ContactNumber'] as String?;
    _email = snapshotData['Email'] as String?;
    _website = snapshotData['Website'] as String?;
    _about = snapshotData['About'] as String?;
    _createdTime = snapshotData['Created_time'] as DateTime?;
    _foundedYear = castToType<int>(snapshotData['FoundedYear']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Party');

  static Stream<PartyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PartyRecord.fromSnapshot(s));

  static Future<PartyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PartyRecord.fromSnapshot(s));

  static PartyRecord fromSnapshot(DocumentSnapshot snapshot) => PartyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PartyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PartyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PartyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PartyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPartyRecordData({
  String? partyID,
  String? partyName,
  String? partyLeader,
  String? headquarters,
  String? symbol,
  String? contactNumber,
  String? email,
  String? website,
  String? about,
  DateTime? createdTime,
  int? foundedYear,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'PartyID': partyID,
      'PartyName': partyName,
      'PartyLeader': partyLeader,
      'Headquarters': headquarters,
      'Symbol': symbol,
      'ContactNumber': contactNumber,
      'Email': email,
      'Website': website,
      'About': about,
      'Created_time': createdTime,
      'FoundedYear': foundedYear,
    }.withoutNulls,
  );

  return firestoreData;
}

class PartyRecordDocumentEquality implements Equality<PartyRecord> {
  const PartyRecordDocumentEquality();

  @override
  bool equals(PartyRecord? e1, PartyRecord? e2) {
    return e1?.partyID == e2?.partyID &&
        e1?.partyName == e2?.partyName &&
        e1?.partyLeader == e2?.partyLeader &&
        e1?.headquarters == e2?.headquarters &&
        e1?.symbol == e2?.symbol &&
        e1?.contactNumber == e2?.contactNumber &&
        e1?.email == e2?.email &&
        e1?.website == e2?.website &&
        e1?.about == e2?.about &&
        e1?.createdTime == e2?.createdTime &&
        e1?.foundedYear == e2?.foundedYear;
  }

  @override
  int hash(PartyRecord? e) => const ListEquality().hash([
        e?.partyID,
        e?.partyName,
        e?.partyLeader,
        e?.headquarters,
        e?.symbol,
        e?.contactNumber,
        e?.email,
        e?.website,
        e?.about,
        e?.createdTime,
        e?.foundedYear
      ]);

  @override
  bool isValidKey(Object? o) => o is PartyRecord;
}
