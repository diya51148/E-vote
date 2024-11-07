import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VotesRecord extends FirestoreRecord {
  VotesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "VoteID" field.
  String? _voteID;
  String get voteID => _voteID ?? '';
  bool hasVoteID() => _voteID != null;

  // "VoterID" field.
  DocumentReference? _voterID;
  DocumentReference? get voterID => _voterID;
  bool hasVoterID() => _voterID != null;

  // "CandidateID" field.
  DocumentReference? _candidateID;
  DocumentReference? get candidateID => _candidateID;
  bool hasCandidateID() => _candidateID != null;

  // "ElectionID" field.
  DocumentReference? _electionID;
  DocumentReference? get electionID => _electionID;
  bool hasElectionID() => _electionID != null;

  // "VoteDateTime" field.
  DateTime? _voteDateTime;
  DateTime? get voteDateTime => _voteDateTime;
  bool hasVoteDateTime() => _voteDateTime != null;

  // "Vote_img" field.
  String? _voteImg;
  String get voteImg => _voteImg ?? '';
  bool hasVoteImg() => _voteImg != null;

  void _initializeFields() {
    _voteID = snapshotData['VoteID'] as String?;
    _voterID = snapshotData['VoterID'] as DocumentReference?;
    _candidateID = snapshotData['CandidateID'] as DocumentReference?;
    _electionID = snapshotData['ElectionID'] as DocumentReference?;
    _voteDateTime = snapshotData['VoteDateTime'] as DateTime?;
    _voteImg = snapshotData['Vote_img'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Votes');

  static Stream<VotesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VotesRecord.fromSnapshot(s));

  static Future<VotesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VotesRecord.fromSnapshot(s));

  static VotesRecord fromSnapshot(DocumentSnapshot snapshot) => VotesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VotesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VotesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VotesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VotesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVotesRecordData({
  String? voteID,
  DocumentReference? voterID,
  DocumentReference? candidateID,
  DocumentReference? electionID,
  DateTime? voteDateTime,
  String? voteImg,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'VoteID': voteID,
      'VoterID': voterID,
      'CandidateID': candidateID,
      'ElectionID': electionID,
      'VoteDateTime': voteDateTime,
      'Vote_img': voteImg,
    }.withoutNulls,
  );

  return firestoreData;
}

class VotesRecordDocumentEquality implements Equality<VotesRecord> {
  const VotesRecordDocumentEquality();

  @override
  bool equals(VotesRecord? e1, VotesRecord? e2) {
    return e1?.voteID == e2?.voteID &&
        e1?.voterID == e2?.voterID &&
        e1?.candidateID == e2?.candidateID &&
        e1?.electionID == e2?.electionID &&
        e1?.voteDateTime == e2?.voteDateTime &&
        e1?.voteImg == e2?.voteImg;
  }

  @override
  int hash(VotesRecord? e) => const ListEquality().hash([
        e?.voteID,
        e?.voterID,
        e?.candidateID,
        e?.electionID,
        e?.voteDateTime,
        e?.voteImg
      ]);

  @override
  bool isValidKey(Object? o) => o is VotesRecord;
}
